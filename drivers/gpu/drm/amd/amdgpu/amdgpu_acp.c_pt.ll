; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.100, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.99], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.99 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.96] }
%struct.anon.96 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.100 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.acp_pm_domain = type { ptr, %struct.generic_pm_domain }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.93 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.93 = type { %struct.mutex }
%struct.i2s_platform_data = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }

@acp_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @acp_early_init, ptr null, ptr @acp_sw_init, ptr @acp_sw_fini, ptr null, ptr @acp_hw_init, ptr @acp_hw_fini, ptr null, ptr @acp_suspend, ptr @acp_resume, ptr @acp_is_idle, ptr @acp_wait_for_idle, ptr null, ptr null, ptr @acp_soft_reset, ptr null, ptr @acp_set_clockgating_state, ptr @acp_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@acp_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 10, i32 2, i32 2, i32 0, ptr @acp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acp_ip\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ACP_AUDIO\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acp2x_dma\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acp2x_dw_i2s_play\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acp2x_dw_i2s_cap\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"acp2x_dw_bt_i2s_play_cap\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acp2x_dma_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acp_audio_dma\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"designware-i2s\00", [17 x i8] zeroinitializer }, align 32
@acp_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 372, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: Failed to reset ACP\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"acp_hw_init\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acp_hw_init._entry_ptr = internal global ptr @acp_hw_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@acp_hw_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 390, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@acp_hw_init._entry_ptr.15 = internal global ptr @acp_hw_init._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@acp_genpd_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.11, i32 170, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Failed to add dev to genpd %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"acp_genpd_add_device\00", [43 x i8] zeroinitializer }, align 32
@acp_genpd_add_device._entry_ptr = internal global ptr @acp_genpd_add_device._entry, section ".printk_index", align 4
@acp_hw_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.18, ptr @.str.11, i32 441, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"acp_hw_fini\00", [20 x i8] zeroinitializer }, align 32
@acp_hw_fini._entry_ptr = internal global ptr @acp_hw_fini._entry, section ".printk_index", align 4
@acp_hw_fini._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.18, ptr @.str.11, i32 458, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@acp_hw_fini._entry_ptr.20 = internal global ptr @acp_hw_fini._entry.19, section ".printk_index", align 4
@acp_genpd_remove_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.11, i32 181, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Failed to remove dev from genpd %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"acp_genpd_remove_device\00", [40 x i8] zeroinitializer }, align 32
@acp_genpd_remove_device._entry_ptr = internal global ptr @acp_genpd_remove_device._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"acp_ip_funcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 532, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"acp_ip_block\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 549, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 533, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 229, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 300, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 305, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 310, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 315, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 320, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 325, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 331, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 372, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 390, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 170, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 441, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 458, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 181, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @acp_genpd_add_device._entry, ptr @acp_genpd_add_device._entry_ptr, ptr @acp_genpd_remove_device._entry, ptr @acp_genpd_remove_device._entry_ptr, ptr @acp_hw_fini._entry, ptr @acp_hw_fini._entry.19, ptr @acp_hw_fini._entry_ptr, ptr @acp_hw_fini._entry_ptr.20, ptr @acp_hw_init._entry, ptr @acp_hw_init._entry.14, ptr @acp_hw_init._entry_ptr, ptr @acp_hw_init._entry_ptr.15, ptr @acp_ip_funcs, ptr @acp_ip_block, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_hw_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_genpd_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_hw_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_hw_fini._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_genpd_remove_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @acp_early_init(ptr nocapture noundef readnone %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %acp = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3
  %2 = ptrtoint ptr %acp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %acp, align 4
  %call = tail call ptr @amdgpu_cgs_create_device(ptr noundef %handle) #5
  %cgs_device = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %cgs_device to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %cgs_device, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_sw_fini(ptr nocapture noundef readonly %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cgs_device = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgs_device, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amdgpu_cgs_destroy_device(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %handle, i32 noundef 10) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %acp = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3
  %cgs_device = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgs_device, align 4
  %version = getelementptr inbounds %struct.amdgpu_ip_block, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %version, align 4
  %major = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %major, align 4
  %minor = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minor, align 4
  %call2 = tail call i32 @amd_acp_hw_init(ptr noundef %1, i32 noundef %5, i32 noundef %7) #5
  %8 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.end.cleanup_crit_edge [
    i32 -19, label %if.then3
    i32 0, label %if.end8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 10, i1 noundef zeroext true) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %rmmio_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rmmio_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21129, i32 %10)
  %cmp11 = icmp ult i32 %10, 21129
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %rmmio_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 30
  %11 = ptrtoint ptr %rmmio_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rmmio_base, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1360) #8
  %acp_genpd = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %acp_genpd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %acp_genpd, align 4
  %cmp18 = icmp eq ptr %call7.i.i, null
  br i1 %cmp18, label %if.end13.cleanup_crit_edge, label %if.end21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %name = getelementptr inbounds %struct.acp_pm_domain, ptr %call7.i.i, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.1, ptr %name, align 8
  %power_off = getelementptr inbounds %struct.acp_pm_domain, ptr %call7.i.i, i32 0, i32 1, i32 18
  %16 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @acp_poweroff, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.acp_pm_domain, ptr %call7.i.i, i32 0, i32 1, i32 19
  %17 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @acp_poweron, ptr %power_on, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %handle, ptr %call7.i.i, align 8
  %gpd35 = getelementptr inbounds %struct.acp_pm_domain, ptr %call7.i.i, i32 0, i32 1
  %call36 = tail call i32 @pm_genpd_init(ptr noundef %gpd35, ptr noundef null, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 352) #8
  %acp_cell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %acp_cell to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %acp_cell, align 4
  %cmp41 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp41, label %if.end21.failure_crit_edge, label %if.end44

