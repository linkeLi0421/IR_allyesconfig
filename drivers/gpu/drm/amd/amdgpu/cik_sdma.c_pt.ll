; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/cik_sdma.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/cik_sdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.amdgpu_buffer_funcs = type { i32, i32, ptr, i32, i32, ptr }
%struct.amdgpu_vm_pte_funcs = type { i32, ptr, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.sdma_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32 }
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

@__UNIQUE_ID_firmware390 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/bonaire_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware391 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/bonaire_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware392 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/hawaii_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware393 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/hawaii_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware394 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/kaveri_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware395 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/kaveri_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware396 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/kabini_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware397 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/kabini_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware398 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/mullins_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware399 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/mullins_sdma1.bin\00", section ".modinfo", align 1
@cik_sdma_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @cik_sdma_early_init, ptr null, ptr @cik_sdma_sw_init, ptr @cik_sdma_sw_fini, ptr null, ptr @cik_sdma_hw_init, ptr @cik_sdma_hw_fini, ptr null, ptr @cik_sdma_suspend, ptr @cik_sdma_resume, ptr @cik_sdma_is_idle, ptr @cik_sdma_wait_for_idle, ptr null, ptr null, ptr @cik_sdma_soft_reset, ptr null, ptr @cik_sdma_set_clockgating_state, ptr @cik_sdma_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cik_sdma_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 7, i32 2, i32 0, i32 0, ptr @cik_sdma_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cik_sdma\00", [23 x i8] zeroinitializer }, align 32
@cik_sdma_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 0, i8 0, i32 0, i32 0, ptr @cik_sdma_ring_get_rptr, ptr @cik_sdma_ring_get_wptr, ptr @cik_sdma_ring_set_wptr, ptr null, ptr null, i32 57, i32 11, ptr @cik_sdma_ring_emit_ib, ptr @cik_sdma_ring_emit_fence, ptr @cik_sdma_ring_emit_pipeline_sync, ptr @cik_sdma_ring_emit_vm_flush, ptr @cik_sdma_ring_emit_hdp_flush, ptr null, ptr @cik_sdma_ring_test_ring, ptr @cik_sdma_ring_test_ib, ptr @cik_sdma_ring_insert_nop, ptr null, ptr null, ptr @cik_sdma_ring_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cik_sdma_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sdma_offsets = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 512], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cik_sdma_trap_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @cik_sdma_set_trap_irq_state, ptr @cik_sdma_process_trap_irq }, [24 x i8] zeroinitializer }, align 32
@cik_sdma_illegal_inst_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @cik_sdma_process_illegal_inst_irq }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: SDMA trap\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Illegal instruction in SDMA command stream\0A\00", [52 x i8] zeroinitializer }, align 32
@cik_sdma_buffer_funcs = internal constant { %struct.amdgpu_buffer_funcs, [40 x i8] } { %struct.amdgpu_buffer_funcs { i32 2097151, i32 7, ptr @cik_sdma_emit_copy_buffer, i32 2097151, i32 5, ptr @cik_sdma_emit_fill_buffer }, [40 x i8] zeroinitializer }, align 32
@cik_sdma_vm_pte_funcs = internal constant { %struct.amdgpu_vm_pte_funcs, [16 x i8] } { %struct.amdgpu_vm_pte_funcs { i32 7, ptr @cik_sdma_vm_copy_pte, ptr @cik_sdma_vm_write_pte, ptr @cik_sdma_vm_set_pte_pde }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load sdma firmware!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdma%d\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bonaire\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hawaii\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kaveri\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kabini\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mullins\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu/%s_sdma.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu/%s_sdma1.bin\00", [44 x i8] zeroinitializer }, align 32
@cik_sdma_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013amdgpu: cik_sdma: Failed to load firmware \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cik_sdma_init_microcode\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/cik_sdma.c\00", [58 x i8] zeroinitializer }, align 32
@cik_sdma_init_microcode._entry_ptr = internal global ptr @cik_sdma_init_microcode._entry, section ".printk_index", align 4
@amdgpu_sdma_phase_quantum = external dso_local local_unnamed_addr global i32, align 4
@cik_ctx_switch_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"clamping sdma_phase_quantum to %uK clock cycles\0A\00", [47 x i8] zeroinitializer }, align 32
@cik_sdma_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.16, i32 1097, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cik_sdma_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cik_sdma_soft_reset._entry_ptr = internal global ptr @cik_sdma_soft_reset._entry, section ".printk_index", align 4
@switch.table.cik_sdma_sw_init = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.8, ptr @.str.11], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"cik_sdma_ip_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1234, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"cik_sdma_ip_block\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1390, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1235, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"cik_sdma_ring_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1251, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"sdma_offsets\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 47, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 314, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"cik_sdma_trap_irq_funcs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1288, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant [32 x i8] c"cik_sdma_illegal_inst_irq_funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1293, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1168, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1207, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"cik_sdma_buffer_funcs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1354, i32 41 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"cik_sdma_vm_pte_funcs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1370, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 959, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 984, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 114, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 118, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 121, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 124, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 127, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 130, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 137, i32 39 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 139, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 147, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 369, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1097, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"switch.table.cik_sdma_sw_init\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_firmware390, ptr @__UNIQUE_ID_firmware391, ptr @__UNIQUE_ID_firmware392, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_firmware394, ptr @__UNIQUE_ID_firmware395, ptr @__UNIQUE_ID_firmware396, ptr @__UNIQUE_ID_firmware397, ptr @__UNIQUE_ID_firmware398, ptr @__UNIQUE_ID_firmware399, ptr @cik_sdma_init_microcode._entry, ptr @cik_sdma_init_microcode._entry_ptr, ptr @cik_sdma_soft_reset._entry, ptr @cik_sdma_soft_reset._entry_ptr, ptr @cik_sdma_ip_funcs, ptr @cik_sdma_ip_block, ptr @.str, ptr @cik_sdma_ring_funcs, ptr @sdma_offsets, ptr @.str.1, ptr @cik_sdma_trap_irq_funcs, ptr @cik_sdma_illegal_inst_irq_funcs, ptr @.str.2, ptr @.str.3, ptr @cik_sdma_buffer_funcs, ptr @cik_sdma_vm_pte_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @switch.table.cik_sdma_sw_init], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_trap_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_illegal_inst_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_buffer_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_vm_pte_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cik_sdma_sw_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_early_init(ptr noundef %handle) #0 align 64 {
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
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %funcs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 1
  %1 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cik_sdma_ring_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 16
  %2 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i.013.i, ptr %me.i, align 8
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %3 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_instances, align 4
  %cmp.i = icmp slt i32 %inc.i, %4
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %cik_sdma_set_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cik_sdma_set_ring_funcs.exit:                     ; preds = %for.body.i
  %trap_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %5 = ptrtoint ptr %trap_irq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %trap_irq.i, align 8
  %funcs.i5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1, i32 2
  %6 = ptrtoint ptr %funcs.i5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cik_sdma_trap_irq_funcs, ptr %funcs.i5, align 8
  %funcs4.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 2, i32 2
  %7 = ptrtoint ptr %funcs4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cik_sdma_illegal_inst_irq_funcs, ptr %funcs4.i, align 4
  %buffer_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 3
  %8 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cik_sdma_buffer_funcs, ptr %buffer_funcs.i, align 8
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  %9 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ring.i, ptr %buffer_funcs_ring.i, align 4
  %vm_pte_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 11
  %10 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cik_sdma_vm_pte_funcs, ptr %vm_pte_funcs.i, align 8
  %11 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15.not.i = icmp eq i32 %12, 0
  br i1 %cmp15.not.i, label %cik_sdma_set_ring_funcs.exit.cik_sdma_set_vm_pte_funcs.exit_crit_edge, label %cik_sdma_set_ring_funcs.exit.for.body.i11_crit_edge

cik_sdma_set_ring_funcs.exit.for.body.i11_crit_edge: ; preds = %cik_sdma_set_ring_funcs.exit
  br label %for.body.i11

cik_sdma_set_ring_funcs.exit.cik_sdma_set_vm_pte_funcs.exit_crit_edge: ; preds = %cik_sdma_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_set_vm_pte_funcs.exit

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %cik_sdma_set_ring_funcs.exit.for.body.i11_crit_edge
  %i.016.i = phi i32 [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ], [ 0, %cik_sdma_set_ring_funcs.exit.for.body.i11_crit_edge ]
  %sched.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.016.i, i32 3, i32 3
  %arrayidx3.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 12, i32 %i.016.i
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sched.i, ptr %arrayidx3.i, align 4
  %inc.i9 = add nuw i32 %i.016.i, 1
  %14 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_instances, align 4
  %cmp.i10 = icmp ult i32 %inc.i9, %15
  br i1 %cmp.i10, label %for.body.i11.for.body.i11_crit_edge, label %for.body.i11.cik_sdma_set_vm_pte_funcs.exit_crit_edge

for.body.i11.cik_sdma_set_vm_pte_funcs.exit_crit_edge: ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_set_vm_pte_funcs.exit

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i11

cik_sdma_set_vm_pte_funcs.exit:                   ; preds = %for.body.i11.cik_sdma_set_vm_pte_funcs.exit_crit_edge, %cik_sdma_set_ring_funcs.exit.cik_sdma_set_vm_pte_funcs.exit_crit_edge
  %.lcssa.i = phi i32 [ 0, %cik_sdma_set_ring_funcs.exit.cik_sdma_set_vm_pte_funcs.exit_crit_edge ], [ %15, %for.body.i11.cik_sdma_set_vm_pte_funcs.exit_crit_edge ]
  %vm_pte_num_scheds.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 13
  %16 = ptrtoint ptr %vm_pte_num_scheds.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.lcssa.i, ptr %vm_pte_num_scheds.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #12
  %0 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #12
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %1 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_type.i, align 8
  %switch.tableidx = add i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 5
  br i1 %3, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/cik_sdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #12, !srcloc !89
  unreachable

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.cik_sdma_sw_init, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %5 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp72.i = icmp sgt i32 %6, 0
  br i1 %cmp72.i, label %switch.lookup.for.body.i_crit_edge, label %switch.lookup.cik_sdma_init_microcode.exit.thread_crit_edge

switch.lookup.cik_sdma_init_microcode.exit.thread_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_init_microcode.exit.thread

