; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/cz_ih.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/cz_ih.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ih_funcs = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@cz_ih_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @cz_ih_early_init, ptr null, ptr @cz_ih_sw_init, ptr @cz_ih_sw_fini, ptr null, ptr @cz_ih_hw_init, ptr @cz_ih_hw_fini, ptr null, ptr @cz_ih_suspend, ptr @cz_ih_resume, ptr @cz_ih_is_idle, ptr @cz_ih_wait_for_idle, ptr null, ptr null, ptr @cz_ih_soft_reset, ptr null, ptr @cz_ih_set_clockgating_state, ptr @cz_ih_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cz_ih_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 2, i32 3, i32 0, i32 0, ptr @cz_ih_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cz_ih\00", [26 x i8] zeroinitializer }, align 32
@cz_ih_funcs = internal constant { %struct.amdgpu_ih_funcs, [16 x i8] } { %struct.amdgpu_ih_funcs { ptr @cz_ih_get_wptr, ptr @cz_ih_decode_iv, ptr null, ptr @cz_ih_set_rptr }, [16 x i8] zeroinitializer }, align 32
@cz_ih_get_wptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cz_ih_get_wptr\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/amd/amdgpu/cz_ih.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cz_ih_get_wptr._entry_ptr = internal global ptr @cz_ih_get_wptr._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cz_ih_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 385, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cz_ih_soft_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cz_ih_soft_reset._entry_ptr = internal global ptr @cz_ih_soft_reset._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"cz_ih_ip_funcs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 416, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"cz_ih_ip_block\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 444, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 417, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"cz_ih_funcs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 433, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 212, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [38 x i8] c"../drivers/gpu/drm/amd/amdgpu/cz_ih.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 385, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @cz_ih_get_wptr._entry, ptr @cz_ih_get_wptr._entry_ptr, ptr @cz_ih_soft_reset._entry, ptr @cz_ih_soft_reset._entry_ptr, ptr @cz_ih_ip_funcs, ptr @cz_ih_ip_block, ptr @.str, ptr @cz_ih_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_ih_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_ih_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_ih_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_ih_get_wptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_ih_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_irq_add_domain(ptr noundef %handle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ih_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 9
  %0 = ptrtoint ptr %ih_funcs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cz_ih_funcs, ptr %ih_funcs.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ih = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5
  %call = tail call i32 @amdgpu_ih_ring_init(ptr noundef %handle, ptr noundef %ih, i32 noundef 65536, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @amdgpu_irq_init(ptr noundef %handle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_irq_fini_sw(ptr noundef %handle) #6
  tail call void @amdgpu_irq_remove_domain(ptr noundef %handle) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ih1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3632, i32 noundef 0) #6
  %call1.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3638, i32 noundef 0) #6
  %and.i.i = and i32 %call.i.i, -2
  %and2.i.i = and i32 %call1.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3632, i32 noundef %and.i.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3638, i32 noundef %and2.i.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3634, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3635, i32 noundef 0, i32 noundef 0) #6
  %enabled.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 12
  %0 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled.i.i, align 4
  %rptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 13
  %1 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rptr.i.i, align 8
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 64
  %2 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dummy_page_addr.i, align 8
  %shr.i = lshr i32 %3, 8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5403, i32 noundef %shr.i, i32 noundef 0) #6
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5402, i32 noundef 0) #6
  %and2.i = and i32 %call.i, -10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5402, i32 noundef %and2.i, i32 noundef 0) #6
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 7
  %4 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %gpu_addr.i, align 8
  %shr6.i = lshr i64 %5, 8
  %conv.i = trunc i64 %shr6.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3633, i32 noundef %conv.i, i32 noundef 0) #6
  %6 = ptrtoint ptr %ih1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ih1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp.i.i = icmp ugt i32 %7, 7
  br i1 %cmp.i.i, label %cond.end9.i.i, label %entry.cz_ih_irq_init.exit_crit_edge

entry.cz_ih_irq_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cz_ih_irq_init.exit

cond.end9.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div1.i = lshr i32 %7, 2
  %sub.i2.i = add nsw i32 %div1.i, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i2.i, i1 false) #6, !range !31
  %.neg = mul nuw nsw i32 %8, 62
  %phi.bo3 = and i32 %.neg, 62
  %phi.bo = or i32 %phi.bo3, -2147417856
  br label %cz_ih_irq_init.exit