if.end21.failure_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure

if.end44:                                         ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i528 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 160) #8
  %acp_res = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %acp_res to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i528, ptr %acp_res, align 4
  %cmp49 = icmp eq ptr %call7.i.i.i528, null
  br i1 %cmp49, label %if.end44.failure_crit_edge, label %if.end52

if.end44.failure_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure

if.end52:                                         ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i529 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 132) #8
  %cmp54 = icmp eq ptr %call7.i.i.i529, null
  br i1 %cmp54, label %if.end52.failure_crit_edge, label %if.end57

if.end52.failure_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure

if.end57:                                         ; preds = %if.end52
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %24 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %25)
  %cond = icmp eq i32 %25, 14
  %quirks = getelementptr inbounds %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 0, i32 4
  %. = select i1 %cond, i32 5, i32 1
  %.543 = select i1 %cond, i32 7, i32 3
  %26 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %., ptr %quirks, align 8
  %27 = ptrtoint ptr %call7.i.i.i529 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %call7.i.i.i529, align 8
  %28 = getelementptr inbounds %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 0, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2046, ptr %28, align 4
  %30 = getelementptr inbounds %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 108, ptr %30, align 4
  %32 = getelementptr inbounds %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 0, i32 6
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 104, ptr %32, align 8
  %34 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 1, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.543, ptr %34, align 4
  %arrayidx72 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 1
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %arrayidx72, align 4
  %snd_rates75 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 1, i32 3
  %37 = ptrtoint ptr %snd_rates75 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2046, ptr %snd_rates75, align 8
  %i2s_reg_comp177 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 1, i32 5
  %38 = ptrtoint ptr %i2s_reg_comp177 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 172, ptr %i2s_reg_comp177, align 8
  %i2s_reg_comp279 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 1, i32 6
  %39 = ptrtoint ptr %i2s_reg_comp279 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 168, ptr %i2s_reg_comp279, align 4
  %arrayidx80 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 2
  %quirks81 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 2, i32 4
  %40 = ptrtoint ptr %quirks81 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %., ptr %quirks81, align 8
  %41 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %arrayidx80, align 8
  %snd_rates91 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 2, i32 3
  %42 = ptrtoint ptr %snd_rates91 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2046, ptr %snd_rates91, align 4
  %i2s_reg_comp193 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 2, i32 5
  %43 = ptrtoint ptr %i2s_reg_comp193 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 172, ptr %i2s_reg_comp193, align 4
  %i2s_reg_comp295 = getelementptr %struct.i2s_platform_data, ptr %call7.i.i.i529, i32 2, i32 6
  %44 = ptrtoint ptr %i2s_reg_comp295 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 168, ptr %i2s_reg_comp295, align 8
  %45 = ptrtoint ptr %acp_res to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %acp_res, align 4
  %name99 = getelementptr inbounds %struct.resource, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %name99 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.2, ptr %name99, align 4
  %48 = load ptr, ptr %acp_res, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 512, ptr %flags, align 4
  %50 = load ptr, ptr %acp_res, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %12, ptr %50, align 4
  %add = add i32 %12, 83648
  %52 = load ptr, ptr %acp_res, align 4
  %end = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add, ptr %end, align 4
  %54 = load ptr, ptr %acp_res, align 4
  %name114 = getelementptr %struct.resource, ptr %54, i32 1, i32 2
  %55 = ptrtoint ptr %name114 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.3, ptr %name114, align 4
  %56 = load ptr, ptr %acp_res, align 4
  %flags118 = getelementptr %struct.resource, ptr %56, i32 1, i32 3
  %57 = ptrtoint ptr %flags118 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 512, ptr %flags118, align 4
  %add119 = add i32 %12, 84032
  %58 = load ptr, ptr %acp_res, align 4
  %arrayidx123 = getelementptr %struct.resource, ptr %58, i32 1
  %59 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add119, ptr %arrayidx123, align 4
  %add125 = add i32 %12, 84148
  %60 = load ptr, ptr %acp_res, align 4
  %end130 = getelementptr %struct.resource, ptr %60, i32 1, i32 1
  %61 = ptrtoint ptr %end130 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add125, ptr %end130, align 4
  %62 = load ptr, ptr %acp_res, align 4
  %name134 = getelementptr %struct.resource, ptr %62, i32 2, i32 2
  %63 = ptrtoint ptr %name134 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.4, ptr %name134, align 4
  %64 = load ptr, ptr %acp_res, align 4
  %flags138 = getelementptr %struct.resource, ptr %64, i32 2, i32 3
  %65 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 512, ptr %flags138, align 4
  %add139 = add i32 %12, 84152
  %66 = load ptr, ptr %acp_res, align 4
  %arrayidx143 = getelementptr %struct.resource, ptr %66, i32 2
  %67 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add139, ptr %arrayidx143, align 4
  %add145 = add i32 %12, 84332
  %68 = load ptr, ptr %acp_res, align 4
  %end150 = getelementptr %struct.resource, ptr %68, i32 2, i32 1
  %69 = ptrtoint ptr %end150 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add145, ptr %end150, align 4
  %70 = load ptr, ptr %acp_res, align 4
  %name154 = getelementptr %struct.resource, ptr %70, i32 3, i32 2
  %71 = ptrtoint ptr %name154 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.5, ptr %name154, align 4
  %72 = load ptr, ptr %acp_res, align 4
  %flags158 = getelementptr %struct.resource, ptr %72, i32 3, i32 3
  %73 = ptrtoint ptr %flags158 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 512, ptr %flags158, align 4
  %add159 = add i32 %12, 84336
  %74 = load ptr, ptr %acp_res, align 4
  %arrayidx163 = getelementptr %struct.resource, ptr %74, i32 3
  %75 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add159, ptr %arrayidx163, align 4
  %add165 = add i32 %12, 84516
  %76 = load ptr, ptr %acp_res, align 4
  %end170 = getelementptr %struct.resource, ptr %76, i32 3, i32 1
  %77 = ptrtoint ptr %end170 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add165, ptr %end170, align 4
  %78 = load ptr, ptr %acp_res, align 4
  %name174 = getelementptr %struct.resource, ptr %78, i32 4, i32 2
  %79 = ptrtoint ptr %name174 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.6, ptr %name174, align 4
  %80 = load ptr, ptr %acp_res, align 4
  %flags178 = getelementptr %struct.resource, ptr %80, i32 4, i32 3
  %81 = ptrtoint ptr %flags178 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1024, ptr %flags178, align 4
  %call179 = tail call i32 @amdgpu_irq_create_mapping(ptr noundef %handle, i32 noundef 162) #5
  %82 = ptrtoint ptr %acp_res to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %acp_res, align 4
  %arrayidx182 = getelementptr %struct.resource, ptr %83, i32 4
  %84 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call179, ptr %arrayidx182, align 4
  %85 = load ptr, ptr %acp_res, align 4
  %arrayidx186 = getelementptr %struct.resource, ptr %85, i32 4
  %86 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx186, align 4
  %end191 = getelementptr %struct.resource, ptr %85, i32 4, i32 1
  %88 = ptrtoint ptr %end191 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %end191, align 4
  %89 = ptrtoint ptr %acp_cell to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %acp_cell, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.7, ptr %90, align 8
  %92 = load ptr, ptr %acp_cell, align 4
  %num_resources = getelementptr inbounds %struct.mfd_cell, ptr %92, i32 0, i32 14
  %93 = ptrtoint ptr %num_resources to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 5, ptr %num_resources, align 8
  %94 = load ptr, ptr %acp_res, align 4
  %95 = load ptr, ptr %acp_cell, align 4
  %resources = getelementptr inbounds %struct.mfd_cell, ptr %95, i32 0, i32 15
  %96 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %resources, align 4
  %97 = load ptr, ptr %acp_cell, align 4
  %platform_data = getelementptr inbounds %struct.mfd_cell, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %asic_type, ptr %platform_data, align 4
  %99 = load ptr, ptr %acp_cell, align 4
  %pdata_size = getelementptr inbounds %struct.mfd_cell, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %pdata_size to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %pdata_size, align 8
  %101 = load ptr, ptr %acp_cell, align 4
  %arrayidx214 = getelementptr %struct.mfd_cell, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.8, ptr %arrayidx214, align 8
  %103 = load ptr, ptr %acp_cell, align 4
  %num_resources219 = getelementptr %struct.mfd_cell, ptr %103, i32 1, i32 14
  %104 = ptrtoint ptr %num_resources219 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %num_resources219, align 8
  %105 = load ptr, ptr %acp_res, align 4
  %arrayidx222 = getelementptr %struct.resource, ptr %105, i32 1
  %106 = load ptr, ptr %acp_cell, align 4
  %resources226 = getelementptr %struct.mfd_cell, ptr %106, i32 1, i32 15
  %107 = ptrtoint ptr %resources226 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx222, ptr %resources226, align 4
  %108 = load ptr, ptr %acp_cell, align 4
  %platform_data231 = getelementptr %struct.mfd_cell, ptr %108, i32 1, i32 7
  %109 = ptrtoint ptr %platform_data231 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i.i.i529, ptr %platform_data231, align 4
  %110 = load ptr, ptr %acp_cell, align 4
  %pdata_size235 = getelementptr %struct.mfd_cell, ptr %110, i32 1, i32 8
  %111 = ptrtoint ptr %pdata_size235 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 44, ptr %pdata_size235, align 8
  %112 = load ptr, ptr %acp_cell, align 4
  %arrayidx238 = getelementptr %struct.mfd_cell, ptr %112, i32 2
  %113 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.8, ptr %arrayidx238, align 8
  %114 = load ptr, ptr %acp_cell, align 4
  %num_resources243 = getelementptr %struct.mfd_cell, ptr %114, i32 2, i32 14
  %115 = ptrtoint ptr %num_resources243 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %num_resources243, align 8
  %116 = load ptr, ptr %acp_res, align 4
  %arrayidx246 = getelementptr %struct.resource, ptr %116, i32 2
  %117 = load ptr, ptr %acp_cell, align 4
  %resources250 = getelementptr %struct.mfd_cell, ptr %117, i32 2, i32 15
  %118 = ptrtoint ptr %resources250 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx246, ptr %resources250, align 4
  %119 = load ptr, ptr %acp_cell, align 4
  %platform_data255 = getelementptr %struct.mfd_cell, ptr %119, i32 2, i32 7
  %120 = ptrtoint ptr %platform_data255 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %arrayidx72, ptr %platform_data255, align 4
  %121 = load ptr, ptr %acp_cell, align 4
  %pdata_size259 = getelementptr %struct.mfd_cell, ptr %121, i32 2, i32 8
  %122 = ptrtoint ptr %pdata_size259 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 44, ptr %pdata_size259, align 8
  %123 = load ptr, ptr %acp_cell, align 4
  %arrayidx262 = getelementptr %struct.mfd_cell, ptr %123, i32 3
  %124 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.8, ptr %arrayidx262, align 8
  %125 = load ptr, ptr %acp_cell, align 4
  %num_resources267 = getelementptr %struct.mfd_cell, ptr %125, i32 3, i32 14
  %126 = ptrtoint ptr %num_resources267 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %num_resources267, align 8
  %127 = load ptr, ptr %acp_res, align 4
  %arrayidx270 = getelementptr %struct.resource, ptr %127, i32 3
  %128 = load ptr, ptr %acp_cell, align 4
  %resources274 = getelementptr %struct.mfd_cell, ptr %128, i32 3, i32 15
  %129 = ptrtoint ptr %resources274 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %arrayidx270, ptr %resources274, align 4
  %130 = load ptr, ptr %acp_cell, align 4
  %platform_data279 = getelementptr %struct.mfd_cell, ptr %130, i32 3, i32 7
  %131 = ptrtoint ptr %platform_data279 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %arrayidx80, ptr %platform_data279, align 4
  %132 = load ptr, ptr %acp_cell, align 4
  %pdata_size283 = getelementptr %struct.mfd_cell, ptr %132, i32 3, i32 8
  %133 = ptrtoint ptr %pdata_size283 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 44, ptr %pdata_size283, align 8
  %134 = ptrtoint ptr %acp to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %acp, align 4
  %136 = load ptr, ptr %acp_cell, align 4
  %call.i = tail call i32 @mfd_add_devices(ptr noundef %135, i32 noundef -2, ptr noundef %136, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool288.not = icmp eq i32 %call.i, 0
  br i1 %tobool288.not, label %if.end290, label %if.end57.failure_crit_edge

if.end57.failure_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure

if.end290:                                        ; preds = %if.end57
  %137 = ptrtoint ptr %acp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %acp, align 4
  %139 = ptrtoint ptr %acp_genpd to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %acp_genpd, align 4
  %gpd295 = getelementptr inbounds %struct.acp_pm_domain, ptr %140, i32 0, i32 1
  %call296 = tail call i32 @device_for_each_child(ptr noundef %138, ptr noundef %gpd295, ptr noundef nonnull @acp_genpd_add_device) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %if.end299, label %if.end290.failure_crit_edge

if.end290.failure_crit_edge:                      ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure

if.end299:                                        ; preds = %if.end290
  %141 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cgs_device, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %call304 = tail call i32 %146(ptr noundef %142, i32 noundef 20788) #5
  %or305 = or i32 %call304, 256
  %147 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cgs_device, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write_register, align 4
  tail call void %152(ptr noundef %148, i32 noundef 20788, i32 noundef %or305) #5
  %153 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cgs_device, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %call317533 = tail call i32 %158(ptr noundef %154, i32 noundef 20788) #5
  %and534 = and i32 %call317533, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and534)
  %cmp318.not535 = icmp eq i32 %and534, 0
  br i1 %cmp318.not535, label %if.end299.if.end321_crit_edge, label %if.end299.while.end_crit_edge