switch.lookup.for.body.i_crit_edge:               ; preds = %switch.lookup
  br label %for.body.i

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %switch.lookup.for.body.i_crit_edge
  %i.073.i = phi i32 [ %inc.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %switch.lookup.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.073.i)
  %cmp8.i = icmp eq i32 %i.073.i, 0
  %.str.12..str.13.i = select i1 %cmp8.i, ptr @.str.12, ptr @.str.13
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull %.str.12..str.13.i, ptr noundef nonnull %switch.load) #12
  %arrayidx.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.073.i
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 8
  %call13.i = call i32 @request_firmware(ptr noundef %arrayidx.i, ptr noundef nonnull %fw_name.i, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %for.body.i.do.end25.i_crit_edge

for.body.i.do.end25.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

if.end15.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 8
  %call20.i = call i32 @amdgpu_ucode_validate(ptr noundef %10) #12
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %11 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %if.end15.i.for.body.i_crit_edge, label %out.i

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

out.i:                                            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %out.i.cik_sdma_init_microcode.exit.thread_crit_edge, label %out.i.do.end25.i_crit_edge

out.i.do.end25.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

out.i.cik_sdma_init_microcode.exit.thread_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_init_microcode.exit.thread

do.end25.i:                                       ; preds = %out.i.do.end25.i_crit_edge, %for.body.i.do.end25.i_crit_edge
  %err.165.i = phi i32 [ %call20.i, %out.i.do.end25.i_crit_edge ], [ %call13.i, %for.body.i.do.end25.i_crit_edge ]
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %fw_name.i) #15
  %13 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3176.i = icmp sgt i32 %14, 0
  br i1 %cmp3176.i, label %do.end25.i.for.body32.i_crit_edge, label %cik_sdma_init_microcode.exit.thread58

do.end25.i.for.body32.i_crit_edge:                ; preds = %do.end25.i
  br label %for.body32.i

cik_sdma_init_microcode.exit.thread58:            ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  br label %if.then

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %do.end25.i.for.body32.i_crit_edge
  %i.177.i = phi i32 [ %inc42.i, %for.body32.i.for.body32.i_crit_edge ], [ 0, %do.end25.i.for.body32.i_crit_edge ]
  %arrayidx35.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.177.i
  %15 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx35.i, align 8
  call void @release_firmware(ptr noundef %16) #12
  %17 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx35.i, align 8
  %inc42.i = add nuw nsw i32 %i.177.i, 1
  %18 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_instances.i, align 4
  %cmp31.i = icmp slt i32 %inc42.i, %19
  br i1 %cmp31.i, label %for.body32.i.for.body32.i_crit_edge, label %cik_sdma_init_microcode.exit

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.i

cik_sdma_init_microcode.exit.thread:              ; preds = %out.i.cik_sdma_init_microcode.exit.thread_crit_edge, %switch.lookup.cik_sdma_init_microcode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  br label %if.end

cik_sdma_init_microcode.exit:                     ; preds = %for.body32.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.165.i)
  %tobool.not = icmp eq i32 %err.165.i, 0
  br i1 %tobool.not, label %cik_sdma_init_microcode.exit.if.end_crit_edge, label %cik_sdma_init_microcode.exit.if.then_crit_edge

cik_sdma_init_microcode.exit.if.then_crit_edge:   ; preds = %cik_sdma_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cik_sdma_init_microcode.exit.if.end_crit_edge:    ; preds = %cik_sdma_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cik_sdma_init_microcode.exit.if.then_crit_edge, %cik_sdma_init_microcode.exit.thread58
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end:                                           ; preds = %cik_sdma_init_microcode.exit.if.end_crit_edge, %cik_sdma_init_microcode.exit.thread
  %trap_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %call1 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 224, ptr noundef %trap_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %illegal_inst_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 2
  %call6 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 241, ptr noundef %illegal_inst_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call12 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 247, ptr noundef %illegal_inst_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end9
  %20 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp63 = icmp sgt i32 %21, 0
  br i1 %cmp63, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.064, 1
  %22 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_instances.i, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ring18 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.064, i32 3
  %ring_obj = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.064, i32 3, i32 4
  %24 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ring_obj, align 8
  %name = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.064, i32 3, i32 29
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.5, i32 noundef %i.064)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.064)
  %cmp22 = icmp ne i32 %i.064, 0
  %cond = zext i1 %cmp22 to i32
  %call23 = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring18, i32 noundef 1024, ptr noundef %trap_irq, i32 noundef %cond, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %err.165.i, %if.then ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call23, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.cik_sdma_free_microcode.exit_crit_edge

entry.cik_sdma_free_microcode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_free_microcode.exit

for.body.lr.ph:                                   ; preds = %entry
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ring = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.07, i32 3
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #12
  %inc = add nuw nsw i32 %i.07, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.i = icmp sgt i32 %3, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %for.end.cik_sdma_free_microcode.exit_crit_edge

for.end.cik_sdma_free_microcode.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_free_microcode.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  tail call void @release_firmware(ptr noundef %5) #12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %7 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_instances, align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cik_sdma_free_microcode.exit_crit_edge

for.body.i.cik_sdma_free_microcode.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_free_microcode.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cik_sdma_free_microcode.exit:                     ; preds = %for.body.i.cik_sdma_free_microcode.exit_crit_edge, %for.end.cik_sdma_free_microcode.exit_crit_edge, %entry.cik_sdma_free_microcode.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cik_sdma_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  %sdma.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %num_instances.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp82.i.i = icmp sgt i32 %1, 0
  br i1 %cmp82.i.i, label %entry.for.body.i.i_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.083.i.i = phi i32 [ %inc43.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.083.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cik_sdma_start.exit_crit_edge, label %if.end.i.i

for.body.i.i.cik_sdma_start.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_start.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  tail call void @amdgpu_ucode_print_sdma_hdr(ptr noundef %5) #12
  %ucode_size_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ucode_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ucode_size_bytes.i.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  %div78.i.i = lshr i32 %8, 2
  %ucode_version.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %ucode_version.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ucode_version.i.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  %fw_version.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.083.i.i, i32 1
  %12 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fw_version.i.i, align 4
  %ucode_feature_version.i.i = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %ucode_feature_version.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucode_feature_version.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %feature_version.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.083.i.i, i32 2
  %16 = ptrtoint ptr %feature_version.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %feature_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %15)
  %cmp18.i.i = icmp ugt i32 %15, 19
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end.i.i.if.end23.i.i_crit_edge

if.end.i.i.if.end23.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i.i

if.then19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %burst_nop.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.083.i.i, i32 5
  %17 = ptrtoint ptr %burst_nop.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %burst_nop.i.i, align 8
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then19.i.i, %if.end.i.i.if.end23.i.i_crit_edge
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 8
  %data28.i.i = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %data28.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data28.i.i, align 4
  %ucode_array_offset_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %ucode_array_offset_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ucode_array_offset_bytes.i.i, align 4
  %arrayidx30.i.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.083.i.i
  %24 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30.i.i, align 4
  %add.i.i = add i32 %25, 13312
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp3279.not.i.i = icmp ult i32 %8, 4
  br i1 %cmp3279.not.i.i, label %if.end23.i.i.for.end.i.i_crit_edge, label %for.body33.lr.ph.i.i

if.end23.i.i.for.end.i.i_crit_edge:               ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body33.lr.ph.i.i:                             ; preds = %if.end23.i.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %26
  %add35.i.i = add i32 %25, 13313
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div78.i.i, i32 1) #12
  br label %for.body33.i.i

for.body33.i.i:                                   ; preds = %for.body33.i.i.for.body33.i.i_crit_edge, %for.body33.lr.ph.i.i
  %j.081.i.i = phi i32 [ 0, %for.body33.lr.ph.i.i ], [ %inc.i.i, %for.body33.i.i.for.body33.i.i_crit_edge ]
  %fw_data.080.i.i = phi ptr [ %add.ptr.i.i, %for.body33.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body33.i.i.for.body33.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i32, ptr %fw_data.080.i.i, i32 1
  %27 = ptrtoint ptr %fw_data.080.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_data.080.i.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add35.i.i, i32 noundef %29, i32 noundef 0) #12
  %inc.i.i = add nuw nsw i32 %j.081.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body33.i.i.for.end.i.i_crit_edge, label %for.body33.i.i.for.body33.i.i_crit_edge

for.body33.i.i.for.body33.i.i_crit_edge:          ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33.i.i

for.body33.i.i.for.end.i.i_crit_edge:             ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body33.i.i.for.end.i.i_crit_edge, %if.end23.i.i.for.end.i.i_crit_edge
  %30 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_version.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef %31, i32 noundef 0) #12
  %inc43.i.i = add nuw nsw i32 %i.083.i.i, 1
  %32 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc43.i.i, %33
  br i1 %cmp.i.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.if.end.i_crit_edge

for.end.i.i.if.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.end.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call fastcc void @cik_sdma_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  tail call fastcc void @cik_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext true) #12
  %34 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_instances.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp207.i.i = icmp sgt i32 %35, 0
  br i1 %cmp207.i.i, label %for.body.lr.ph.i.i, label %if.end.i.cik_sdma_start.exit_crit_edge

if.end.i.cik_sdma_start.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_start.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %srbm_mutex.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 20
  %gb_addr_config.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 2
  br label %for.body.i20.i

for.body.i20.i:                                   ; preds = %for.end.i24.i.for.body.i20.i_crit_edge, %for.body.lr.ph.i.i
  %i.0208.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc100.i.i, %for.end.i24.i.for.body.i20.i_crit_edge ]
  %rptr_offs.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.0208.i.i, i32 3, i32 6
  %36 = ptrtoint ptr %rptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rptr_offs.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %srbm_mutex.i.i, i32 noundef 0) #12
  %arrayidx6.i.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.0208.i.i
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.body5.i.i.for.body5.i.i_crit_edge, %for.body.i20.i
  %j.0206.i.i = phi i32 [ 0, %for.body.i20.i ], [ %inc.i22.i, %for.body5.i.i.for.body5.i.i_crit_edge ]
  tail call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %j.0206.i.i) #12
  %38 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx6.i.i, align 4
  %add.i21.i = add i32 %39, 13479
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i21.i, i32 noundef 0, i32 noundef 0) #12
  %add8.i.i = add i32 %39, 13480
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add8.i.i, i32 noundef 0, i32 noundef 0) #12
  %inc.i22.i = add nuw nsw i32 %j.0206.i.i, 1
  %exitcond.not.i23.i = icmp eq i32 %inc.i22.i, 16
  br i1 %exitcond.not.i23.i, label %for.end.i24.i, label %for.body5.i.i.for.body5.i.i_crit_edge