cz_ih_irq_init.exit:                              ; preds = %cond.end9.i.i, %entry.cz_ih_irq_init.exit_crit_edge
  %cond60.i = phi i32 [ %phi.bo, %cond.end9.i.i ], [ -2147417856, %entry.cz_ih_irq_init.exit_crit_edge ]
  %wptr_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 8
  %9 = ptrtoint ptr %wptr_addr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wptr_addr.i, align 8
  %conv69.i = trunc i64 %10 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3637, i32 noundef %conv69.i, i32 noundef 0) #6
  %11 = ptrtoint ptr %wptr_addr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %wptr_addr.i, align 8
  %shr71.i = lshr i64 %12, 32
  %conv73.i = trunc i64 %shr71.i to i32
  %and74.i = and i32 %conv73.i, 255
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3636, i32 noundef %and74.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3632, i32 noundef %cond60.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3634, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3635, i32 noundef 0, i32 noundef 0) #6
  %call75.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3638, i32 noundef 0) #6
  %and76.i = and i32 %call75.i, -503316481
  %msi_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 4
  %13 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msi_enabled.i, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %and79.i = and i32 %call75.i, -503316497
  %or80.i = or i32 %and79.i, 16
  %ih_cntl.0.i = select i1 %tobool.not.i, i32 %and76.i, i32 %or80.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3638, i32 noundef %ih_cntl.0.i, i32 noundef 0) #6
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_set_master(ptr noundef %16) #6
  %call.i3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3638, i32 noundef 0) #6
  %call1.i4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3632, i32 noundef 0) #6
  %or.i.i = or i32 %call.i3.i, 1
  %or3.i.i = or i32 %call1.i4.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3638, i32 noundef %or.i.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3632, i32 noundef %or3.i.i, i32 noundef 0) #6
  %17 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enabled.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3632, i32 noundef 0) #6
  %call1.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3638, i32 noundef 0) #6
  %and.i.i = and i32 %call.i.i, -2
  %and2.i.i = and i32 %call1.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3632, i32 noundef %and.i.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3638, i32 noundef %and2.i.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3634, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3635, i32 noundef 0, i32 noundef 0) #6
  %enabled.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 12
  %0 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled.i.i, align 4
  %rptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 13
  %1 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rptr.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3632, i32 noundef 0) #6
  %call1.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3638, i32 noundef 0) #6
  %and.i.i.i = and i32 %call.i.i.i, -2
  %and2.i.i.i = and i32 %call1.i.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3632, i32 noundef %and.i.i.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3638, i32 noundef %and2.i.i.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3634, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3635, i32 noundef 0, i32 noundef 0) #6
  %enabled.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 12
  %0 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled.i.i.i, align 4
  %rptr.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 13
  %1 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rptr.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cz_ih_hw_init(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cz_ih_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #6
  %0 = and i32 %call, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #6
  %2 = and i32 %call, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #6
  %inc = add nuw i32 %i.06, 1
  %4 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #6
  %and = and i32 %call, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then3

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #6
  %or5 = or i32 %call4, 1024
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %or5) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or5, i32 noundef 0) #6
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #6
  %and7 = and i32 %call6, -1025
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and7, i32 noundef 0) #6
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 10737400) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cz_ih_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cz_ih_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_ih_get_wptr(ptr noundef %adev, ptr nocapture noundef %ih) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr_cpu = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 9
  %0 = ptrtoint ptr %wptr_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wptr_cpu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3635, i32 noundef 0) #6
  %and1 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool3.not = icmp eq i32 %and1, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = and i32 %call, -2
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 8
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %7 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rptr, align 8
  %add = add i32 %and6, 16
  %ptr_mask = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %9 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr_mask, align 4
  %and7 = and i32 %10, %add
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %and6, i32 noundef %8, i32 noundef %and7) #9
  %11 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr_mask, align 4
  %and10 = and i32 %12, %add
  %13 = ptrtoint ptr %rptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and10, ptr %rptr, align 8
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3632, i32 noundef 0) #6
  %or14 = or i32 %call12, -2147483648
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3632, i32 noundef %or14, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge, %entry.out_crit_edge
  %wptr.0 = phi i32 [ %and6, %if.end5 ], [ %call, %if.end.out_crit_edge ], [ %4, %entry.out_crit_edge ]
  %ptr_mask15 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %14 = ptrtoint ptr %ptr_mask15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptr_mask15, align 4
  %and16 = and i32 %15, %wptr.0
  ret i32 %and16
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cz_ih_decode_iv(ptr nocapture noundef readnone %adev, ptr nocapture noundef %ih, ptr nocapture noundef writeonly %entry1) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rptr, align 8
  %shr = lshr i32 %1, 2
  %ring = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %6 = lshr i32 %5, 24
  %add4 = add nuw nsw i32 %shr, 1
  %arrayidx5 = getelementptr i32, ptr %3, i32 %add4
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx5, align 4
  %add8 = add nuw nsw i32 %shr, 2
  %arrayidx9 = getelementptr i32, ptr %3, i32 %add8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add12 = add nuw nsw i32 %shr, 3
  %arrayidx13 = getelementptr i32, ptr %3, i32 %add12
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx13, align 4
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %14 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %client_id, align 4
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %15 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %6, ptr %src_id, align 8
  %16 = and i32 %8, -241
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %18 = ptrtoint ptr %src_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %src_data, align 4
  %and20 = and i32 %11, 255
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %19 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and20, ptr %ring_id, align 4
  %shr22 = lshr i32 %11, 8
  %and23 = and i32 %shr22, 255
  %vmid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 4
  %20 = ptrtoint ptr %vmid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and23, ptr %vmid, align 8
  %shr25 = lshr i32 %11, 16
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %21 = ptrtoint ptr %pasid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr25, ptr %pasid, align 4
  %22 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rptr, align 8
  %add28 = add i32 %23, 16
  store i32 %add28, ptr %rptr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cz_ih_set_rptr(ptr noundef %adev, ptr nocapture noundef readonly %ih) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rptr, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3634, i32 noundef %1, i32 noundef 0) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ih_ring_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_irq_fini_sw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_irq_remove_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @cz_ih_ip_block, !1, !"cz_ih_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/cz_ih.c", i32 444, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/cz_ih.c", i32 417, i32 10}
!4 = !{ptr @cz_ih_ip_funcs, !5, !"cz_ih_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/cz_ih.c", i32 416, i32 34}
!6 = !{ptr @cz_ih_funcs, !7, !"cz_ih_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/cz_ih.c", i32 433, i32 37}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/cz_ih.c", i32 212, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cz_ih_get_wptr._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @cz_ih_get_wptr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/cz_ih.c", i32 385, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cz_ih_soft_reset._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @cz_ih_soft_reset._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i32 0, i32 33}
!32 = !{i8 0, i8 2}