if.end299.while.end_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end299.if.end321_crit_edge:                    ; preds = %if.end299
  br label %if.end321

if.end321:                                        ; preds = %if.end325.if.end321_crit_edge, %if.end299.if.end321_crit_edge
  %count.0536 = phi i32 [ %dec, %if.end325.if.end321_crit_edge ], [ 255, %if.end299.if.end321_crit_edge ]
  %dec = add nsw i32 %count.0536, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp322 = icmp eq i32 %dec, 0
  br i1 %cmp322, label %if.end321.failure.sink.split_crit_edge, label %if.end325

if.end321.failure.sink.split_crit_edge:           ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure.sink.split

if.end325:                                        ; preds = %if.end321
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 21474800) #5
  %160 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cgs_device, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %call317 = tail call i32 %165(ptr noundef %161, i32 noundef 20788) #5
  %and = and i32 %call317, 16777216
  %cmp318.not = icmp eq i32 %and, 0
  br i1 %cmp318.not, label %if.end325.if.end321_crit_edge, label %if.end325.while.end_crit_edge

if.end325.while.end_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end325.if.end321_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end321

while.end:                                        ; preds = %if.end325.while.end_crit_edge, %if.end299.while.end_crit_edge
  %166 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cgs_device, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %call332 = tail call i32 %171(ptr noundef %167, i32 noundef 20785) #5
  %or333 = or i32 %call332, 1
  %172 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cgs_device, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %write_register337 = getelementptr inbounds %struct.cgs_ops, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %write_register337 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write_register337, align 4
  tail call void %177(ptr noundef %173, i32 noundef 20785, i32 noundef %or333) #5
  %178 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cgs_device, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %call348537 = tail call i32 %183(ptr noundef %179, i32 noundef 20787) #5
  %and349538 = and i32 %call348537, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349538)
  %tobool350.not539 = icmp eq i32 %and349538, 0
  br i1 %tobool350.not539, label %while.end.if.end352_crit_edge, label %while.end.while.end363_crit_edge