for.body5.i.i.for.body5.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i.i

for.end.i24.i:                                    ; preds = %for.body5.i.i
  %mul.i.i = shl i32 %37, 2
  tail call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %srbm_mutex.i.i) #12
  %add11.i.i = add i32 %39, 13318
  %40 = ptrtoint ptr %gb_addr_config.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gb_addr_config.i.i, align 4
  %and.i.i = and i32 %41, 112
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add11.i.i, i32 noundef %and.i.i, i32 noundef 0) #12
  %add13.i.i = add i32 %39, 13320
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add13.i.i, i32 noundef 0, i32 noundef 0) #12
  %add15.i.i = add i32 %39, 13321
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i.i, i32 noundef 0, i32 noundef 0) #12
  %ring_size.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.0208.i.i, i32 3, i32 9
  %42 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ring_size.i.i, align 8
  %div202.i.i = lshr i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp.i.i.i = icmp ugt i32 %43, 7
  %sub.i203.i.i = add nsw i32 %div202.i.i, -1
  %44 = tail call i32 @llvm.ctlz.i32(i32 %sub.i203.i.i, i1 false) #12, !range !90
  %.neg = mul nsw i32 %44, -2
  %add.i.i.i.op = add nsw i32 %.neg, 64
  %shl.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i.op, i32 0
  %or.i.i = or i32 %shl.i.i, 8704
  %add52.i.i = add i32 %39, 13440
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add52.i.i, i32 noundef %or.i.i, i32 noundef 0) #12
  %add54.i.i = add i32 %39, 13443
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add54.i.i, i32 noundef 0, i32 noundef 0) #12
  %add56.i.i = add i32 %39, 13444
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add56.i.i, i32 noundef 0, i32 noundef 0) #12
  %add58.i.i = add i32 %39, 13451
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add58.i.i, i32 noundef 0, i32 noundef 0) #12
  %add60.i.i = add i32 %39, 13452
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add60.i.i, i32 noundef 0, i32 noundef 0) #12
  %add62.i.i = add i32 %39, 13448
  %45 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %gpu_addr.i.i, align 8
  %conv63.i.i = zext i32 %mul.i.i to i64
  %add64.i.i = add i64 %46, %conv63.i.i
  %shr.i.i = lshr i64 %add64.i.i, 32
  %conv66.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add62.i.i, i32 noundef %conv66.i.i, i32 noundef 0) #12
  %add69.i.i = add i32 %39, 13449
  %47 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %gpu_addr.i.i, align 8
  %49 = trunc i64 %48 to i32
  %50 = add i32 %mul.i.i, %49
  %conv75.i.i = and i32 %50, -4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add69.i.i, i32 noundef %conv75.i.i, i32 noundef 0) #12
  %add78.i.i = add i32 %39, 13441
  %gpu_addr79.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.0208.i.i, i32 3, i32 12
  %51 = ptrtoint ptr %gpu_addr79.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %gpu_addr79.i.i, align 8
  %shr80.i.i = lshr i64 %52, 8
  %conv81.i.i = trunc i64 %shr80.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add78.i.i, i32 noundef %conv81.i.i, i32 noundef 0) #12
  %add83.i.i = add i32 %39, 13442
  %53 = ptrtoint ptr %gpu_addr79.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %gpu_addr79.i.i, align 8
  %shr85.i.i = lshr i64 %54, 40
  %conv86.i.i = trunc i64 %shr85.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add83.i.i, i32 noundef %conv86.i.i, i32 noundef 0) #12
  %wptr.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.0208.i.i, i32 3, i32 7
  %55 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %wptr.i.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add56.i.i, i32 noundef 0, i32 noundef 0) #12
  %or95.i.i = or i32 %shl.i.i, 12801
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add52.i.i, i32 noundef %or95.i.i, i32 noundef 0) #12
  %add98.i.i = add i32 %39, 13450
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add98.i.i, i32 noundef 17, i32 noundef 0) #12
  %ready.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.0208.i.i, i32 3, i32 3, i32 17
  %56 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %ready.i.i, align 4
  %inc100.i.i = add nuw nsw i32 %i.0208.i.i, 1
  %57 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i26.i = icmp slt i32 %inc100.i.i, %58
  br i1 %cmp.i26.i, label %for.end.i24.i.for.body.i20.i_crit_edge, label %for.end101.i.i

for.end.i24.i.for.body.i20.i_crit_edge:           ; preds = %for.end.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i20.i

for.end101.i.i:                                   ; preds = %for.end.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp16.i.i.i = icmp sgt i32 %58, 0
  br i1 %cmp16.i.i.i, label %for.end101.i.i.for.body.i.i.i_crit_edge, label %for.end101.i.i.cik_sdma_start.exit_crit_edge

for.end101.i.i.cik_sdma_start.exit_crit_edge:     ; preds = %for.end101.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_start.exit

for.end101.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.end101.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.end101.i.i.for.body.i.i.i_crit_edge
  %i.017.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end101.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.017.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i204.i.i = add i32 %60, 13330
  %call.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i204.i.i, i32 noundef 0) #12
  %and.i.i.i = and i32 %call.i.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i204.i.i, i32 noundef %and.i.i.i, i32 noundef 0) #12
  %inc.i.i.i = add nuw nsw i32 %i.017.i.i.i, 1
  %61 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i205.i.i = icmp slt i32 %inc.i.i.i, %62
  br i1 %cmp.i205.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %cik_sdma_enable.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

cik_sdma_enable.exit.i.i:                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp105211.i.i = icmp sgt i32 %62, 0
  br i1 %cmp105211.i.i, label %for.body107.lr.ph.i.i, label %cik_sdma_enable.exit.i.i.cik_sdma_start.exit_crit_edge

cik_sdma_enable.exit.i.i.cik_sdma_start.exit_crit_edge: ; preds = %cik_sdma_enable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_start.exit

for.body107.lr.ph.i.i:                            ; preds = %cik_sdma_enable.exit.i.i
  %buffer_funcs_ring.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  br label %for.body107.i.i

for.body107.i.i:                                  ; preds = %for.inc117.i.i.for.body107.i.i_crit_edge, %for.body107.lr.ph.i.i
  %i.1212.i.i = phi i32 [ 0, %for.body107.lr.ph.i.i ], [ %inc118.i.i, %for.inc117.i.i.for.body107.i.i_crit_edge ]
  %ring111.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.1212.i.i, i32 3
  %call112.i.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring111.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i.i)
  %tobool.not.i27.i = icmp eq i32 %call112.i.i, 0
  br i1 %tobool.not.i27.i, label %if.end.i28.i, label %for.body107.i.i.cik_sdma_start.exit_crit_edge

for.body107.i.i.cik_sdma_start.exit_crit_edge:    ; preds = %for.body107.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_start.exit

if.end.i28.i:                                     ; preds = %for.body107.i.i
  %63 = ptrtoint ptr %buffer_funcs_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer_funcs_ring.i.i, align 4
  %cmp113.i.i = icmp eq ptr %64, %ring111.i.i
  br i1 %cmp113.i.i, label %if.then115.i.i, label %if.end.i28.i.for.inc117.i.i_crit_edge

if.end.i28.i.for.inc117.i.i_crit_edge:            ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc117.i.i

if.then115.i.i:                                   ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %handle, i1 noundef zeroext true) #12
  br label %for.inc117.i.i

for.inc117.i.i:                                   ; preds = %if.then115.i.i, %if.end.i28.i.for.inc117.i.i_crit_edge
  %inc118.i.i = add nuw nsw i32 %i.1212.i.i, 1
  %65 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_instances.i.i, align 4
  %cmp105.i.i = icmp slt i32 %inc118.i.i, %66
  br i1 %cmp105.i.i, label %for.inc117.i.i.for.body107.i.i_crit_edge, label %for.inc117.i.i.cik_sdma_start.exit_crit_edge

for.inc117.i.i.cik_sdma_start.exit_crit_edge:     ; preds = %for.inc117.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_sdma_start.exit

for.inc117.i.i.for.body107.i.i_crit_edge:         ; preds = %for.inc117.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107.i.i

cik_sdma_start.exit:                              ; preds = %for.inc117.i.i.cik_sdma_start.exit_crit_edge, %for.body107.i.i.cik_sdma_start.exit_crit_edge, %cik_sdma_enable.exit.i.i.cik_sdma_start.exit_crit_edge, %for.end101.i.i.cik_sdma_start.exit_crit_edge, %if.end.i.cik_sdma_start.exit_crit_edge, %for.body.i.i.cik_sdma_start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cik_sdma_enable.exit.i.i.cik_sdma_start.exit_crit_edge ], [ 0, %if.end.i.cik_sdma_start.exit_crit_edge ], [ 0, %for.end101.i.i.cik_sdma_start.exit_crit_edge ], [ %call112.i.i, %for.body107.i.i.cik_sdma_start.exit_crit_edge ], [ 0, %for.inc117.i.i.cik_sdma_start.exit_crit_edge ], [ -22, %for.body.i.i.cik_sdma_start.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cik_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @cik_sdma_enable(ptr noundef %handle, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cik_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  tail call fastcc void @cik_sdma_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cik_sdma_soft_reset(ptr noundef %handle)
  %call1 = tail call i32 @cik_sdma_hw_init(ptr noundef %handle)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cik_sdma_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #12
  %and = and i32 %call, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #12
  %and = and i32 %call, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  %inc = add nuw i32 %i.06, 1
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
define internal i32 @cik_sdma_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13330, i32 noundef 0) #12
  %or = or i32 %call, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13330, i32 noundef %or, i32 noundef 0) #12
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13842, i32 noundef 0) #12
  %or3 = or i32 %call2, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13842, i32 noundef %or3, i32 noundef 0) #12
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  %or6 = or i32 %call5, 1048640
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %or6) #15
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or6, i32 noundef 0) #12
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #12
  %and = and i32 %call7, -1048641
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and, i32 noundef 0) #12
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 10737400) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13315, i32 noundef 256, i32 noundef 0) #12
  br label %if.end8.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13315, i32 noundef 0) #12
  %or.i = or i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %call.i)
  %cmp.not.i = icmp eq i32 %or.i, %call.i
  br i1 %cmp.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then2.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13315, i32 noundef %or.i, i32 noundef 0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.else.i.if.end.i_crit_edge
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13827, i32 noundef 0) #12
  %or4.i = or i32 %call3.i, -16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %or4.i, i32 %call3.i)
  %cmp5.not.i = icmp eq i32 %or4.i, %call3.i
  br i1 %cmp5.not.i, label %if.end.i.cik_enable_sdma_mgcg.exit_crit_edge, label %if.end.i.if.end8.sink.split.i_crit_edge

if.end.i.if.end8.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.sink.split.i

if.end.i.cik_enable_sdma_mgcg.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_enable_sdma_mgcg.exit

if.end8.sink.split.i:                             ; preds = %if.end.i.if.end8.sink.split.i_crit_edge, %if.then.i
  %or4.sink.i = phi i32 [ 256, %if.then.i ], [ %or4.i, %if.end.i.if.end8.sink.split.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13827, i32 noundef %or4.sink.i, i32 noundef 0) #12
  br label %cik_enable_sdma_mgcg.exit

cik_enable_sdma_mgcg.exit:                        ; preds = %if.end8.sink.split.i, %if.end.i.cik_enable_sdma_mgcg.exit_crit_edge
  br i1 %cmp, label %land.lhs.true.i7, label %cik_enable_sdma_mgcg.exit.if.else.i17_crit_edge

cik_enable_sdma_mgcg.exit.if.else.i17_crit_edge:  ; preds = %cik_enable_sdma_mgcg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i17

land.lhs.true.i7:                                 ; preds = %cik_enable_sdma_mgcg.exit
  %cg_flags.i4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %2 = ptrtoint ptr %cg_flags.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cg_flags.i4, align 8
  %and.i5 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool1.not.i6 = icmp eq i32 %and.i5, 0
  br i1 %tobool1.not.i6, label %land.lhs.true.i7.if.else.i17_crit_edge, label %if.then.i11

land.lhs.true.i7.if.else.i17_crit_edge:           ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i17

if.then.i11:                                      ; preds = %land.lhs.true.i7
  %call.i8 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13314, i32 noundef 0) #12
  %or.i9 = or i32 %call.i8, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i8, i32 %or.i9)
  %cmp.not.i10 = icmp eq i32 %call.i8, %or.i9
  br i1 %cmp.not.i10, label %if.then.i11.if.end.i16_crit_edge, label %if.then2.i12

if.then.i11.if.end.i16_crit_edge:                 ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i16

if.then2.i12:                                     ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13314, i32 noundef %or.i9, i32 noundef 0) #12
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then2.i12, %if.then.i11.if.end.i16_crit_edge
  %call3.i13 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13826, i32 noundef 0) #12
  %or4.i14 = or i32 %call3.i13, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i13, i32 %or4.i14)
  %cmp5.not.i15 = icmp eq i32 %call3.i13, %or4.i14
  br i1 %cmp5.not.i15, label %if.end.i16.cik_enable_sdma_mgls.exit_crit_edge, label %if.end.i16.if.end18.sink.split.i_crit_edge

if.end.i16.if.end18.sink.split.i_crit_edge:       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split.i

if.end.i16.cik_enable_sdma_mgls.exit_crit_edge:   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_enable_sdma_mgls.exit

if.else.i17:                                      ; preds = %land.lhs.true.i7.if.else.i17_crit_edge, %cik_enable_sdma_mgcg.exit.if.else.i17_crit_edge
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13314, i32 noundef 0) #12
  %and9.i = and i32 %call8.i, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %and9.i)
  %cmp10.not.i = icmp eq i32 %call8.i, %and9.i
  br i1 %cmp10.not.i, label %if.else.i17.if.end12.i_crit_edge, label %if.then11.i

if.else.i17.if.end12.i_crit_edge:                 ; preds = %if.else.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.else.i17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13314, i32 noundef %and9.i, i32 noundef 0) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.else.i17.if.end12.i_crit_edge
  %call13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13826, i32 noundef 0) #12
  %and14.i = and i32 %call13.i, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %and14.i)
  %cmp15.not.i = icmp eq i32 %call13.i, %and14.i
  br i1 %cmp15.not.i, label %if.end12.i.cik_enable_sdma_mgls.exit_crit_edge, label %if.end12.i.if.end18.sink.split.i_crit_edge

if.end12.i.if.end18.sink.split.i_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split.i

if.end12.i.cik_enable_sdma_mgls.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_enable_sdma_mgls.exit

if.end18.sink.split.i:                            ; preds = %if.end12.i.if.end18.sink.split.i_crit_edge, %if.end.i16.if.end18.sink.split.i_crit_edge
  %and14.sink.i = phi i32 [ %or4.i14, %if.end.i16.if.end18.sink.split.i_crit_edge ], [ %and14.i, %if.end12.i.if.end18.sink.split.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13826, i32 noundef %and14.sink.i, i32 noundef 0) #12
  br label %cik_enable_sdma_mgls.exit

cik_enable_sdma_mgls.exit:                        ; preds = %if.end18.sink.split.i, %if.end12.i.cik_enable_sdma_mgls.exit_crit_edge, %if.end.i16.cik_enable_sdma_mgls.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_sdma_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @cik_sdma_ring_get_rptr(ptr nocapture noundef readonly %ring) #4 align 64 {
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
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  %and = lshr i32 %7, 2
  %shr = and i32 %and, 65535
  %conv = zext i32 %shr to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cik_sdma_ring_get_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  %arrayidx = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, 13444
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #12
  %and = lshr i32 %call, 2
  %shr = and i32 %and, 65535
  %conv = zext i32 %shr to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_set_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  %arrayidx = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, 13444
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %7 to i32
  %shl = shl i32 %conv, 2
  %and2 = and i32 %shl, 262140
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add, i32 noundef %and2, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #1 align 64 {
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
  %phi.bo = shl i32 %1, 16
  %phi.bo20 = and i32 %phi.bo, 983040
  %phi.bo21 = or i32 %phi.bo20, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo21, %cond.true ], [ 4, %entry.cond.end_crit_edge ]
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
  %sub = sub i32 4, %conv
  %and3 = and i32 %sub, 7
  tail call void @cik_sdma_ring_insert_nop(ptr noundef %ring, i32 noundef %and3)
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %cond, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
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
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %19 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %gpu_addr, align 8
  %21 = trunc i64 %20 to i32
  %conv7 = and i32 %21, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i23 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i23, label %if.then.i24, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit34_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit34_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit34

if.then.i24:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit34

amdgpu_ring_write.exit34:                         ; preds = %if.then.i24, %amdgpu_ring_write.exit.amdgpu_ring_write.exit34_crit_edge
  %22 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring1.i, align 4
  %24 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wptr, align 8
  %inc.i27 = add i64 %25, 1
  store i64 %inc.i27, ptr %wptr, align 8
  %26 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_mask.i, align 8
  %28 = trunc i64 %25 to i32
  %idxprom.i29 = and i32 %27, %28
  %arrayidx.i30 = getelementptr i32, ptr %23, i32 %idxprom.i29
  %29 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %conv7, ptr %arrayidx.i30, align 4
  %30 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ptr_mask.i, align 8
  %32 = load i64, ptr %wptr, align 8
  %and3.i32 = and i64 %32, %31
  store i64 %and3.i32, ptr %wptr, align 8
  %33 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count_dw.i, align 8
  %dec.i33 = add i32 %34, -1
  store i32 %dec.i33, ptr %count_dw.i, align 8
  %35 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %36, 32
  %conv10 = trunc i64 %shr to i32
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
  %37 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i, align 4
  %39 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wptr, align 8
  %inc.i40 = add i64 %40, 1
  store i64 %inc.i40, ptr %wptr, align 8
  %41 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_mask.i, align 8
  %43 = trunc i64 %40 to i32
  %idxprom.i42 = and i32 %42, %43
  %arrayidx.i43 = getelementptr i32, ptr %38, i32 %idxprom.i42
  %44 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %conv10, ptr %arrayidx.i43, align 4
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ptr_mask.i, align 8
  %47 = load i64, ptr %wptr, align 8
  %and3.i45 = and i64 %47, %46
  store i64 %and3.i45, ptr %wptr, align 8
  %48 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_dw.i, align 8
  %dec.i46 = add i32 %49, -1
  store i32 %dec.i46, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %50 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length_dw, align 4
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
  %52 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring1.i, align 4
  %54 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %wptr, align 8
  %inc.i53 = add i64 %55, 1
  store i64 %inc.i53, ptr %wptr, align 8
  %56 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf_mask.i, align 8
  %58 = trunc i64 %55 to i32
  %idxprom.i55 = and i32 %57, %58
  %arrayidx.i56 = getelementptr i32, ptr %53, i32 %idxprom.i55
  %59 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 %51, ptr %arrayidx.i56, align 4
  %60 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ptr_mask.i, align 8
  %62 = load i64, ptr %wptr, align 8
  %and3.i58 = and i64 %62, %61
  store i64 %and3.i58, ptr %wptr, align 8
  %63 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count_dw.i, align 8
  %dec.i59 = add i32 %64, -1
  store i32 %dec.i59, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #1 align 64 {
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
  store volatile i32 5, ptr %arrayidx.i, align 4
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
  %conv = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i29 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i29, label %if.then.i30, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit40

if.then.i30:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit40

amdgpu_ring_write.exit40:                         ; preds = %if.then.i30, %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i33 = add i64 %18, 1
  store i64 %inc.i33, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i35 = and i32 %20, %21
  %arrayidx.i36 = getelementptr i32, ptr %16, i32 %idxprom.i35
  %22 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i36, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i38 = and i64 %25, %24
  store i64 %and3.i38, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i39 = add i32 %27, -1
  store i32 %dec.i39, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i39)
  %cmp.i42 = icmp slt i32 %dec.i39, 1
  br i1 %cmp.i42, label %if.then.i43, label %amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge

amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge: ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit53

if.then.i43:                                      ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit53

amdgpu_ring_write.exit53:                         ; preds = %if.then.i43, %amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i46 = add i64 %31, 1
  store i64 %inc.i46, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i48 = and i32 %33, %34
  %arrayidx.i49 = getelementptr i32, ptr %29, i32 %idxprom.i48
  %35 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv3, ptr %arrayidx.i49, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i51 = and i64 %38, %37
  store i64 %and3.i51, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i52 = add i32 %40, -1
  store i32 %dec.i52, ptr %count_dw.i, align 8
  %conv5 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i52)
  %cmp.i55 = icmp slt i32 %dec.i52, 1
  br i1 %cmp.i55, label %if.then.i56, label %amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge

amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge: ; preds = %amdgpu_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit66

if.then.i56:                                      ; preds = %amdgpu_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit66

amdgpu_ring_write.exit66:                         ; preds = %if.then.i56, %amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i59 = add i64 %44, 1
  store i64 %inc.i59, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i61 = and i32 %46, %47
  %arrayidx.i62 = getelementptr i32, ptr %42, i32 %idxprom.i61
  %48 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv5, ptr %arrayidx.i62, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i64 = and i64 %51, %50
  store i64 %and3.i64, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i65 = add i32 %53, -1
  store i32 %dec.i65, ptr %count_dw.i, align 8
  br i1 %tobool.not, label %amdgpu_ring_write.exit66.if.end_crit_edge, label %if.then

amdgpu_ring_write.exit66.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %amdgpu_ring_write.exit66
  %add = add i64 %addr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i65)
  %cmp.i68 = icmp slt i32 %dec.i65, 1
  br i1 %cmp.i68, label %if.then.i69, label %if.then.amdgpu_ring_write.exit79_crit_edge

if.then.amdgpu_ring_write.exit79_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit79

if.then.i69:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit79

amdgpu_ring_write.exit79:                         ; preds = %if.then.i69, %if.then.amdgpu_ring_write.exit79_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i72 = add i64 %57, 1
  store i64 %inc.i72, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i74 = and i32 %59, %60
  %arrayidx.i75 = getelementptr i32, ptr %55, i32 %idxprom.i74
  %61 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 5, ptr %arrayidx.i75, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i77 = and i64 %64, %63
  store i64 %and3.i77, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i78 = add i32 %66, -1
  store i32 %dec.i78, ptr %count_dw.i, align 8
  %conv8 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i78)
  %cmp.i81 = icmp slt i32 %dec.i78, 1
  br i1 %cmp.i81, label %if.then.i82, label %amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge

amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge: ; preds = %amdgpu_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit92

if.then.i82:                                      ; preds = %amdgpu_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit92

amdgpu_ring_write.exit92:                         ; preds = %if.then.i82, %amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i85 = add i64 %70, 1
  store i64 %inc.i85, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i87 = and i32 %72, %73
  %arrayidx.i88 = getelementptr i32, ptr %68, i32 %idxprom.i87
  %74 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %conv8, ptr %arrayidx.i88, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i90 = and i64 %77, %76
  store i64 %and3.i90, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i91 = add i32 %79, -1
  store i32 %dec.i91, ptr %count_dw.i, align 8
  %shr9 = lshr i64 %add, 32
  %conv11 = trunc i64 %shr9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i91)
  %cmp.i94 = icmp slt i32 %dec.i91, 1
  br i1 %cmp.i94, label %if.then.i95, label %amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge

amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge: ; preds = %amdgpu_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit105

if.then.i95:                                      ; preds = %amdgpu_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit105

amdgpu_ring_write.exit105:                        ; preds = %if.then.i95, %amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i98 = add i64 %83, 1
  store i64 %inc.i98, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i100 = and i32 %85, %86
  %arrayidx.i101 = getelementptr i32, ptr %81, i32 %idxprom.i100
  %87 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %conv11, ptr %arrayidx.i101, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i103 = and i64 %90, %89
  store i64 %and3.i103, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i104 = add i32 %92, -1
  store i32 %dec.i104, ptr %count_dw.i, align 8
  %shr12 = lshr i64 %seq, 32
  %conv14 = trunc i64 %shr12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i104)
  %cmp.i107 = icmp slt i32 %dec.i104, 1
  br i1 %cmp.i107, label %if.then.i108, label %amdgpu_ring_write.exit105.amdgpu_ring_write.exit118_crit_edge

amdgpu_ring_write.exit105.amdgpu_ring_write.exit118_crit_edge: ; preds = %amdgpu_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit118

if.then.i108:                                     ; preds = %amdgpu_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit118

amdgpu_ring_write.exit118:                        ; preds = %if.then.i108, %amdgpu_ring_write.exit105.amdgpu_ring_write.exit118_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i111 = add i64 %96, 1
  store i64 %inc.i111, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i113 = and i32 %98, %99
  %arrayidx.i114 = getelementptr i32, ptr %94, i32 %idxprom.i113
  %100 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %conv14, ptr %arrayidx.i114, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i116 = and i64 %103, %102
  store i64 %and3.i116, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i117 = add i32 %105, -1
  store i32 %dec.i117, ptr %count_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %amdgpu_ring_write.exit118, %amdgpu_ring_write.exit66.if.end_crit_edge
  %106 = phi i32 [ %dec.i117, %amdgpu_ring_write.exit118 ], [ %dec.i65, %amdgpu_ring_write.exit66.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp.i120 = icmp slt i32 %106, 1
  br i1 %cmp.i120, label %if.then.i121, label %if.end.amdgpu_ring_write.exit131_crit_edge

if.end.amdgpu_ring_write.exit131_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit131

if.then.i121:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit131

amdgpu_ring_write.exit131:                        ; preds = %if.then.i121, %if.end.amdgpu_ring_write.exit131_crit_edge
  %107 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ring1.i, align 4
  %109 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %wptr.i, align 8
  %inc.i124 = add i64 %110, 1
  store i64 %inc.i124, ptr %wptr.i, align 8
  %111 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_mask.i, align 8
  %113 = trunc i64 %110 to i32
  %idxprom.i126 = and i32 %112, %113
  %arrayidx.i127 = getelementptr i32, ptr %108, i32 %idxprom.i126
  %114 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 6, ptr %arrayidx.i127, align 4
  %115 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %ptr_mask.i, align 8
  %117 = load i64, ptr %wptr.i, align 8
  %and3.i129 = and i64 %117, %116
  store i64 %and3.i129, ptr %wptr.i, align 8
  %118 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i, align 8
  %dec.i130 = add i32 %119, -1
  store i32 %dec.i130, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_emit_pipeline_sync(ptr noundef %ring) #1 align 64 {
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
  store volatile i32 -1342177272, ptr %arrayidx.i, align 4
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
  %19 = trunc i64 %3 to i32
  %conv = and i32 %19, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i14 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i14, label %if.then.i15, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit25_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit25_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit25

if.then.i15:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit25

amdgpu_ring_write.exit25:                         ; preds = %if.then.i15, %amdgpu_ring_write.exit.amdgpu_ring_write.exit25_crit_edge
  %20 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring1.i, align 4
  %22 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wptr.i, align 8
  %inc.i18 = add i64 %23, 1
  store i64 %inc.i18, ptr %wptr.i, align 8
  %24 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_mask.i, align 8
  %26 = trunc i64 %23 to i32
  %idxprom.i20 = and i32 %25, %26
  %arrayidx.i21 = getelementptr i32, ptr %21, i32 %idxprom.i20
  %27 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %conv, ptr %arrayidx.i21, align 4
  %28 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ptr_mask.i, align 8
  %30 = load i64, ptr %wptr.i, align 8
  %and3.i23 = and i64 %30, %29
  store i64 %and3.i23, ptr %wptr.i, align 8
  %31 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count_dw.i, align 8
  %dec.i24 = add i32 %32, -1
  store i32 %dec.i24, ptr %count_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i24)
  %cmp.i27 = icmp slt i32 %dec.i24, 1
  br i1 %cmp.i27, label %if.then.i28, label %amdgpu_ring_write.exit25.amdgpu_ring_write.exit38_crit_edge

amdgpu_ring_write.exit25.amdgpu_ring_write.exit38_crit_edge: ; preds = %amdgpu_ring_write.exit25
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit38

if.then.i28:                                      ; preds = %amdgpu_ring_write.exit25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit38

amdgpu_ring_write.exit38:                         ; preds = %if.then.i28, %amdgpu_ring_write.exit25.amdgpu_ring_write.exit38_crit_edge
  %33 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring1.i, align 4
  %35 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %wptr.i, align 8
  %inc.i31 = add i64 %36, 1
  store i64 %inc.i31, ptr %wptr.i, align 8
  %37 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_mask.i, align 8
  %39 = trunc i64 %36 to i32
  %idxprom.i33 = and i32 %38, %39
  %arrayidx.i34 = getelementptr i32, ptr %34, i32 %idxprom.i33
  %40 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %conv3, ptr %arrayidx.i34, align 4
  %41 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ptr_mask.i, align 8
  %43 = load i64, ptr %wptr.i, align 8
  %and3.i36 = and i64 %43, %42
  store i64 %and3.i36, ptr %wptr.i, align 8
  %44 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count_dw.i, align 8
  %dec.i37 = add i32 %45, -1
  store i32 %dec.i37, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i37)
  %cmp.i40 = icmp slt i32 %dec.i37, 1
  br i1 %cmp.i40, label %if.then.i41, label %amdgpu_ring_write.exit38.amdgpu_ring_write.exit51_crit_edge

amdgpu_ring_write.exit38.amdgpu_ring_write.exit51_crit_edge: ; preds = %amdgpu_ring_write.exit38
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit51

if.then.i41:                                      ; preds = %amdgpu_ring_write.exit38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit51

amdgpu_ring_write.exit51:                         ; preds = %if.then.i41, %amdgpu_ring_write.exit38.amdgpu_ring_write.exit51_crit_edge
  %46 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring1.i, align 4
  %48 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %wptr.i, align 8
  %inc.i44 = add i64 %49, 1
  store i64 %inc.i44, ptr %wptr.i, align 8
  %50 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_mask.i, align 8
  %52 = trunc i64 %49 to i32
  %idxprom.i46 = and i32 %51, %52
  %arrayidx.i47 = getelementptr i32, ptr %47, i32 %idxprom.i46
  %53 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %1, ptr %arrayidx.i47, align 4
  %54 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ptr_mask.i, align 8
  %56 = load i64, ptr %wptr.i, align 8
  %and3.i49 = and i64 %56, %55
  store i64 %and3.i49, ptr %wptr.i, align 8
  %57 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_dw.i, align 8
  %dec.i50 = add i32 %58, -1
  store i32 %dec.i50, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i50)
  %cmp.i53 = icmp slt i32 %dec.i50, 1
  br i1 %cmp.i53, label %if.then.i54, label %amdgpu_ring_write.exit51.amdgpu_ring_write.exit64_crit_edge