while.end.while.end363_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end363

while.end.if.end352_crit_edge:                    ; preds = %while.end
  br label %if.end352

if.end352:                                        ; preds = %if.end362.if.end352_crit_edge, %while.end.if.end352_crit_edge
  %count.1540 = phi i32 [ %dec353, %if.end362.if.end352_crit_edge ], [ 255, %while.end.if.end352_crit_edge ]
  %dec353 = add nsw i32 %count.1540, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec353)
  %cmp354 = icmp eq i32 %dec353, 0
  br i1 %cmp354, label %if.end352.failure.sink.split_crit_edge, label %if.end362

if.end352.failure.sink.split_crit_edge:           ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure.sink.split

if.end362:                                        ; preds = %if.end352
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 21474800) #5
  %185 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cgs_device, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %call348 = tail call i32 %190(ptr noundef %186, i32 noundef 20787) #5
  %and349 = and i32 %call348, 1
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %if.end362.if.end352_crit_edge, label %if.end362.while.end363_crit_edge

if.end362.while.end363_crit_edge:                 ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end363

if.end362.if.end352_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end352

while.end363:                                     ; preds = %if.end362.while.end363_crit_edge, %while.end.while.end363_crit_edge
  %191 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cgs_device, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %call370 = tail call i32 %196(ptr noundef %192, i32 noundef 20788) #5
  %and371 = and i32 %call370, -257
  %197 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cgs_device, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %write_register375 = getelementptr inbounds %struct.cgs_ops, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %write_register375 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write_register375, align 4
  tail call void %202(ptr noundef %198, i32 noundef 20788, i32 noundef %and371) #5
  br label %cleanup