amdgpu_ring_write.exit51.amdgpu_ring_write.exit64_crit_edge: ; preds = %amdgpu_ring_write.exit51
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit64

if.then.i54:                                      ; preds = %amdgpu_ring_write.exit51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit64

amdgpu_ring_write.exit64:                         ; preds = %if.then.i54, %amdgpu_ring_write.exit51.amdgpu_ring_write.exit64_crit_edge
  %59 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ring1.i, align 4
  %61 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %wptr.i, align 8
  %inc.i57 = add i64 %62, 1
  store i64 %inc.i57, ptr %wptr.i, align 8
  %63 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf_mask.i, align 8
  %65 = trunc i64 %62 to i32
  %idxprom.i59 = and i32 %64, %65
  %arrayidx.i60 = getelementptr i32, ptr %60, i32 %idxprom.i59
  %66 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 -1, ptr %arrayidx.i60, align 4
  %67 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ptr_mask.i, align 8
  %69 = load i64, ptr %wptr.i, align 8
  %and3.i62 = and i64 %69, %68
  store i64 %and3.i62, ptr %wptr.i, align 8
  %70 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count_dw.i, align 8
  %dec.i63 = add i32 %71, -1
  store i32 %dec.i63, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i63)
  %cmp.i66 = icmp slt i32 %dec.i63, 1
  br i1 %cmp.i66, label %if.then.i67, label %amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge

amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge: ; preds = %amdgpu_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit77

if.then.i67:                                      ; preds = %amdgpu_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit77

amdgpu_ring_write.exit77:                         ; preds = %if.then.i67, %amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge
  %72 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ring1.i, align 4
  %74 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %wptr.i, align 8
  %inc.i70 = add i64 %75, 1
  store i64 %inc.i70, ptr %wptr.i, align 8
  %76 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buf_mask.i, align 8
  %78 = trunc i64 %75 to i32
  %idxprom.i72 = and i32 %77, %78
  %arrayidx.i73 = getelementptr i32, ptr %73, i32 %idxprom.i72
  %79 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 268369924, ptr %arrayidx.i73, align 4
  %80 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %ptr_mask.i, align 8
  %82 = load i64, ptr %wptr.i, align 8
  %and3.i75 = and i64 %82, %81
  store i64 %and3.i75, ptr %wptr.i, align 8
  %83 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count_dw.i, align 8
  %dec.i76 = add i32 %84, -1
  store i32 %dec.i76, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #1 align 64 {
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
  store volatile i32 8, ptr %arrayidx.i, align 4
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
  store volatile i32 5240, ptr %arrayidx.i17, align 4
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
  store volatile i32 0, ptr %arrayidx.i30, align 4
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
  store volatile i32 0, ptr %arrayidx.i43, align 4
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
  store volatile i32 268369930, ptr %arrayidx.i69, align 4
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
define internal void @cik_sdma_ring_emit_hdp_flush(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %. = select i1 %cmp, i32 1024, i32 2048
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
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
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %8 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_mask.i, align 8
  %10 = trunc i64 %7 to i32
  %idxprom.i = and i32 %9, %10
  %arrayidx.i = getelementptr i32, ptr %5, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 872415240, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ptr_mask.i, align 8
  %14 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %14, %13
  store i64 %and3.i, ptr %wptr.i, align 8
  %15 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %16, -1
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
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i14 = add i64 %20, 1
  store i64 %inc.i14, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i16 = and i32 %22, %23
  %arrayidx.i17 = getelementptr i32, ptr %18, i32 %idxprom.i16
  %24 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 21728, ptr %arrayidx.i17, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i19 = and i64 %27, %26
  store i64 %and3.i19, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i20 = add i32 %29, -1
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
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i27 = add i64 %33, 1
  store i64 %inc.i27, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i29 = and i32 %35, %36
  %arrayidx.i30 = getelementptr i32, ptr %31, i32 %idxprom.i29
  %37 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 21724, ptr %arrayidx.i30, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i32 = and i64 %40, %39
  store i64 %and3.i32, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i33 = add i32 %42, -1
  store i32 %dec.i33, ptr %count_dw.i, align 8
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
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i40 = add i64 %46, 1
  store i64 %inc.i40, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i42 = and i32 %48, %49
  %arrayidx.i43 = getelementptr i32, ptr %44, i32 %idxprom.i42
  %50 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %., ptr %arrayidx.i43, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i45 = and i64 %53, %52
  store i64 %and3.i45, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  %dec.i46 = add i32 %55, -1
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
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 4
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wptr.i, align 8
  %inc.i53 = add i64 %59, 1
  store i64 %inc.i53, ptr %wptr.i, align 8
  %60 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_mask.i, align 8
  %62 = trunc i64 %59 to i32
  %idxprom.i55 = and i32 %61, %62
  %arrayidx.i56 = getelementptr i32, ptr %57, i32 %idxprom.i55
  %63 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %., ptr %arrayidx.i56, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ptr_mask.i, align 8
  %66 = load i64, ptr %wptr.i, align 8
  %and3.i58 = and i64 %66, %65
  store i64 %and3.i58, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 8
  %dec.i59 = add i32 %68, -1
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
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 4
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %wptr.i, align 8
  %inc.i66 = add i64 %72, 1
  store i64 %inc.i66, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_mask.i, align 8
  %75 = trunc i64 %72 to i32
  %idxprom.i68 = and i32 %74, %75
  %arrayidx.i69 = getelementptr i32, ptr %70, i32 %idxprom.i68
  %76 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 268369930, ptr %arrayidx.i69, align 4
  %77 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ptr_mask.i, align 8
  %79 = load i64, ptr %wptr.i, align 8
  %and3.i71 = and i64 %79, %78
  store i64 %and3.i71, ptr %wptr.i, align 8
  %80 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count_dw.i, align 8
  %dec.i72 = add i32 %81, -1
  store i32 %dec.i72, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_ring_test_ring(ptr noundef %ring) #1 align 64 {
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
  store i32 -1, ptr %index, align 4, !annotation !91
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
  %call5 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 5) #12
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
  store volatile i32 2, ptr %arrayidx.i, align 4
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
  store volatile i32 %conv11, ptr %arrayidx.i71, align 4
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
  store volatile i32 1, ptr %arrayidx.i84, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i87)
  %cmp.i90 = icmp slt i32 %dec.i87, 1
  br i1 %cmp.i90, label %if.then.i91, label %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge

amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge: ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit101

if.then.i91:                                      ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit101

amdgpu_ring_write.exit101:                        ; preds = %if.then.i91, %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 4
  %66 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %wptr.i, align 8
  %inc.i94 = add i64 %67, 1
  store i64 %inc.i94, ptr %wptr.i, align 8
  %68 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_mask.i, align 8
  %70 = trunc i64 %67 to i32
  %idxprom.i96 = and i32 %69, %70
  %arrayidx.i97 = getelementptr i32, ptr %65, i32 %idxprom.i96
  %71 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 -559038737, ptr %arrayidx.i97, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ptr_mask.i, align 8
  %74 = load i64, ptr %wptr.i, align 8
  %and3.i99 = and i64 %74, %73
  store i64 %and3.i99, ptr %wptr.i, align 8
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 8
  %dec.i100 = add i32 %76, -1
  store i32 %dec.i100, ptr %count_dw.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %ring) #12
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %77 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp102.not = icmp eq i32 %78, 0
  br i1 %cmp102.not, label %amdgpu_ring_write.exit101.error_free_wb_crit_edge, label %amdgpu_ring_write.exit101.for.body_crit_edge

amdgpu_ring_write.exit101.for.body_crit_edge:     ; preds = %amdgpu_ring_write.exit101
  br label %for.body

amdgpu_ring_write.exit101.error_free_wb_crit_edge: ; preds = %amdgpu_ring_write.exit101
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %amdgpu_ring_write.exit101.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %if.end19.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit101.for.body_crit_edge ]
  %79 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wb4, align 4
  %81 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index, align 4
  %arrayidx15 = getelementptr i32, ptr %80, i32 %82
  %83 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %84)
  %cmp16 = icmp eq i32 %84, -272716322
  br i1 %cmp16, label %for.body.error_free_wb_crit_edge, label %if.end19

for.body.error_free_wb_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end19:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748) #12
  %inc = add nuw i32 %i.0103, 1
  %86 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %87
  br i1 %cmp, label %if.end19.for.body_crit_edge, label %if.end19.error_free_wb_crit_edge

if.end19.error_free_wb_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

error_free_wb:                                    ; preds = %if.end19.error_free_wb_crit_edge, %for.body.error_free_wb_crit_edge, %amdgpu_ring_write.exit101.error_free_wb_crit_edge, %if.end.error_free_wb_crit_edge
  %r.0 = phi i32 [ %call5, %if.end.error_free_wb_crit_edge ], [ -110, %amdgpu_ring_write.exit101.error_free_wb_crit_edge ], [ 0, %for.body.error_free_wb_crit_edge ], [ -110, %if.end19.error_free_wb_crit_edge ]
  %88 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %89) #12
  br label %cleanup

cleanup:                                          ; preds = %error_free_wb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_free_wb ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #1 align 64 {
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
  store i32 -1, ptr %index, align 4, !annotation !91
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
  store i32 2, ptr %15, align 4
  %conv10 = trunc i64 %add to i32
  %17 = load ptr, ptr %3, align 8
  %arrayidx12 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv10, ptr %arrayidx12, align 4
  %shr = lshr i64 %add, 32
  %conv14 = trunc i64 %shr to i32
  %19 = load ptr, ptr %3, align 8
  %arrayidx16 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv14, ptr %arrayidx16, align 4
  %21 = load ptr, ptr %3, align 8
  %arrayidx18 = getelementptr i32, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx18, align 4
  %23 = load ptr, ptr %3, align 8
  %arrayidx20 = getelementptr i32, ptr %23, i32 4
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -559038737, ptr %arrayidx20, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %2, align 4
  %call21 = call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef nonnull %ib, ptr noundef null, ptr noundef nonnull %f) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end8.err1_crit_edge

if.end8.err1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end24:                                         ; preds = %if.end8
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f, align 4
  %call25 = call i32 @dma_fence_wait_timeout(ptr noundef %27, i1 noundef zeroext false, i32 noundef %timeout) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp eq i32 %call25, 0
  br i1 %cmp, label %if.end24.err1_crit_edge, label %if.else