failure.sink.split:                               ; preds = %if.end352.failure.sink.split_crit_edge, %if.end321.failure.sink.split_crit_edge
  %pdev360 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %203 = ptrtoint ptr %pdev360 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev360, align 4
  %dev361 = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev361, ptr noundef nonnull @.str.9) #9
  br label %failure

failure:                                          ; preds = %failure.sink.split, %if.end290.failure_crit_edge, %if.end57.failure_crit_edge, %if.end52.failure_crit_edge, %if.end44.failure_crit_edge, %if.end21.failure_crit_edge
  %r.0 = phi i32 [ %call.i, %if.end57.failure_crit_edge ], [ %call296, %if.end290.failure_crit_edge ], [ -12, %if.end21.failure_crit_edge ], [ -12, %if.end44.failure_crit_edge ], [ -12, %if.end52.failure_crit_edge ], [ -110, %failure.sink.split ]
  %i2s_pdata.0 = phi ptr [ %call7.i.i.i529, %if.end57.failure_crit_edge ], [ %call7.i.i.i529, %if.end290.failure_crit_edge ], [ null, %if.end21.failure_crit_edge ], [ null, %if.end44.failure_crit_edge ], [ null, %if.end52.failure_crit_edge ], [ %call7.i.i.i529, %failure.sink.split ]
  tail call void @kfree(ptr noundef %i2s_pdata.0) #5
  %acp_res379 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 4
  %205 = ptrtoint ptr %acp_res379 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %acp_res379, align 4
  tail call void @kfree(ptr noundef %206) #5
  %207 = ptrtoint ptr %acp_cell to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %acp_cell, align 4
  tail call void @kfree(ptr noundef %208) #5
  %209 = ptrtoint ptr %acp_genpd to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %acp_genpd, align 4
  tail call void @kfree(ptr noundef %210) #5
  br label %cleanup