if.end24.err1_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp28 = icmp slt i32 %call25, 0
  br i1 %cmp28, label %if.else.err1_crit_edge, label %if.end32

if.else.err1_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wb4, align 4
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  %arrayidx35 = getelementptr i32, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %33)
  %cmp36 = icmp eq i32 %33, -272716322
  %. = select i1 %cmp36, i32 0, i32 -22
  br label %err1

err1:                                             ; preds = %if.end32, %if.else.err1_crit_edge, %if.end24.err1_crit_edge, %if.end8.err1_crit_edge
  %r.0 = phi i32 [ %call21, %if.end8.err1_crit_edge ], [ %call25, %if.else.err1_crit_edge ], [ -110, %if.end24.err1_crit_edge ], [ %., %if.end32 ]
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #12
  %34 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %err1.err0_crit_edge, label %if.then.i

err1.err0_crit_edge:                              ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.then.i:                                        ; preds = %err1
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %35, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err0_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.err0_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %err0

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !95
  call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %err0

err0:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err0_crit_edge, %err1.err0_crit_edge, %if.end.err0_crit_edge
  %r.1 = phi i32 [ %call5, %if.end.err0_crit_edge ], [ %r.0, %err1.err0_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.err0_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %37 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %err0, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err0 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_insert_nop(ptr noundef %ring, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp27.not = icmp eq i32 %count, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  %burst_nop = getelementptr inbounds %struct.amdgpu_sdma_instance, ptr %call, i32 0, i32 5
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %sub = shl i32 %count, 16
  %and = add i32 %sub, 1073676288
  %shl = and i32 %and, 1073676288
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %burst_nop, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %cmp3 = icmp eq i32 %i.028, 0
  %or.cond = select i1 %tobool1.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %nop = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nop, align 4
  %or = or i32 %5, %shl
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.for.inc.sink.split_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.for.inc.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %nop5 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nop5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nop5, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i15 = icmp slt i32 %13, 1
  br i1 %cmp.i15, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.then.for.inc.sink.split_crit_edge
  %or.sink.ph = phi i32 [ %or, %if.then.for.inc.sink.split_crit_edge ], [ %11, %if.else.for.inc.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %or.sink = phi i32 [ %or, %if.then.for.inc_crit_edge ], [ %11, %if.else.for.inc_crit_edge ], [ %or.sink.ph, %for.inc.sink.split ]
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 4
  %16 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %17, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %18 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_mask.i, align 8
  %20 = trunc i64 %17 to i32
  %idxprom.i = and i32 %19, %20
  %arrayidx.i = getelementptr i32, ptr %15, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %or.sink, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ptr_mask.i, align 8
  %24 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %24, %23
  store i64 %and3.i, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %storemerge.in = load i32, ptr %count_dw.i, align 8
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %count_dw.i, align 8
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_pad_ib(ptr noundef %ring, ptr nocapture noundef %ib) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #12
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %0 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length_dw, align 4
  %sub = sub i32 0, %1
  %and = and i32 %sub, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20.not = icmp eq i32 %and, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  %burst_nop = getelementptr inbounds %struct.amdgpu_sdma_instance, ptr %call, i32 0, i32 5
  %sub4 = shl nuw nsw i32 %and, 16
  %and5 = add nuw nsw i32 %sub4, 1073676288
  %shl = and i32 %and5, 1073676288
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  br i1 %tobool.not, label %for.body.lr.ph.if.else_crit_edge, label %land.lhs.true

for.body.lr.ph.if.else_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body.lr.ph
  %2 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %burst_nop, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.not = icmp eq i8 %3, 0
  br i1 %tobool1.not.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptr, align 8
  %6 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length_dw, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.lr.ph.if.else_crit_edge
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptr, align 8
  %11 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %12, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %exitcond.not = icmp eq i32 %and, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr, align 8
  %16 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length_dw, align 4
  %inc9.1 = add i32 %17, 1
  store i32 %inc9.1, ptr %length_dw, align 4
  %arrayidx10.1 = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx10.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %exitcond.not.1 = icmp eq i32 %and, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptr, align 8
  %21 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length_dw, align 4
  %inc9.2 = add i32 %22, 1
  store i32 %inc9.2, ptr %length_dw, align 4
  %arrayidx10.2 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx10.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %exitcond.not.2 = icmp eq i32 %and, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %24 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptr, align 8
  %26 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length_dw, align 4
  %inc9.3 = add i32 %27, 1
  store i32 %inc9.3, ptr %length_dw, align 4
  %arrayidx10.3 = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx10.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %exitcond.not.3 = icmp eq i32 %and, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %29 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptr, align 8
  %31 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length_dw, align 4
  %inc9.4 = add i32 %32, 1
  store i32 %inc9.4, ptr %length_dw, align 4
  %arrayidx10.4 = getelementptr i32, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx10.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %exitcond.not.4 = icmp eq i32 %and, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %34 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptr, align 8
  %36 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length_dw, align 4
  %inc9.5 = add i32 %37, 1
  store i32 %inc9.5, ptr %length_dw, align 4
  %arrayidx10.5 = getelementptr i32, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx10.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %exitcond.not.5 = icmp eq i32 %and, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptr, align 8
  %41 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length_dw, align 4
  %inc9.6 = add i32 %42, 1
  store i32 %inc9.6, ptr %length_dw, align 4
  %arrayidx10.6 = getelementptr i32, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx10.6, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_ring_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #1 align 64 {
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
  store volatile i32 -268435442, ptr %arrayidx.i, align 4
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
  store volatile i32 %reg, ptr %arrayidx.i11, align 4
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
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_set_trap_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %state, label %sw.bb.sw.epilog14_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb.sw.epilog14_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog14

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13316, i32 noundef 0) #12
  %and = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13316, i32 noundef %and, i32 noundef 0) #12
  br label %sw.epilog14

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13316, i32 noundef 0) #12
  %or = or i32 %call3, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13316, i32 noundef %or, i32 noundef 0) #12
  br label %sw.epilog14

sw.bb4:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %state, label %sw.bb4.sw.epilog14_crit_edge [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb8
  ]

sw.bb4.sw.epilog14_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog14

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13828, i32 noundef 0) #12
  %and7 = and i32 %call6, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13828, i32 noundef %and7, i32 noundef 0) #12
  br label %sw.epilog14

sw.bb8:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13828, i32 noundef 0) #12
  %or10 = or i32 %call9, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13828, i32 noundef %or10, i32 noundef 0) #12
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb8, %sw.bb5, %sw.bb4.sw.epilog14_crit_edge, %sw.bb2, %sw.bb1, %sw.bb.sw.epilog14_crit_edge, %entry.sw.epilog14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_process_trap_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %conv = and i32 %1, 3
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 2
  %conv5 = and i8 %3, 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %conv, label %entry.sw.epilog18_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

entry.sw.epilog18_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %cond19 = icmp eq i8 %conv5, 0
  br i1 %cond19, label %sw.bb8, label %sw.bb.sw.epilog18_crit_edge

sw.bb.sw.epilog18_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  br label %sw.epilog18.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %cond = icmp eq i8 %conv5, 0
  br i1 %cond, label %sw.bb11, label %sw.bb9.sw.epilog18_crit_edge

sw.bb9.sw.epilog18_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb11:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %ring15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  br label %sw.epilog18.sink.split