cleanup:                                          ; preds = %failure, %while.end363, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %r.0, %failure ], [ 0, %while.end363 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acp = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3
  %acp_genpd = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %acp_genpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acp_genpd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 10, i1 noundef zeroext false) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cgs_device = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cgs_device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef 20788) #5
  %or = or i32 %call4, 256
  %8 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cgs_device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void %13(ptr noundef %9, i32 noundef 20788, i32 noundef %or) #5
  %14 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cgs_device, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call1695 = tail call i32 %19(ptr noundef %15, i32 noundef 20788) #5
  %and96 = and i32 %call1695, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %cmp.not97 = icmp eq i32 %and96, 0
  br i1 %cmp.not97, label %if.end.if.end18_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.if.end18_crit_edge:                        ; preds = %if.end
  br label %if.end18

if.end18:                                         ; preds = %if.end21.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %count.098 = phi i32 [ %dec, %if.end21.if.end18_crit_edge ], [ 255, %if.end.if.end18_crit_edge ]
  %dec = add nsw i32 %count.098, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp19 = icmp eq i32 %dec, 0
  br i1 %cmp19, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #5
  %23 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cgs_device, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call16 = tail call i32 %28(ptr noundef %24, i32 noundef 20788) #5
  %and = and i32 %call16, 16777216
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end21.if.end18_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end21.if.end18_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %if.end.while.end_crit_edge
  %29 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cgs_device, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call28 = tail call i32 %34(ptr noundef %30, i32 noundef 20785) #5
  %and29 = and i32 %call28, -2
  %35 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cgs_device, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %write_register33 = getelementptr inbounds %struct.cgs_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_register33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register33, align 4
  tail call void %40(ptr noundef %36, i32 noundef 20785, i32 noundef %and29) #5
  %41 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cgs_device, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call4499 = tail call i32 %46(ptr noundef %42, i32 noundef 20787) #5
  %and45100 = and i32 %call4499, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45100)
  %tobool46.not101 = icmp eq i32 %and45100, 0
  br i1 %tobool46.not101, label %while.end.if.end48_crit_edge, label %while.end.while.end58_crit_edge

while.end.while.end58_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end58

while.end.if.end48_crit_edge:                     ; preds = %while.end
  br label %if.end48

if.end48:                                         ; preds = %if.end57.if.end48_crit_edge, %while.end.if.end48_crit_edge
  %count.1102 = phi i32 [ %dec49, %if.end57.if.end48_crit_edge ], [ 255, %while.end.if.end48_crit_edge ]
  %dec49 = add nsw i32 %count.1102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49)
  %cmp50 = icmp eq i32 %dec49, 0
  br i1 %cmp50, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %pdev55 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %47 = ptrtoint ptr %pdev55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 21474800) #5
  %50 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cgs_device, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call44 = tail call i32 %55(ptr noundef %51, i32 noundef 20787) #5
  %and45 = and i32 %call44, 1
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end57.if.end48_crit_edge, label %if.end57.while.end58_crit_edge

if.end57.while.end58_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end58

if.end57.if.end48_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

while.end58:                                      ; preds = %if.end57.while.end58_crit_edge, %while.end.while.end58_crit_edge
  %56 = ptrtoint ptr %acp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %acp, align 4
  %call60 = tail call i32 @device_for_each_child(ptr noundef %57, ptr noundef null, ptr noundef nonnull @acp_genpd_remove_device) #5
  %58 = ptrtoint ptr %acp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %acp, align 4
  tail call void @mfd_remove_devices(ptr noundef %59) #5
  %acp_res = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 4
  %60 = ptrtoint ptr %acp_res to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %acp_res, align 4
  tail call void @kfree(ptr noundef %61) #5
  %62 = ptrtoint ptr %acp_genpd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %acp_genpd, align 4
  tail call void @kfree(ptr noundef %63) #5
  %acp_cell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 3
  %64 = ptrtoint ptr %acp_cell to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %acp_cell, align 4
  tail call void @kfree(ptr noundef %65) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end58, %do.end54, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %while.end58 ], [ -110, %do.end54 ], [ -110, %do.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acp_cell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %acp_cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acp_cell, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 10, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acp_cell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %acp_cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acp_cell, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 10, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @acp_is_idle(ptr nocapture noundef readnone %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @acp_wait_for_idle(ptr nocapture noundef readnone %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @acp_soft_reset(ptr nocapture noundef readnone %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @acp_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_set_powergating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 10, i1 noundef zeroext %cmp) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_cgs_create_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_cgs_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_device_ip_get_ip_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amd_acp_hw_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_poweroff(ptr noundef readonly %genpd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %genpd, i32 -8
  %cmp.not = icmp eq ptr %add.ptr, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %1, i32 noundef 10, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_poweron(ptr noundef readonly %genpd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %genpd, i32 -8
  %cmp.not = icmp eq ptr %add.ptr, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %1, i32 noundef 10, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_create_mapping(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_genpd_add_device(ptr noundef %dev, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_genpd_add_device(ptr noundef %data, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_genpd_remove_device(ptr noundef %dev, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_genpd_remove_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @acp_ip_block, !1, !"acp_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 549, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 533, i32 10}
!4 = !{ptr @acp_ip_funcs, !5, !"acp_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 532, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 229, i32 34}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 300, i32 30}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 305, i32 30}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 310, i32 30}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 315, i32 30}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 320, i32 30}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 325, i32 31}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 331, i32 31}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 372, i32 4}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @acp_hw_init._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @acp_hw_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @acp_hw_init._entry.14, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 390, i32 4}
!32 = !{ptr @acp_hw_init._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 170, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @acp_genpd_add_device._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @acp_genpd_add_device._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 441, i32 4}
!40 = !{ptr @acp_hw_fini._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @acp_hw_fini._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @acp_hw_fini._entry.19, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 458, i32 4}
!44 = !{ptr @acp_hw_fini._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c", i32 181, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @acp_genpd_remove_device._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @acp_genpd_remove_device._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