sw.epilog18.sink.split:                           ; preds = %sw.bb11, %sw.bb8
  %ring15.sink = phi ptr [ %ring15, %sw.bb11 ], [ %ring, %sw.bb8 ]
  %call16 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring15.sink) #12
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.epilog18.sink.split, %sw.bb9.sw.epilog18_crit_edge, %sw.bb.sw.epilog18_crit_edge, %entry.sw.epilog18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_sdma_process_illegal_inst_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %conv = and i32 %1, 3
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %sched = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %conv, i32 3, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cik_sdma_emit_copy_buffer(ptr nocapture noundef %ib, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %byte_count, i1 noundef zeroext %tmz) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
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
  store i32 1, ptr %arrayidx, align 4
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %byte_count, ptr %arrayidx4, align 4
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %9, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx8, align 4
  %conv = trunc i64 %src_offset to i32
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %length_dw, align 4
  %arrayidx12 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx12, align 4
  %shr = lshr i64 %src_offset, 32
  %conv14 = trunc i64 %shr to i32
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %arrayidx18, align 4
  %conv20 = trunc i64 %dst_offset to i32
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc23 = add i32 %18, 1
  store i32 %inc23, ptr %length_dw, align 4
  %arrayidx24 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv20, ptr %arrayidx24, align 4
  %shr25 = lshr i64 %dst_offset, 32
  %conv27 = trunc i64 %shr25 to i32
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %21, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv27, ptr %arrayidx31, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cik_sdma_emit_fill_buffer(ptr nocapture noundef %ib, i32 noundef %src_data, i64 noundef %dst_offset, i32 noundef %byte_count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
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
  store i32 11, ptr %arrayidx, align 4
  %conv = trunc i64 %dst_offset to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %dst_offset, 32
  %conv6 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %arrayidx10, align 4
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %length_dw, align 4
  %arrayidx14 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %src_data, ptr %arrayidx14, align 4
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %byte_count, ptr %arrayidx18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cik_sdma_vm_copy_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 3
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
  store i32 1, ptr %arrayidx, align 4
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %arrayidx4, align 4
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %9, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx8, align 4
  %conv = trunc i64 %src to i32
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %length_dw, align 4
  %arrayidx12 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx12, align 4
  %shr = lshr i64 %src, 32
  %conv14 = trunc i64 %shr to i32
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %arrayidx18, align 4
  %conv20 = trunc i64 %pe to i32
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc23 = add i32 %18, 1
  store i32 %inc23, ptr %length_dw, align 4
  %arrayidx24 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv20, ptr %arrayidx24, align 4
  %shr25 = lshr i64 %pe, 32
  %conv27 = trunc i64 %shr25 to i32
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %21, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv27, ptr %arrayidx31, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_sdma_vm_write_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %value, i32 noundef %count, i32 noundef %incr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 1
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
  store i32 2, ptr %arrayidx, align 4
  %conv = trunc i64 %pe to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %pe, 32
  %conv6 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %arrayidx10, align 4
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %length_dw, align 4
  %arrayidx14 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not46 = icmp eq i32 %mul, 0
  br i1 %cmp.not46, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv29 = zext i32 %incr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ndw.048 = phi i32 [ %mul, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %value.addr.047 = phi i64 [ %value, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %conv17 = trunc i64 %value.addr.047 to i32
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr, align 8
  %16 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length_dw, align 4
  %inc20 = add i32 %17, 1
  store i32 %inc20, ptr %length_dw, align 4
  %arrayidx21 = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv17, ptr %arrayidx21, align 4
  %shr22 = lshr i64 %value.addr.047, 32
  %conv24 = trunc i64 %shr22 to i32
  %19 = load ptr, ptr %ptr, align 8
  %20 = load i32, ptr %length_dw, align 4
  %inc27 = add i32 %20, 1
  store i32 %inc27, ptr %length_dw, align 4
  %arrayidx28 = getelementptr i32, ptr %19, i32 %20
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv24, ptr %arrayidx28, align 4
  %add = add i64 %value.addr.047, %conv29
  %sub = add i32 %ndw.048, -2
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cik_sdma_vm_set_pte_pde(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
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
  store i32 12, ptr %arrayidx, align 4
  %conv = trunc i64 %pe to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %pe, 32
  %conv6 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %arrayidx10, align 4
  %conv12 = trunc i64 %flags to i32
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc15 = add i32 %12, 1
  store i32 %inc15, ptr %length_dw, align 4
  %arrayidx16 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv12, ptr %arrayidx16, align 4
  %shr17 = lshr i64 %flags, 32
  %conv19 = trunc i64 %shr17 to i32
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc22 = add i32 %15, 1
  store i32 %inc22, ptr %length_dw, align 4
  %arrayidx23 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv19, ptr %arrayidx23, align 4
  %conv25 = trunc i64 %addr to i32
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc28 = add i32 %18, 1
  store i32 %inc28, ptr %length_dw, align 4
  %arrayidx29 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv25, ptr %arrayidx29, align 4
  %shr30 = lshr i64 %addr, 32
  %conv32 = trunc i64 %shr30 to i32
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc35 = add i32 %21, 1
  store i32 %inc35, ptr %length_dw, align 4
  %arrayidx36 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv32, ptr %arrayidx36, align 4
  %23 = load ptr, ptr %ptr, align 8
  %24 = load i32, ptr %length_dw, align 4
  %inc39 = add i32 %24, 1
  store i32 %inc39, ptr %length_dw, align 4
  %arrayidx40 = getelementptr i32, ptr %23, i32 %24
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %incr, ptr %arrayidx40, align 4
  %26 = load ptr, ptr %ptr, align 8
  %27 = load i32, ptr %length_dw, align 4
  %inc43 = add i32 %27, 1
  store i32 %inc43, ptr %length_dw, align 4
  %arrayidx44 = getelementptr i32, ptr %26, i32 %27
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx44, align 4
  %29 = load ptr, ptr %ptr, align 8
  %30 = load i32, ptr %length_dw, align 4
  %inc47 = add i32 %30, 1
  store i32 %inc47, ptr %length_dw, align 4
  %arrayidx48 = getelementptr i32, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %count, ptr %arrayidx48, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cik_sdma_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %0 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp.i = icmp eq ptr %1, %ring.i
  %ring5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  %cmp8.i = icmp eq ptr %1, %ring5.i
  %or.cond.i = or i1 %cmp.i, %cmp8.i
  br i1 %or.cond.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext false) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %2 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1029.i = icmp sgt i32 %3, 0
  br i1 %cmp1029.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx11.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.030.i
  %4 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %5, 13440
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef %and.i, i32 noundef 0) #12
  %add15.i = add i32 %5, 13450
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i, i32 noundef 0, i32 noundef 0) #12
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %6 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %7
  br i1 %cmp10.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %8 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16 = icmp sgt i32 %9, 0
  br i1 %cmp16, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %not.enable = xor i1 %enable, true
  %masksel = zext i1 %not.enable to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.017
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, 13330
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, -2
  %me_cntl.0 = or i32 %and, %masksel
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %me_cntl.0, i32 noundef 0) #12
  %inc = add nuw nsw i32 %i.017, 1
  %12 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cik_ctx_switch_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %0 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %while.cond.preheader

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %cmp80 = icmp ugt i32 %0, 65535
  br i1 %cmp80, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end37_crit_edge

while.cond.preheader.if.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %unit.082 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %value.081 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %0, %while.cond.preheader.while.body_crit_edge ]
  %add = add i32 %value.081, 1
  %shr = lshr i32 %add, 1
  %inc = add i32 %unit.082, 1
  %cmp = icmp ugt i32 %add, 131071
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp1 = icmp ugt i32 %inc, 15
  br i1 %cmp1, label %land.end, label %while.end.if.end37_crit_edge

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.end:                                         ; preds = %while.end
  %.b79 = load i1, ptr @cik_ctx_switch_enable.__already_done, align 1
  br i1 %.b79, label %land.end.if.end37_crit_edge, label %if.then8, !prof !94

land.end.if.end37_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cik_ctx_switch_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 371, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef 2147450880) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then8, %land.end.if.end37_crit_edge, %while.end.if.end37_crit_edge, %while.cond.preheader.if.end37_crit_edge
  %value.1 = phi i32 [ %shr, %while.end.if.end37_crit_edge ], [ 65535, %if.then8 ], [ 65535, %land.end.if.end37_crit_edge ], [ %0, %while.cond.preheader.if.end37_crit_edge ]
  %unit.1 = phi i32 [ %inc, %while.end.if.end37_crit_edge ], [ 15, %if.then8 ], [ 15, %land.end.if.end37_crit_edge ], [ 0, %while.cond.preheader.if.end37_crit_edge ]
  %shl38 = shl nuw nsw i32 %value.1, 8
  %or = or i32 %shl38, %unit.1
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %entry.if.end40_crit_edge
  %phase_quantum.0 = phi i32 [ %or, %if.end37 ], [ 0, %entry.if.end40_crit_edge ]
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %1 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4184 = icmp sgt i32 %2, 0
  br i1 %cmp4184, label %if.end40.for.body_crit_edge, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %if.end40.for.body_crit_edge
  %i.085 = phi i32 [ %inc58, %if.end55.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.085
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add42 = add i32 %4, 13316
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add42, i32 noundef 0) #12
  br i1 %enable, label %if.then44, label %if.else

if.then44:                                        ; preds = %for.body
  %or45 = or i32 %call, 262144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %5 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool46.not = icmp eq i32 %5, 0
  br i1 %tobool46.not, label %if.then44.if.end55_crit_edge, label %if.then47

if.then44.if.end55_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %add49 = add i32 %4, 13332
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add49, i32 noundef %phase_quantum.0, i32 noundef 0) #12
  %add51 = add i32 %4, 13333
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51, i32 noundef %phase_quantum.0, i32 noundef 0) #12
  br label %if.end55

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %and53 = and i32 %call, -262145
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then47, %if.then44.if.end55_crit_edge
  %f32_cntl.0 = phi i32 [ %or45, %if.then47 ], [ %or45, %if.then44.if.end55_crit_edge ], [ %and53, %if.else ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add42, i32 noundef %f32_cntl.0, i32 noundef 0) #12
  %inc58 = add nuw nsw i32 %i.085, 1
  %6 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances, align 4
  %cmp41 = icmp slt i32 %inc58, %7
  br i1 %cmp41, label %if.end55.for.body_crit_edge, label %if.end55.for.end_crit_edge

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end55.for.end_crit_edge, %if.end40.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_sdma_hdr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_srbm_select(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !72, !73, !75, !76, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_firmware390, !1, !"__UNIQUE_ID_firmware390", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 59, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware391, !3, !"__UNIQUE_ID_firmware391", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 60, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware392, !5, !"__UNIQUE_ID_firmware392", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 61, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware393, !7, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 62, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware394, !9, !"__UNIQUE_ID_firmware394", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 63, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware395, !11, !"__UNIQUE_ID_firmware395", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 64, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware396, !13, !"__UNIQUE_ID_firmware396", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 65, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware397, !15, !"__UNIQUE_ID_firmware397", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 66, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware398, !17, !"__UNIQUE_ID_firmware398", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 67, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware399, !19, !"__UNIQUE_ID_firmware399", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 68, i32 1}
!20 = !{ptr @cik_sdma_ip_block, !21, !"cik_sdma_ip_block", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1390, i32 38}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1235, i32 10}
!24 = !{ptr @cik_sdma_ip_funcs, !25, !"cik_sdma_ip_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1234, i32 34}
!26 = !{ptr @cik_sdma_ring_funcs, !27, !"cik_sdma_ring_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1251, i32 39}
!28 = !{ptr @sdma_offsets, !29, !"sdma_offsets", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 47, i32 18}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!32 = !{ptr @cik_sdma_trap_irq_funcs, !33, !"cik_sdma_trap_irq_funcs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1288, i32 42}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1168, i32 2}
!36 = !{ptr @cik_sdma_illegal_inst_irq_funcs, !37, !"cik_sdma_illegal_inst_irq_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1293, i32 42}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1207, i32 2}
!40 = !{ptr @cik_sdma_buffer_funcs, !41, !"cik_sdma_buffer_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1354, i32 41}
!42 = !{ptr @cik_sdma_vm_pte_funcs, !43, !"cik_sdma_vm_pte_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1370, i32 41}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 959, i32 3}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 984, i32 23}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 114, i32 2}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 118, i32 15}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 121, i32 15}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 124, i32 15}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 127, i32 15}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 130, i32 15}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 137, i32 39}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 139, i32 39}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 147, i32 3}
!66 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cik_sdma_init_microcode._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @cik_sdma_init_microcode._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 369, i32 4}
!72 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/cik_sdma.c", i32 1097, i32 3}
!75 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cik_sdma_soft_reset._entry, !74, !"_entry", i1 false, i1 false}
!79 = !{ptr @cik_sdma_soft_reset._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2162589585, i64 2162590087, i64 2162589622, i64 2162589678, i64 2162589712, i64 2162589736, i64 2162589777, i64 2162589798, i64 2162589826, i64 2162589860}
!90 = !{i32 0, i32 33}
!91 = !{!"auto-init"}
!92 = !{i64 2148685828}
!93 = !{i64 2148600268, i64 2148600300, i64 2148600329, i64 2148600363, i64 2148600394, i64 2148600417}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2149883601}
!96 = !{i8 0, i8 2}
