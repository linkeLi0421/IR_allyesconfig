; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.amdgpu_vcn_decode_buffer = type { i32, i32, i32, [30 x i32] }

@__UNIQUE_ID_firmware343 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/raven_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/picasso_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/raven2_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/arcturus_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/renoir_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [45 x i8] c"amdgpu.firmware=amdgpu/green_sardine_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/aldebaran_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi10_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi14_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi12_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [46 x i8] c"amdgpu.firmware=amdgpu/sienna_cichlid_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [45 x i8] c"amdgpu.firmware=amdgpu/navy_flounder_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/vangogh_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [48 x i8] c"amdgpu.firmware=amdgpu/dimgrey_cavefish_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/beige_goby_vcn.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/yellow_carp_vcn.bin\00", section ".modinfo", align 1
@amdgpu_vcn_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&adev->vcn.idle_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&adev->vcn.idle_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&adev->vcn.vcn_pg_lock\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&adev->vcn.vcn1_jpeg1_workaround\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/raven2_vcn.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/picasso_vcn.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/raven_vcn.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu/arcturus_vcn.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/renoir_vcn.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu/green_sardine_vcn.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/aldebaran_vcn.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/navi10_vcn.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/navi12_vcn.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/navi14_vcn.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu/sienna_cichlid_vcn.bin\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu/navy_flounder_vcn.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/vangogh_vcn.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu/dimgrey_cavefish_vcn.bin\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu/beige_goby_vcn.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu/yellow_carp_vcn.bin\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 175, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: amdgpu_vcn: Can't load firmware \22%s\22\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu_vcn_sw_init\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init._entry_ptr = internal global ptr @amdgpu_vcn_sw_init._entry, section ".printk_index", align 4
@amdgpu_vcn_sw_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.25, i32 182, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: amdgpu_vcn: Can't validate firmware \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init._entry_ptr.30 = internal global ptr @amdgpu_vcn_sw_init._entry.28, section ".printk_index", align 4
@amdgpu_vcn_sw_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.25, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016[drm] Found VCN firmware Version ENC: %u.%u DEC: %u VEP: %u Revision: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init._entry_ptr.33 = internal global ptr @amdgpu_vcn_sw_init._entry.31, section ".printk_index", align 4
@amdgpu_vcn_sw_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.25, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016[drm] Found VCN firmware Version: %u.%u Family ID: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init._entry_ptr.36 = internal global ptr @amdgpu_vcn_sw_init._entry.34, section ".printk_index", align 4
@amdgpu_vcn_sw_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.25, i32 231, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: (%d) failed to allocate vcn bo\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init._entry_ptr.39 = internal global ptr @amdgpu_vcn_sw_init._entry.37, section ".printk_index", align 4
@amdgpu_vcn_sw_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.25, i32 245, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: VCN %d (%d) failed to allocate DPG bo\0A\00", [49 x i8] zeroinitializer }, align 32
@amdgpu_vcn_sw_init._entry_ptr.42 = internal global ptr @amdgpu_vcn_sw_init._entry.40, section ".printk_index", align 4
@amdgpu_vcn_ring_begin_use._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.25, i32 429, ptr @.str.45, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: (%d) failed to switch to video power profile mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_vcn_ring_begin_use\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_vcn_ring_begin_use._entry_ptr = internal global ptr @amdgpu_vcn_ring_begin_use._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amdgpu_vcn_setup_ucode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.25, i32 962, ptr @.str.48, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: More then 2 VCN FW instances!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_vcn_setup_ucode\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_vcn_setup_ucode._entry_ptr = internal global ptr @amdgpu_vcn_setup_ucode._entry, section ".printk_index", align 4
@amdgpu_vcn_setup_ucode._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.25, i32 971, ptr @.str.48, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Will use PSP to load VCN firmware\0A\00", [53 x i8] zeroinitializer }, align 32
@amdgpu_vcn_setup_ucode._entry_ptr.51 = internal global ptr @amdgpu_vcn_setup_ucode._entry.49, section ".printk_index", align 4
@amdgpu_vcn_idle_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.25, i32 412, ptr @.str.45, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: (%d) failed to disable video power profile mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu_vcn_idle_work_handler\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_vcn_idle_work_handler._entry_ptr = internal global ptr @amdgpu_vcn_idle_work_handler._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 65536, i64 65537, i64 131072, i64 131074, i64 131584, i64 132352, i64 132608, i64 196608, i64 196610, i64 196624, i64 196641, i64 196672, i64 196800, i64 196865]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 82, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 83, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 84, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 93, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 95, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 97, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 100, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 107, i32 14 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 109, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 116, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 122, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 129, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 131, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 140, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 142, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 148, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 151, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 157, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 163, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 174, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 181, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 206, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 214, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 231, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 245, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 429, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 962, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 971, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 412, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 314, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @amdgpu_vcn_idle_work_handler._entry, ptr @amdgpu_vcn_idle_work_handler._entry_ptr, ptr @amdgpu_vcn_ring_begin_use._entry, ptr @amdgpu_vcn_ring_begin_use._entry_ptr, ptr @amdgpu_vcn_setup_ucode._entry, ptr @amdgpu_vcn_setup_ucode._entry.49, ptr @amdgpu_vcn_setup_ucode._entry_ptr, ptr @amdgpu_vcn_setup_ucode._entry_ptr.51, ptr @amdgpu_vcn_sw_init._entry, ptr @amdgpu_vcn_sw_init._entry.28, ptr @amdgpu_vcn_sw_init._entry.31, ptr @amdgpu_vcn_sw_init._entry.34, ptr @amdgpu_vcn_sw_init._entry.37, ptr @amdgpu_vcn_sw_init._entry.40, ptr @amdgpu_vcn_sw_init._entry_ptr, ptr @amdgpu_vcn_sw_init._entry_ptr.30, ptr @amdgpu_vcn_sw_init._entry_ptr.33, ptr @amdgpu_vcn_sw_init._entry_ptr.36, ptr @amdgpu_vcn_sw_init._entry_ptr.39, ptr @amdgpu_vcn_sw_init._entry_ptr.42, ptr @amdgpu_vcn_sw_init.__key, ptr @.str, ptr @amdgpu_vcn_sw_init.__key.1, ptr @.str.2, ptr @amdgpu_vcn_sw_init.__key.3, ptr @.str.4, ptr @amdgpu_vcn_sw_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_sw_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_ring_begin_use._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_setup_ucode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_setup_ucode._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vcn_idle_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_sw_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vcn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 1
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #9
  %0 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %idle_work, align 4
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_vcn_sw_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @amdgpu_vcn_idle_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @amdgpu_vcn_sw_init.__key.1) #9
  %vcn_pg_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 10
  tail call void @__mutex_init(ptr noundef %vcn_pg_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @amdgpu_vcn_sw_init.__key.3) #9
  %vcn1_jpeg1_workaround = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 11
  tail call void @__mutex_init(ptr noundef %vcn1_jpeg1_workaround, ptr noundef nonnull @.str.6, ptr noundef nonnull @amdgpu_vcn_sw_init.__key.5) #9
  %total_submission_cnt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_submission_cnt, i32 noundef 4) #9
  %4 = ptrtoint ptr %total_submission_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %total_submission_cnt, align 4
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %5 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_vcn_inst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp438.not = icmp eq i8 %6, 0
  br i1 %cmp438.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0439 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dpg_enc_submission_cnt = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.0439, i32 14
  %call.i.i433 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dpg_enc_submission_cnt, i32 noundef 4) #9
  %7 = ptrtoint ptr %dpg_enc_submission_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %dpg_enc_submission_cnt, align 4
  %inc = add nuw nsw i32 %i.0439, 1
  %8 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_vcn_inst, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx34 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx34, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %for.end.cleanup_crit_edge [
    i32 65536, label %for.end.sw.bb_crit_edge
    i32 65537, label %for.end.sw.bb_crit_edge459
    i32 132352, label %sw.bb42
    i32 131584, label %sw.bb50
    i32 132608, label %sw.bb69
    i32 131072, label %sw.bb82
    i32 131074, label %sw.bb95
    i32 196608, label %for.end.sw.bb113_crit_edge
    i32 196672, label %for.end.sw.bb113_crit_edge460
    i32 196800, label %for.end.sw.bb113_crit_edge461
    i32 196610, label %for.end.sw.epilog_crit_edge
    i32 196624, label %sw.bb135
    i32 196641, label %sw.bb148
    i32 196865, label %sw.bb161
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.sw.bb113_crit_edge461:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb113

for.end.sw.bb113_crit_edge460:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb113

for.end.sw.bb113_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb113

for.end.sw.bb_crit_edge459:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.end.sw.bb_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %for.end.sw.bb_crit_edge, %for.end.sw.bb_crit_edge459
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %13 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %apu_flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %and37 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %.str.9..str.8 = select i1 %tobool38.not, ptr @.str.9, ptr @.str.8
  br label %sw.epilog

sw.bb42:                                          ; preds = %for.end
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %15 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp43 = icmp eq i32 %16, 2
  br i1 %cmp43, label %land.lhs.true, label %sw.bb42.sw.epilog_crit_edge

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb42
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %17 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pg_flags, align 4
  %and45 = and i32 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then47

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %19 = ptrtoint ptr %indirect_sram to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %indirect_sram, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %for.end
  %apu_flags51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %20 = ptrtoint ptr %apu_flags51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %apu_flags51, align 4
  %and52 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %.str.12..str.11 = select i1 %tobool53.not, ptr @.str.12, ptr @.str.11
  %load_type58 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %22 = ptrtoint ptr %load_type58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %load_type58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp59 = icmp eq i32 %23, 2
  br i1 %cmp59, label %land.lhs.true61, label %sw.bb50.sw.epilog_crit_edge

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true61:                                  ; preds = %sw.bb50
  %pg_flags62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %24 = ptrtoint ptr %pg_flags62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pg_flags62, align 4
  %and63 = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true61.sw.epilog_crit_edge, label %if.then65

land.lhs.true61.sw.epilog_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then65:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram67 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %26 = ptrtoint ptr %indirect_sram67 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %indirect_sram67, align 4
  br label %sw.epilog

sw.bb69:                                          ; preds = %for.end
  %load_type71 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %27 = ptrtoint ptr %load_type71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %load_type71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp72 = icmp eq i32 %28, 2
  br i1 %cmp72, label %land.lhs.true74, label %sw.bb69.sw.epilog_crit_edge

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true74:                                  ; preds = %sw.bb69
  %pg_flags75 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %29 = ptrtoint ptr %pg_flags75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pg_flags75, align 4
  %and76 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.lhs.true74.sw.epilog_crit_edge, label %if.then78

land.lhs.true74.sw.epilog_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then78:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram80 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %31 = ptrtoint ptr %indirect_sram80 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %indirect_sram80, align 4
  br label %sw.epilog

sw.bb82:                                          ; preds = %for.end
  %load_type84 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %32 = ptrtoint ptr %load_type84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %load_type84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp85 = icmp eq i32 %33, 2
  br i1 %cmp85, label %land.lhs.true87, label %sw.bb82.sw.epilog_crit_edge

sw.bb82.sw.epilog_crit_edge:                      ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true87:                                  ; preds = %sw.bb82
  %pg_flags88 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %34 = ptrtoint ptr %pg_flags88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pg_flags88, align 4
  %and89 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %land.lhs.true87.sw.epilog_crit_edge, label %if.then91

land.lhs.true87.sw.epilog_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then91:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram93 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %36 = ptrtoint ptr %indirect_sram93 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %indirect_sram93, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %for.end
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %37 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %38)
  %cmp96 = icmp eq i32 %38, 29
  %.str.15..str.16 = select i1 %cmp96, ptr @.str.15, ptr @.str.16
  %load_type102 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %39 = ptrtoint ptr %load_type102 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %load_type102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp103 = icmp eq i32 %40, 2
  br i1 %cmp103, label %land.lhs.true105, label %sw.bb95.sw.epilog_crit_edge

sw.bb95.sw.epilog_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true105:                                 ; preds = %sw.bb95
  %pg_flags106 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %41 = ptrtoint ptr %pg_flags106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pg_flags106, align 4
  %and107 = and i32 %42, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %land.lhs.true105.sw.epilog_crit_edge, label %if.then109

land.lhs.true105.sw.epilog_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then109:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram111 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %43 = ptrtoint ptr %indirect_sram111 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %indirect_sram111, align 4
  br label %sw.epilog

sw.bb113:                                         ; preds = %for.end.sw.bb113_crit_edge, %for.end.sw.bb113_crit_edge460, %for.end.sw.bb113_crit_edge461
  %arrayidx115 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %44 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 656128, i32 %45)
  %cmp117 = icmp eq i32 %45, 656128
  %.str.17..str.18 = select i1 %cmp117, ptr @.str.17, ptr @.str.18
  %load_type123 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %46 = ptrtoint ptr %load_type123 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %load_type123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp124 = icmp eq i32 %47, 2
  br i1 %cmp124, label %land.lhs.true126, label %sw.bb113.sw.epilog_crit_edge

sw.bb113.sw.epilog_crit_edge:                     ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true126:                                 ; preds = %sw.bb113
  %pg_flags127 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %48 = ptrtoint ptr %pg_flags127 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pg_flags127, align 4
  %and128 = and i32 %49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %land.lhs.true126.sw.epilog_crit_edge, label %if.then130

land.lhs.true126.sw.epilog_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then130:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram132 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %50 = ptrtoint ptr %indirect_sram132 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %indirect_sram132, align 4
  br label %sw.epilog

sw.bb135:                                         ; preds = %for.end
  %load_type137 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %51 = ptrtoint ptr %load_type137 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %load_type137, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp138 = icmp eq i32 %52, 2
  br i1 %cmp138, label %land.lhs.true140, label %sw.bb135.sw.epilog_crit_edge

sw.bb135.sw.epilog_crit_edge:                     ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true140:                                 ; preds = %sw.bb135
  %pg_flags141 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %53 = ptrtoint ptr %pg_flags141 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pg_flags141, align 4
  %and142 = and i32 %54, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %land.lhs.true140.sw.epilog_crit_edge, label %if.then144

land.lhs.true140.sw.epilog_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then144:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram146 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %55 = ptrtoint ptr %indirect_sram146 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %indirect_sram146, align 4
  br label %sw.epilog

sw.bb148:                                         ; preds = %for.end
  %load_type150 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %56 = ptrtoint ptr %load_type150 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %load_type150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp151 = icmp eq i32 %57, 2
  br i1 %cmp151, label %land.lhs.true153, label %sw.bb148.sw.epilog_crit_edge

sw.bb148.sw.epilog_crit_edge:                     ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true153:                                 ; preds = %sw.bb148
  %pg_flags154 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %58 = ptrtoint ptr %pg_flags154 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pg_flags154, align 4
  %and155 = and i32 %59, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %land.lhs.true153.sw.epilog_crit_edge, label %if.then157

land.lhs.true153.sw.epilog_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then157:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram159 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %60 = ptrtoint ptr %indirect_sram159 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %indirect_sram159, align 4
  br label %sw.epilog

sw.bb161:                                         ; preds = %for.end
  %load_type163 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %61 = ptrtoint ptr %load_type163 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %load_type163, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp164 = icmp eq i32 %62, 2
  br i1 %cmp164, label %land.lhs.true166, label %sw.bb161.sw.epilog_crit_edge

sw.bb161.sw.epilog_crit_edge:                     ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true166:                                 ; preds = %sw.bb161
  %pg_flags167 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %63 = ptrtoint ptr %pg_flags167 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pg_flags167, align 4
  %and168 = and i32 %64, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %land.lhs.true166.sw.epilog_crit_edge, label %if.then170

land.lhs.true166.sw.epilog_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then170:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_sram172 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %65 = ptrtoint ptr %indirect_sram172 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %indirect_sram172, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then170, %land.lhs.true166.sw.epilog_crit_edge, %sw.bb161.sw.epilog_crit_edge, %if.then157, %land.lhs.true153.sw.epilog_crit_edge, %sw.bb148.sw.epilog_crit_edge, %if.then144, %land.lhs.true140.sw.epilog_crit_edge, %sw.bb135.sw.epilog_crit_edge, %if.then130, %land.lhs.true126.sw.epilog_crit_edge, %sw.bb113.sw.epilog_crit_edge, %if.then109, %land.lhs.true105.sw.epilog_crit_edge, %sw.bb95.sw.epilog_crit_edge, %if.then91, %land.lhs.true87.sw.epilog_crit_edge, %sw.bb82.sw.epilog_crit_edge, %if.then78, %land.lhs.true74.sw.epilog_crit_edge, %sw.bb69.sw.epilog_crit_edge, %if.then65, %land.lhs.true61.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %if.then47, %land.lhs.true.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge, %if.else, %sw.bb.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  %fw_name.3 = phi ptr [ @.str.22, %if.then170 ], [ @.str.22, %land.lhs.true166.sw.epilog_crit_edge ], [ @.str.22, %sw.bb161.sw.epilog_crit_edge ], [ @.str.21, %if.then157 ], [ @.str.21, %land.lhs.true153.sw.epilog_crit_edge ], [ @.str.21, %sw.bb148.sw.epilog_crit_edge ], [ @.str.20, %if.then144 ], [ @.str.20, %land.lhs.true140.sw.epilog_crit_edge ], [ @.str.20, %sw.bb135.sw.epilog_crit_edge ], [ %.str.17..str.18, %if.then130 ], [ %.str.17..str.18, %land.lhs.true126.sw.epilog_crit_edge ], [ %.str.17..str.18, %sw.bb113.sw.epilog_crit_edge ], [ %.str.15..str.16, %if.then109 ], [ %.str.15..str.16, %land.lhs.true105.sw.epilog_crit_edge ], [ %.str.15..str.16, %sw.bb95.sw.epilog_crit_edge ], [ @.str.14, %if.then91 ], [ @.str.14, %land.lhs.true87.sw.epilog_crit_edge ], [ @.str.14, %sw.bb82.sw.epilog_crit_edge ], [ @.str.13, %if.then78 ], [ @.str.13, %land.lhs.true74.sw.epilog_crit_edge ], [ @.str.13, %sw.bb69.sw.epilog_crit_edge ], [ %.str.12..str.11, %if.then65 ], [ %.str.12..str.11, %land.lhs.true61.sw.epilog_crit_edge ], [ %.str.12..str.11, %sw.bb50.sw.epilog_crit_edge ], [ @.str.10, %if.then47 ], [ @.str.10, %land.lhs.true.sw.epilog_crit_edge ], [ @.str.10, %sw.bb42.sw.epilog_crit_edge ], [ @.str.7, %sw.bb.sw.epilog_crit_edge ], [ %.str.9..str.8, %if.else ], [ @.str.19, %for.end.sw.epilog_crit_edge ]
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 2
  %66 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adev, align 8
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %fw_name.3, ptr noundef %67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool175.not = icmp eq i32 %call, 0
  br i1 %tobool175.not, label %if.end181, label %do.end179

do.end179:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.23, ptr noundef nonnull %fw_name.3) #12
  br label %cleanup

if.end181:                                        ; preds = %sw.epilog
  %70 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw, align 8
  %call184 = tail call i32 @amdgpu_ucode_validate(ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end195, label %do.end189

do.end189:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.29, ptr noundef nonnull %fw_name.3) #12
  %74 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %75) #9
  %76 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %fw, align 8
  br label %cleanup

if.end195:                                        ; preds = %if.end181
  %77 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fw, align 8
  %data198 = getelementptr inbounds %struct.firmware, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %data198 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data198, align 4
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ucode_version, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %vcn, align 8
  %85 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ucode_version, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %shr = lshr i32 %87, 20
  %88 = trunc i32 %shr to i8
  %conv202 = and i8 %88, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv202)
  %tobool203.not = icmp eq i8 %conv202, 0
  br i1 %tobool203.not, label %if.else221, label %if.then204

if.then204:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  %and206 = and i32 %87, 4095
  %shr208 = lshr i32 %87, 12
  %and209 = and i32 %shr208, 255
  %conv210 = zext i8 %conv202 to i32
  %shr212 = lshr i32 %87, 24
  %and213 = and i32 %shr212, 15
  %shr215 = lshr i32 %87, 28
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv210, i32 noundef %and209, i32 noundef %and213, i32 noundef %shr215, i32 noundef %and206) #12
  br label %if.end235

if.else221:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  %and223 = and i32 %87, 255
  %shr225 = lshr i32 %87, 24
  %shr228 = lshr i32 %87, 8
  %and229 = and i32 %shr228, 255
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %shr225, i32 noundef %and229, i32 noundef %and223) #12
  br label %if.end235

if.end235:                                        ; preds = %if.else221, %if.then204
  %load_type237 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %89 = ptrtoint ptr %load_type237 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %load_type237, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp238.not = icmp eq i32 %90, 2
  br i1 %cmp238.not, label %if.end235.if.end244_crit_edge, label %if.then240

if.end235.if.end244_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end244

if.then240:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %80, i32 0, i32 7
  %91 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ucode_size_bytes, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %94 = add i32 %93, 663559
  %phi.bo = and i32 %94, -4096
  br label %if.end244

if.end244:                                        ; preds = %if.then240, %if.end235.if.end244_crit_edge
  %bo_size.0 = phi i32 [ %phi.bo, %if.then240 ], [ 659456, %if.end235.if.end244_crit_edge ]
  %95 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_vcn_inst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp250441.not = icmp eq i8 %96, 0
  br i1 %cmp250441.not, label %if.end244.cleanup_crit_edge, label %for.body252.lr.ph

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body252.lr.ph:                                ; preds = %if.end244
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 13
  %conv287 = zext i32 %bo_size.0 to i64
  %add288 = add nsw i64 %conv287, -4096
  %indirect_sram293 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  br label %for.body252

for.body252:                                      ; preds = %for.inc314.for.body252_crit_edge, %for.body252.lr.ph
  %i.1442 = phi i32 [ 0, %for.body252.lr.ph ], [ %inc315, %for.inc314.for.body252_crit_edge ]
  %97 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.1442
  %and254 = and i32 %98, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %if.end257, label %for.body252.for.inc314_crit_edge

for.body252.for.inc314_crit_edge:                 ; preds = %for.body252
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc314

if.end257:                                        ; preds = %for.body252
  %arrayidx260 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442
  %gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442, i32 2
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442, i32 1
  %call267 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %bo_size.0, i32 noundef 4096, i32 noundef 4, ptr noundef %arrayidx260, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end274, label %do.end272

do.end272:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.38, i32 noundef %call267) #12
  br label %cleanup

if.end274:                                        ; preds = %if.end257
  %101 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cpu_addr, align 4
  %add.ptr = getelementptr i8, ptr %102, i32 %bo_size.0
  %add.ptr279 = getelementptr i8, ptr %add.ptr, i32 -4096
  %fw_shared_cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442, i32 15
  %103 = ptrtoint ptr %fw_shared_cpu_addr to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr279, ptr %fw_shared_cpu_addr, align 8
  %104 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %gpu_addr, align 8
  %sub = add i64 %add288, %105
  %fw_shared_gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442, i32 16
  %106 = ptrtoint ptr %fw_shared_gpu_addr to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %sub, ptr %fw_shared_gpu_addr, align 8
  %107 = ptrtoint ptr %indirect_sram293 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %indirect_sram293, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool294.not = icmp eq i8 %108, 0
  br i1 %tobool294.not, label %if.end274.for.inc314_crit_edge, label %if.then295

if.end274.for.inc314_crit_edge:                   ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc314

if.then295:                                       ; preds = %if.end274
  %dpg_sram_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442, i32 9
  %dpg_sram_gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442, i32 12
  %dpg_sram_cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.1442, i32 11
  %call305 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef 512, i32 noundef 4096, i32 noundef 4, ptr noundef %dpg_sram_bo, ptr noundef %dpg_sram_gpu_addr, ptr noundef %dpg_sram_cpu_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %if.then295.for.inc314_crit_edge, label %do.end310

if.then295.for.inc314_crit_edge:                  ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc314

do.end310:                                        ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.41, i32 noundef %i.1442, i32 noundef %call305) #12
  br label %cleanup

for.inc314:                                       ; preds = %if.then295.for.inc314_crit_edge, %if.end274.for.inc314_crit_edge, %for.body252.for.inc314_crit_edge
  %inc315 = add nuw nsw i32 %i.1442, 1
  %111 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_vcn_inst, align 1
  %conv249 = zext i8 %112 to i32
  %cmp250 = icmp ult i32 %inc315, %conv249
  br i1 %cmp250, label %for.inc314.for.body252_crit_edge, label %for.inc314.cleanup_crit_edge

for.inc314.cleanup_crit_edge:                     ; preds = %for.inc314
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc314.for.body252_crit_edge:                 ; preds = %for.inc314
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body252

cleanup:                                          ; preds = %for.inc314.cleanup_crit_edge, %do.end310, %do.end272, %if.end244.cleanup_crit_edge, %do.end189, %do.end179, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end179 ], [ %call184, %do.end189 ], [ %call267, %do.end272 ], [ %call305, %do.end310 ], [ -22, %for.end.cleanup_crit_edge ], [ 0, %if.end244.cleanup_crit_edge ], [ 0, %for.inc314.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vcn_idle_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %fence = alloca [2 x i32], align 8
  %new_state = alloca %struct.dpg_pause_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68812
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fence) #9
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %fence, align 8
  %num_vcn_inst = getelementptr i8, ptr %work, i32 113
  %1 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_vcn_inst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp87.not = icmp eq i8 %2, 0
  br i1 %cmp87.not, label %entry.land.lhs.true_crit_edge, label %for.body.lr.ph

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr i8, ptr %work, i32 7856
  %num_enc_rings = getelementptr i8, ptr %work, i32 104
  %inst = getelementptr i8, ptr %work, i32 116
  %pg_flags = getelementptr i8, ptr %work, i32 -36048
  %3 = getelementptr inbounds %struct.dpg_pause_state, ptr %new_state, i32 0, i32 1
  %pause_dpg_mode = getelementptr i8, ptr %work, i32 7860
  br label %for.body

for.body:                                         ; preds = %for.inc37.for.body_crit_edge, %for.body.lr.ph
  %j.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.inc37.for.body_crit_edge ]
  %fences.088 = phi i32 [ 0, %for.body.lr.ph ], [ %fences.1, %for.inc37.for.body_crit_edge ]
  %4 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %j.089
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond3.preheader, label %for.body.for.inc37_crit_edge

for.body.for.inc37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37

for.cond3.preheader:                              ; preds = %for.body
  %6 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp584.not = icmp eq i32 %7, 0
  br i1 %cmp584.not, label %for.cond3.preheader.for.end_crit_edge, label %for.body7.lr.ph

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %arrayidx = getelementptr [2 x %struct.amdgpu_vcn_inst], ptr %inst, i32 0, i32 %j.089
  %arrayidx10 = getelementptr [2 x i32], ptr %fence, i32 0, i32 %j.089
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %i.085 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %for.body7.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.amdgpu_vcn_inst, ptr %arrayidx, i32 0, i32 5, i32 %i.085
  %call = call i32 @amdgpu_fence_count_emitted(ptr noundef %arrayidx9) #9
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %add = add i32 %9, %call
  store i32 %add, ptr %arrayidx10, align 4
  %inc = add nuw i32 %i.085, 1
  %10 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_enc_rings, align 4
  %cmp5 = icmp ult i32 %inc, %11
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %12 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pg_flags, align 4
  %and11 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.end.if.end28_crit_edge, label %if.then13

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then13:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_state) #9
  %14 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %new_state, align 4, !annotation !136
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %3, align 4, !annotation !136
  %arrayidx14 = getelementptr [2 x i32], ptr %fence, i32 0, i32 %j.089
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.then13.if.end25_crit_edge

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

lor.lhs.false:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx18 = getelementptr [2 x %struct.amdgpu_vcn_inst], ptr %inst, i32 0, i32 %j.089
  %dpg_enc_submission_cnt = getelementptr inbounds %struct.amdgpu_vcn_inst, ptr %arrayidx18, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dpg_enc_submission_cnt, i32 noundef 4) #9
  %18 = ptrtoint ptr %dpg_enc_submission_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dpg_enc_submission_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp ne i32 %19, 0
  %spec.select = zext i1 %tobool20.not to i32
  br label %if.end25

if.end25:                                         ; preds = %lor.lhs.false, %if.then13.if.end25_crit_edge
  %storemerge = phi i32 [ 1, %if.then13.if.end25_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %20 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %new_state, align 4
  %21 = ptrtoint ptr %pause_dpg_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pause_dpg_mode, align 8
  %call27 = call i32 %22(ptr noundef %add.ptr, i32 noundef %j.089, ptr noundef nonnull %new_state) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_state) #9
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %for.end.if.end28_crit_edge
  %arrayidx31 = getelementptr [2 x %struct.amdgpu_vcn_inst], ptr %inst, i32 0, i32 %j.089
  %ring_dec = getelementptr inbounds %struct.amdgpu_vcn_inst, ptr %arrayidx31, i32 0, i32 4
  %call32 = call i32 @amdgpu_fence_count_emitted(ptr noundef %ring_dec) #9
  %arrayidx33 = getelementptr [2 x i32], ptr %fence, i32 0, i32 %j.089
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %24, %call32
  store i32 %add34, ptr %arrayidx33, align 4
  %add36 = add i32 %add34, %fences.088
  br label %for.inc37

for.inc37:                                        ; preds = %if.end28, %for.body.for.inc37_crit_edge
  %fences.1 = phi i32 [ %fences.088, %for.body.for.inc37_crit_edge ], [ %add36, %if.end28 ]
  %inc38 = add nuw nsw i32 %j.089, 1
  %25 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_vcn_inst, align 1
  %conv = zext i8 %26 to i32
  %cmp = icmp ult i32 %inc38, %conv
  br i1 %cmp, label %for.inc37.for.body_crit_edge, label %for.end39

for.inc37.for.body_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end39:                                        ; preds = %for.inc37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fences.1)
  %tobool40.not = icmp eq i32 %fences.1, 0
  br i1 %tobool40.not, label %for.end39.land.lhs.true_crit_edge, label %for.end39.if.else50_crit_edge

for.end39.if.else50_crit_edge:                    ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

for.end39.land.lhs.true_crit_edge:                ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end39.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %total_submission_cnt = getelementptr i8, ptr %work, i32 7852
  %call.i.i82 = call zeroext i1 @__kasan_check_read(ptr noundef %total_submission_cnt, i32 noundef 4) #9
  %27 = ptrtoint ptr %total_submission_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %total_submission_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool43.not = icmp eq i32 %28, 0
  br i1 %tobool43.not, label %if.then44, label %land.lhs.true.if.else50_crit_edge

land.lhs.true.if.else50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

if.then44:                                        ; preds = %land.lhs.true
  %call45 = call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %add.ptr, i32 noundef 11, i32 noundef 0) #9
  %call46 = call i32 @amdgpu_dpm_switch_power_profile(ptr noundef %add.ptr, i32 noundef 3, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then44.if.end54_crit_edge, label %do.end

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end:                                           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.52, i32 noundef %call46) #12
  br label %if.end54

if.else50:                                        ; preds = %land.lhs.true.if.else50_crit_edge, %for.end39.if.else50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i83 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work, i32 noundef 100) #9
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %do.end, %if.then44.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fence) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_sw_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %0 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_vcn_inst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp75.not = icmp eq i8 %1, 0
  br i1 %cmp75.not, label %entry.for.end40_crit_edge, label %for.body.lr.ph

entry.for.end40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 13
  %indirect_sram = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 5
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %for.body.lr.ph
  %j.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc38.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %j.076
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc38_crit_edge

for.body.for.inc38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %indirect_sram to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %indirect_sram, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dpg_sram_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 9
  %dpg_sram_gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 12
  %dpg_sram_cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 11
  tail call void @amdgpu_bo_free_kernel(ptr noundef %dpg_sram_bo, ptr noundef %dpg_sram_gpu_addr, ptr noundef %dpg_sram_cpu_addr) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end.if.end13_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076
  %saved_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 3
  %6 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %saved_bo, align 8
  tail call void @kvfree(ptr noundef %7) #9
  %gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 2
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 1
  tail call void @amdgpu_bo_free_kernel(ptr noundef %arrayidx16, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #9
  %ring_dec = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 4
  tail call void @amdgpu_ring_fini(ptr noundef %ring_dec) #9
  %8 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3172.not = icmp eq i32 %9, 0
  br i1 %cmp3172.not, label %if.end13.for.inc38_crit_edge, label %if.end13.for.body33_crit_edge

if.end13.for.body33_crit_edge:                    ; preds = %if.end13
  br label %for.body33

if.end13.for.inc38_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end13.for.body33_crit_edge
  %i.073 = phi i32 [ %inc, %for.body33.for.body33_crit_edge ], [ 0, %if.end13.for.body33_crit_edge ]
  %arrayidx37 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %j.076, i32 5, i32 %i.073
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx37) #9
  %inc = add nuw i32 %i.073, 1
  %10 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_enc_rings, align 4
  %cmp31 = icmp ult i32 %inc, %11
  br i1 %cmp31, label %for.body33.for.body33_crit_edge, label %for.body33.for.inc38_crit_edge

for.body33.for.inc38_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.inc38:                                        ; preds = %for.body33.for.inc38_crit_edge, %if.end13.for.inc38_crit_edge, %for.body.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %j.076, 1
  %12 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_vcn_inst, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc39, %conv
  br i1 %cmp, label %for.inc38.for.body_crit_edge, label %for.inc38.for.end40_crit_edge

for.inc38.for.end40_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end40:                                        ; preds = %for.inc38.for.end40_crit_edge, %entry.for.end40_crit_edge
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 2
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %15) #9
  %vcn1_jpeg1_workaround = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 11
  tail call void @mutex_destroy(ptr noundef %vcn1_jpeg1_workaround) #9
  %vcn_pg_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 10
  tail call void @mutex_destroy(ptr noundef %vcn_pg_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_vcn_is_disabled_vcn(ptr nocapture noundef readonly %adev, i32 noundef %type, i32 noundef %vcn_instance) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 8, i32 %vcn_instance
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp ne i32 %type, 0
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.else, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp3 = icmp ne i32 %type, 1
  %and6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond23 = select i1 %cmp3, i1 true, i1 %tobool7.not
  br i1 %or.cond23, label %if.else9, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp10 = icmp eq i32 %type, 2
  %and13 = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %or.cond24 = select i1 %cmp10, i1 %tobool14.not, i1 false
  br label %if.end17

if.end17:                                         ; preds = %if.else9, %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %ret.0.off0 = phi i1 [ true, %entry.if.end17_crit_edge ], [ true, %if.else.if.end17_crit_edge ], [ %or.cond24, %if.else9 ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_suspend(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !136
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #9
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %1 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_vcn_inst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp58.not = icmp eq i8 %2, 0
  br i1 %cmp58.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 13
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.059
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.059
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %6, i32 0, i32 4, i32 0, i32 5
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.059, i32 1
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr, align 4
  %call.i = call noalias ptr @kvmalloc_node(i32 noundef %8, i32 noundef 3264, i32 noundef -1) #13
  %saved_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.059, i32 3
  %11 = ptrtoint ptr %saved_bo to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %saved_bo, align 8
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end8.cleanup_crit_edge, label %if.end27

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end8
  %call29 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #9
  br i1 %call29, label %if.then30, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %saved_bo, align 8
  call void @mmiocpy(ptr noundef %13, ptr noundef %10, i32 noundef %8) #9
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %15) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.059, 1
  %16 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_vcn_inst, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_resume(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !136
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %1 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_vcn_inst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp93.not = icmp eq i8 %2, 0
  br i1 %cmp93.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 13
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 2
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.094
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.094
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %6, i32 0, i32 4, i32 0, i32 5
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.094, i32 1
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr, align 4
  %saved_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.094, i32 3
  %11 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %saved_bo, align 8
  %cmp18.not = icmp eq ptr %12, null
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end7
  %call22 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #9
  br i1 %call22, label %if.then23, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %saved_bo, align 8
  call void @mmiocpy(ptr noundef %10, ptr noundef %14, i32 noundef %8) #9
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %16) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then20.if.end28_crit_edge
  %17 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %saved_bo, align 8
  call void @kvfree(ptr noundef %18) #9
  %19 = ptrtoint ptr %saved_bo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %saved_bo, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end7
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp38.not = icmp eq i32 %25, 2
  br i1 %cmp38.not, label %if.else.if.end55_crit_edge, label %if.then40

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then40:                                        ; preds = %if.else
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ucode_array_offset_bytes, align 4
  %call42 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #9
  br i1 %call42, label %if.then43, label %if.then40.if.end51_crit_edge

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu_addr, align 4
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 8
  %data50 = getelementptr inbounds %struct.firmware, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data50, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %28
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %23, i32 0, i32 7
  %35 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ucode_size_bytes, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void @mmiocpy(ptr noundef %30, ptr noundef %add.ptr, i32 noundef %37) #9
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %39) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then40.if.end51_crit_edge
  %ucode_size_bytes52 = getelementptr inbounds %struct.common_firmware_header, ptr %23, i32 0, i32 7
  %40 = ptrtoint ptr %ucode_size_bytes52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ucode_size_bytes52, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %sub = sub i32 %8, %42
  %add.ptr54 = getelementptr i8, ptr %10, i32 %42
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.else.if.end55_crit_edge
  %size.0 = phi i32 [ %sub, %if.end51 ], [ %8, %if.else.if.end55_crit_edge ]
  %ptr.0 = phi ptr [ %add.ptr54, %if.end51 ], [ %10, %if.else.if.end55_crit_edge ]
  call void @mmioset(ptr noundef %ptr.0, i32 noundef 0, i32 noundef %size.0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %if.end28, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.094, 1
  %43 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_vcn_inst, align 1
  %conv = zext i8 %44 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vcn_ring_begin_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  %new_state = alloca %struct.dpg_pause_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %total_submission_cnt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_submission_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %total_submission_cnt, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_submission_cnt, ptr %total_submission_cnt, i32 1, ptr elementtype(i32) %total_submission_cnt) #9, !srcloc !137
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #9
  br i1 %call, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @amdgpu_dpm_switch_power_profile(ptr noundef %1, i32 noundef 3, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.43, i32 noundef %call3) #12
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %vcn_pg_lock = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vcn_pg_lock, i32 noundef 0) #9
  %call7 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %1, i32 noundef 11, i32 noundef 1) #9
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 100
  %5 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pg_flags, align 4
  %and = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end5.if.end37_crit_edge, label %if.then9

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then9:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_state) #9
  %7 = getelementptr inbounds %struct.dpg_pause_state, ptr %new_state, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !136
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp = icmp eq i32 %12, 7
  br i1 %cmp, label %if.then10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then9
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 3
  %13 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1365.not = icmp eq i32 %14, 0
  br i1 %cmp1365.not, label %for.cond.preheader.lor.lhs.false_crit_edge, label %for.body.lr.ph

for.cond.preheader.lor.lhs.false_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %me16 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  br label %for.body

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %15 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %me, align 8
  %dpg_enc_submission_cnt = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 %16, i32 14
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dpg_enc_submission_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %dpg_enc_submission_cnt, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dpg_enc_submission_cnt, ptr %dpg_enc_submission_cnt, i32 1, ptr elementtype(i32) %dpg_enc_submission_cnt) #9, !srcloc !137
  br label %if.end33

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %fences.066 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %me16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %me16, align 8
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 %19, i32 5, i32 %i.067
  %call19 = tail call i32 @amdgpu_fence_count_emitted(ptr noundef %arrayidx18) #9
  %add = add i32 %call19, %fences.066
  %inc = add nuw i32 %i.067, 1
  %20 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_enc_rings, align 4
  %cmp13 = icmp ult i32 %inc, %21
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  br i1 %phi.cmp, label %for.end.lor.lhs.false_crit_edge, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.lor.lhs.false_crit_edge, %for.cond.preheader.lor.lhs.false_crit_edge
  %me23 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %22 = ptrtoint ptr %me23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %me23, align 8
  %dpg_enc_submission_cnt25 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 %23, i32 14
  %call.i.i64 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dpg_enc_submission_cnt25, i32 noundef 4) #9
  %24 = ptrtoint ptr %dpg_enc_submission_cnt25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dpg_enc_submission_cnt25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not = icmp ne i32 %25, 0
  %spec.select = zext i1 %tobool27.not to i32
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false, %for.end.if.end33_crit_edge, %if.then10
  %storemerge62 = phi i32 [ 1, %if.then10 ], [ 1, %for.end.if.end33_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %26 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge62, ptr %new_state, align 4
  %pause_dpg_mode = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 14
  %27 = ptrtoint ptr %pause_dpg_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pause_dpg_mode, align 8
  %me35 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %29 = ptrtoint ptr %me35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %me35, align 8
  %call36 = call i32 %28(ptr noundef %1, i32 noundef %30, ptr noundef nonnull %new_state) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_state) #9
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end5.if.end37_crit_edge
  call void @mutex_unlock(ptr noundef %vcn_pg_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_switch_power_profile(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_count_emitted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vcn_ring_end_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp = icmp eq i32 %7, 7
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %me, align 8
  %dpg_enc_submission_cnt = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 %9, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dpg_enc_submission_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %dpg_enc_submission_cnt, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dpg_enc_submission_cnt, ptr %dpg_enc_submission_cnt, i32 1, ptr elementtype(i32) %dpg_enc_submission_cnt) #9, !srcloc !138
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring, align 8
  %total_submission_cnt = getelementptr inbounds %struct.amdgpu_device, ptr %12, i32 0, i32 110, i32 12
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_submission_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %total_submission_cnt, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_submission_cnt, ptr %total_submission_cnt, i32 1, ptr elementtype(i32) %total_submission_cnt) #9, !srcloc !138
  %14 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring, align 8
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %15, i32 0, i32 110, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %idle_work, i32 noundef 100) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_dec_ring_test_ring(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %4 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %me, align 8
  %scratch9 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 %5, i32 8, i32 10
  %6 = ptrtoint ptr %scratch9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scratch9, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %7, i32 noundef -889266515, i32 noundef 0) #9
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %scratch96 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 9, i32 10
  %8 = ptrtoint ptr %scratch96 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scratch96, align 4
  %and7 = and i32 %9, 65535
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.end4.amdgpu_ring_write.exit_crit_edge

if.end4.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end4.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 %and7, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i44 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i44, label %if.then.i45, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit55_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit55_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit55

if.then.i45:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54) #9
  br label %amdgpu_ring_write.exit55

amdgpu_ring_write.exit55:                         ; preds = %if.then.i45, %amdgpu_ring_write.exit.amdgpu_ring_write.exit55_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 4
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr.i, align 8
  %inc.i48 = add i64 %28, 1
  store i64 %inc.i48, ptr %wptr.i, align 8
  %29 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_mask.i, align 8
  %31 = trunc i64 %28 to i32
  %idxprom.i50 = and i32 %30, %31
  %arrayidx.i51 = getelementptr i32, ptr %26, i32 %idxprom.i50
  %32 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 -559038737, ptr %arrayidx.i51, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ptr_mask.i, align 8
  %35 = load i64, ptr %wptr.i, align 8
  %and3.i53 = and i64 %35, %34
  store i64 %and3.i53, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 8
  %dec.i54 = add i32 %37, -1
  store i32 %dec.i54, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #9
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp56.not = icmp eq i32 %39, 0
  br i1 %cmp56.not, label %amdgpu_ring_write.exit55.for.end_crit_edge, label %amdgpu_ring_write.exit55.for.body_crit_edge

amdgpu_ring_write.exit55.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit55
  br label %for.body

amdgpu_ring_write.exit55.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %amdgpu_ring_write.exit55.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %if.end18.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit55.for.body_crit_edge ]
  %40 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %me, align 8
  %scratch914 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 %41, i32 8, i32 10
  %42 = ptrtoint ptr %scratch914 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scratch914, align 8
  %call15 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %43, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call15)
  %cmp16 = icmp eq i32 %call15, -559038737
  br i1 %cmp16, label %for.body.for.end_crit_edge, label %if.end18

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end18:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #9
  %inc = add nuw i32 %i.057, 1
  %45 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %46
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit55.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit55.for.end_crit_edge ], [ %i.057, %for.body.for.end_crit_edge ], [ %inc, %if.end18.for.end_crit_edge ]
  %47 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %48)
  %cmp20.not = icmp ult i32 %i.0.lcssa, %48
  %spec.select = select i1 %cmp20.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_dec_sw_ring_test_ring(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %get_rptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_rptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_rptr, align 4
  %call5 = tail call i64 %7(ptr noundef %ring) #9
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.end4.amdgpu_ring_write.exit_crit_edge

if.end4.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end4.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 1, ptr %arrayidx.i, align 4
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
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #9
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp36.not = icmp eq i32 %24, 0
  br i1 %cmp36.not, label %amdgpu_ring_write.exit.for.end_crit_edge, label %for.body.lr.ph

amdgpu_ring_write.exit.for.end_crit_edge:         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %amdgpu_ring_write.exit
  %conv10 = and i64 %call5, 4294967295
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %25 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs, align 4
  %get_rptr8 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %get_rptr8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rptr8, align 4
  %call9 = tail call i64 %28(ptr noundef %ring) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %conv10)
  %cmp11.not = icmp eq i64 %call9, %conv10
  br i1 %cmp11.not, label %if.end14, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #9
  %inc = add nuw i32 %i.037, 1
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit.for.end_crit_edge ], [ %i.037, %for.body.for.end_crit_edge ], [ %inc, %if.end14.for.end_crit_edge ]
  %32 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %33)
  %cmp16.not = icmp ult i32 %i.0.lcssa, %33
  %spec.select = select i1 %cmp16.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_dec_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  %ib = alloca %struct.amdgpu_ib, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #9
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #9
  %1 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %4 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call.i = call i32 @amdgpu_ib_get(ptr noundef %3, ptr noundef null, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull %ib) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i32
  %add.i = add i32 %7, 4095
  %and.i = and i32 %add.i, -4096
  %8 = inttoptr i32 %and.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 671088640, ptr %8, align 4096
  %arrayidx2.i = getelementptr i32, ptr %8, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 939524096, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %8, i32 2
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %arrayidx3.i, align 8
  %arrayidx4.i = getelementptr i32, ptr %8, i32 3
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %8, i32 4
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %arrayidx5.i, align 16
  %arrayidx6.i = getelementptr i32, ptr %8, i32 5
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %8, i32 6
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %arrayidx7.i, align 8
  %arrayidx8.i = getelementptr i32, ptr %8, i32 7
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 671088640, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %8, i32 8
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 268435456, ptr %arrayidx9.i, align 32
  %arrayidx10.i = getelementptr i32, ptr %8, i32 9
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %8, i32 10
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 117440512, ptr %arrayidx11.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %8, i32 11
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %8, i32 12
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -2147024896, ptr %arrayidx13.i, align 16
  %arrayidx14.i = getelementptr i32, ptr %8, i32 13
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1074003968, ptr %arrayidx14.i, align 4
  %uglygep.i = getelementptr i8, ptr %8, i32 56
  %23 = call ptr @memset(ptr %uglygep.i, i32 0, i32 4040)
  %call1 = call fastcc i32 @amdgpu_vcn_dec_send_msg(ptr noundef %ring, ptr noundef nonnull %ib, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end4:                                          ; preds = %if.end
  %24 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring, align 8
  %26 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call.i28 = call i32 @amdgpu_ib_get(ptr noundef %25, ptr noundef null, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull %ib) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end8, label %if.end4.error_crit_edge

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end8:                                          ; preds = %if.end4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %28 to i32
  %add.i31 = add i32 %29, 4095
  %and.i32 = and i32 %add.i31, -4096
  %30 = inttoptr i32 %and.i32 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 671088640, ptr %30, align 4096
  %arrayidx2.i33 = getelementptr i32, ptr %30, i32 1
  %32 = ptrtoint ptr %arrayidx2.i33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 402653184, ptr %arrayidx2.i33, align 4
  %arrayidx3.i34 = getelementptr i32, ptr %30, i32 2
  %33 = ptrtoint ptr %arrayidx3.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx3.i34, align 8
  %arrayidx4.i35 = getelementptr i32, ptr %30, i32 3
  %34 = ptrtoint ptr %arrayidx4.i35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 33554432, ptr %arrayidx4.i35, align 4
  %arrayidx5.i36 = getelementptr i32, ptr %30, i32 4
  %35 = ptrtoint ptr %arrayidx5.i36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16777216, ptr %arrayidx5.i36, align 16
  %arrayidx6.i37 = getelementptr i32, ptr %30, i32 5
  %36 = call ptr @memset(ptr %arrayidx6.i37, i32 0, i32 4076)
  %call9 = call fastcc i32 @amdgpu_vcn_dec_send_msg(ptr noundef %ring, ptr noundef nonnull %ib, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.error_crit_edge

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end12:                                         ; preds = %if.end8
  %37 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fence, align 4
  %call13 = call i32 @dma_fence_wait_timeout(ptr noundef %38, i1 noundef zeroext false, i32 noundef %timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  %39 = call i32 @llvm.smin.i32(i32 %call13, i32 0)
  %r.0 = select i1 %cmp, i32 -110, i32 %39
  %40 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fence, align 4
  %tobool.not.i39 = icmp eq ptr %41, null
  br i1 %tobool.not.i39, label %if.end12.error_crit_edge, label %if.then.i

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i:                                        ; preds = %if.end12
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %41, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.error_crit_edge, label %if.then10.i.i.i.i.i, !prof !141

if.end5.i.i.i.i.i.error_crit_edge:                ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %error

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %error

error:                                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.error_crit_edge, %if.end12.error_crit_edge, %if.end8.error_crit_edge, %if.end4.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %r.1 = phi i32 [ %call1, %if.end.error_crit_edge ], [ %call9, %if.end8.error_crit_edge ], [ %call.i, %entry.error_crit_edge ], [ %call.i28, %if.end4.error_crit_edge ], [ %r.0, %if.end12.error_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.error_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #9
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vcn_dec_send_msg(ptr noundef %ring, ptr noundef %ib_msg, ptr noundef writeonly %fence) unnamed_addr #0 align 64 {
entry:
  %f = alloca ptr, align 4
  %job = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #9
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #9
  %3 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !136
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib_msg, i32 0, i32 2
  %4 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %gpu_addr, align 8
  %call = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %entry
  %add = add i64 %5, 4095
  %6 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibs, align 4
  %internal = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 9
  %10 = ptrtoint ptr %internal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %internal, align 4
  %and2 = and i32 %11, 65535
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and2, ptr %13, align 4
  %15 = trunc i64 %add to i32
  %conv = and i32 %15, -4096
  %16 = load ptr, ptr %ptr, align 8
  %arrayidx6 = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %arrayidx6, align 4
  %data1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 9, i32 1
  %18 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data1, align 4
  %and9 = and i32 %19, 65535
  %20 = load ptr, ptr %ptr, align 8
  %arrayidx13 = getelementptr i32, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and9, ptr %arrayidx13, align 4
  %shr = lshr i64 %add, 32
  %conv14 = trunc i64 %shr to i32
  %22 = load ptr, ptr %ptr, align 8
  %arrayidx16 = getelementptr i32, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv14, ptr %arrayidx16, align 4
  %cmd = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 9, i32 2
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd, align 4
  %and19 = and i32 %25, 65535
  %26 = load ptr, ptr %ptr, align 8
  %arrayidx23 = getelementptr i32, ptr %26, i32 4
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and19, ptr %arrayidx23, align 4
  %28 = load ptr, ptr %ptr, align 8
  %arrayidx25 = getelementptr i32, ptr %28, i32 5
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx25, align 4
  %nop = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 9, i32 3
  %30 = ptrtoint ptr %nop to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nop, align 4
  %and29 = and i32 %31, 65535
  %32 = load ptr, ptr %ptr, align 8
  %arrayidx33 = getelementptr i32, ptr %32, i32 6
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and29, ptr %arrayidx33, align 4
  %34 = load ptr, ptr %ptr, align 8
  %arrayidx36 = getelementptr i32, ptr %34, i32 7
  %35 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx36, align 4
  %36 = load i32, ptr %nop, align 4
  %and29.1 = and i32 %36, 65535
  %37 = load ptr, ptr %ptr, align 8
  %arrayidx33.1 = getelementptr i32, ptr %37, i32 8
  %38 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and29.1, ptr %arrayidx33.1, align 4
  %39 = load ptr, ptr %ptr, align 8
  %arrayidx36.1 = getelementptr i32, ptr %39, i32 9
  %40 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx36.1, align 4
  %41 = load i32, ptr %nop, align 4
  %and29.2 = and i32 %41, 65535
  %42 = load ptr, ptr %ptr, align 8
  %arrayidx33.2 = getelementptr i32, ptr %42, i32 10
  %43 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and29.2, ptr %arrayidx33.2, align 4
  %44 = load ptr, ptr %ptr, align 8
  %arrayidx36.2 = getelementptr i32, ptr %44, i32 11
  %45 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx36.2, align 4
  %46 = load i32, ptr %nop, align 4
  %and29.3 = and i32 %46, 65535
  %47 = load ptr, ptr %ptr, align 8
  %arrayidx33.3 = getelementptr i32, ptr %47, i32 12
  %48 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and29.3, ptr %arrayidx33.3, align 4
  %49 = load ptr, ptr %ptr, align 8
  %arrayidx36.3 = getelementptr i32, ptr %49, i32 13
  %50 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx36.3, align 4
  %51 = load i32, ptr %nop, align 4
  %and29.4 = and i32 %51, 65535
  %52 = load ptr, ptr %ptr, align 8
  %arrayidx33.4 = getelementptr i32, ptr %52, i32 14
  %53 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and29.4, ptr %arrayidx33.4, align 4
  %54 = load ptr, ptr %ptr, align 8
  %arrayidx36.4 = getelementptr i32, ptr %54, i32 15
  %55 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx36.4, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %9, i32 0, i32 1
  %56 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %length_dw, align 4
  %57 = load ptr, ptr %job, align 4
  %call38 = call i32 @amdgpu_job_submit_direct(ptr noundef %57, ptr noundef %ring, ptr noundef nonnull %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %err_free

if.end41:                                         ; preds = %if.end
  %58 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %f, align 4
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef %ib_msg, ptr noundef %59) #9
  %tobool42.not = icmp eq ptr %fence, null
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  %60 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.then43.dma_fence_get.exit_crit_edge, label %if.then.i

if.then43.dma_fence_get.exit_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.then43
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %61, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !144

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %63 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !141

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.then43.dma_fence_get.exit_crit_edge
  %64 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %fence, align 4
  br label %if.end45

if.end45:                                         ; preds = %dma_fence_get.exit, %if.end41.if.end45_crit_edge
  %65 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %f, align 4
  %tobool.not.i76 = icmp eq ptr %66, null
  br i1 %tobool.not.i76, label %if.end45.cleanup_crit_edge, label %if.then.i79

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i79:                                      ; preds = %if.end45
  %refcount.i77 = getelementptr inbounds %struct.dma_fence, ptr %66, i32 0, i32 6
  %call.i.i.i.i.i.i.i78 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i77, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @llvm.prefetch.p0(ptr %refcount.i77, i32 1, i32 3, i32 1) #9
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i77, ptr %refcount.i77, i32 1, ptr elementtype(i32) %refcount.i77) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i80, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !141

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i77, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @dma_fence_release(ptr noundef %refcount.i77) #9
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %69) #9
  br label %err

err:                                              ; preds = %err_free, %entry.err_crit_edge
  %r.0 = phi i32 [ %call, %entry.err_crit_edge ], [ %call38, %err_free ]
  %70 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %f, align 4
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef %ib_msg, ptr noundef %71) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_dec_sw_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  %ib = alloca %struct.amdgpu_ib, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #9
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #9
  %1 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %4 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call.i = call i32 @amdgpu_ib_get(ptr noundef %3, ptr noundef null, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull %ib) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i32
  %add.i = add i32 %7, 4095
  %and.i = and i32 %add.i, -4096
  %8 = inttoptr i32 %and.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 671088640, ptr %8, align 4096
  %arrayidx2.i = getelementptr i32, ptr %8, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 939524096, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %8, i32 2
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %arrayidx3.i, align 8
  %arrayidx4.i = getelementptr i32, ptr %8, i32 3
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %8, i32 4
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %arrayidx5.i, align 16
  %arrayidx6.i = getelementptr i32, ptr %8, i32 5
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %8, i32 6
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %arrayidx7.i, align 8
  %arrayidx8.i = getelementptr i32, ptr %8, i32 7
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 671088640, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %8, i32 8
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 268435456, ptr %arrayidx9.i, align 32
  %arrayidx10.i = getelementptr i32, ptr %8, i32 9
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %8, i32 10
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 117440512, ptr %arrayidx11.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %8, i32 11
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %8, i32 12
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -2147024896, ptr %arrayidx13.i, align 16
  %arrayidx14.i = getelementptr i32, ptr %8, i32 13
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1074003968, ptr %arrayidx14.i, align 4
  %uglygep.i = getelementptr i8, ptr %8, i32 56
  %23 = call ptr @memset(ptr %uglygep.i, i32 0, i32 4040)
  %call1 = call fastcc i32 @amdgpu_vcn_dec_sw_send_msg(ptr noundef %ring, ptr noundef nonnull %ib, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end4:                                          ; preds = %if.end
  %24 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring, align 8
  %26 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call.i28 = call i32 @amdgpu_ib_get(ptr noundef %25, ptr noundef null, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull %ib) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end8, label %if.end4.error_crit_edge

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end8:                                          ; preds = %if.end4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %28 to i32
  %add.i31 = add i32 %29, 4095
  %and.i32 = and i32 %add.i31, -4096
  %30 = inttoptr i32 %and.i32 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 671088640, ptr %30, align 4096
  %arrayidx2.i33 = getelementptr i32, ptr %30, i32 1
  %32 = ptrtoint ptr %arrayidx2.i33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 402653184, ptr %arrayidx2.i33, align 4
  %arrayidx3.i34 = getelementptr i32, ptr %30, i32 2
  %33 = ptrtoint ptr %arrayidx3.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx3.i34, align 8
  %arrayidx4.i35 = getelementptr i32, ptr %30, i32 3
  %34 = ptrtoint ptr %arrayidx4.i35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 33554432, ptr %arrayidx4.i35, align 4
  %arrayidx5.i36 = getelementptr i32, ptr %30, i32 4
  %35 = ptrtoint ptr %arrayidx5.i36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16777216, ptr %arrayidx5.i36, align 16
  %arrayidx6.i37 = getelementptr i32, ptr %30, i32 5
  %36 = call ptr @memset(ptr %arrayidx6.i37, i32 0, i32 4076)
  %call9 = call fastcc i32 @amdgpu_vcn_dec_sw_send_msg(ptr noundef %ring, ptr noundef nonnull %ib, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.error_crit_edge

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end12:                                         ; preds = %if.end8
  %37 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fence, align 4
  %call13 = call i32 @dma_fence_wait_timeout(ptr noundef %38, i1 noundef zeroext false, i32 noundef %timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  %39 = call i32 @llvm.smin.i32(i32 %call13, i32 0)
  %r.0 = select i1 %cmp, i32 -110, i32 %39
  %40 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fence, align 4
  %tobool.not.i39 = icmp eq ptr %41, null
  br i1 %tobool.not.i39, label %if.end12.error_crit_edge, label %if.then.i

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i:                                        ; preds = %if.end12
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %41, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.error_crit_edge, label %if.then10.i.i.i.i.i, !prof !141

if.end5.i.i.i.i.i.error_crit_edge:                ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %error

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %error

error:                                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.error_crit_edge, %if.end12.error_crit_edge, %if.end8.error_crit_edge, %if.end4.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %r.1 = phi i32 [ %call1, %if.end.error_crit_edge ], [ %call9, %if.end8.error_crit_edge ], [ %call.i, %entry.error_crit_edge ], [ %call.i28, %if.end4.error_crit_edge ], [ %r.0, %if.end12.error_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.error_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #9
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vcn_dec_sw_send_msg(ptr noundef %ring, ptr noundef %ib_msg, ptr noundef writeonly %fence) unnamed_addr #0 align 64 {
entry:
  %f = alloca ptr, align 4
  %job = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #9
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #9
  %3 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !136
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib_msg, i32 0, i32 2
  %4 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %gpu_addr, align 8
  %call = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef 256, i32 noundef 2, ptr noundef nonnull %job) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %entry
  %add = add i64 %5, 4095
  %6 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibs, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %9, i32 0, i32 1
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr, align 8
  %12 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %length_dw, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 140, ptr %11, align 4
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc6 = add i32 %15, 1
  store i32 %inc6, ptr %length_dw, align 4
  %arrayidx7 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16777216, ptr %arrayidx7, align 4
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %17, i32 %18
  %add12 = add i32 %18, 33
  store i32 %add12, ptr %length_dw, align 4
  %19 = getelementptr inbounds i8, ptr %arrayidx10, i32 12
  %20 = call ptr @memset(ptr %19, i32 0, i32 120)
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16777216, ptr %arrayidx10, align 4
  %shr = lshr i64 %add, 32
  %conv = trunc i64 %shr to i32
  %22 = call i32 @llvm.bswap.i32(i32 %conv)
  %msg_buffer_address_hi = getelementptr inbounds %struct.amdgpu_vcn_decode_buffer, ptr %arrayidx10, i32 0, i32 1
  %23 = ptrtoint ptr %msg_buffer_address_hi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %msg_buffer_address_hi, align 4
  %24 = trunc i64 %add to i32
  %conv13 = and i32 %24, -4096
  %25 = call i32 @llvm.bswap.i32(i32 %conv13)
  %msg_buffer_address_lo = getelementptr inbounds %struct.amdgpu_vcn_decode_buffer, ptr %arrayidx10, i32 0, i32 2
  %26 = ptrtoint ptr %msg_buffer_address_lo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %msg_buffer_address_lo, align 4
  %27 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %28)
  %cmp63 = icmp ult i32 %28, 64
  br i1 %cmp63, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.064 = phi i32 [ %inc18, %for.body.for.body_crit_edge ], [ %28, %if.end.for.body_crit_edge ]
  %29 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptr, align 8
  %arrayidx17 = getelementptr i32, ptr %30, i32 %i.064
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx17, align 4
  %inc18 = add i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc18, 64
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %32 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %job, align 4
  %call19 = call i32 @amdgpu_job_submit_direct(ptr noundef %33, ptr noundef %ring, ptr noundef nonnull %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %err_free

if.end22:                                         ; preds = %for.end
  %34 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f, align 4
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef %ib_msg, ptr noundef %35) #9
  %tobool23.not = icmp eq ptr %fence, null
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  %36 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then24.dma_fence_get.exit_crit_edge, label %if.then.i

if.then24.dma_fence_get.exit_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.then24
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %37, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !144

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !141

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.then24.dma_fence_get.exit_crit_edge
  %40 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %fence, align 4
  br label %if.end26

if.end26:                                         ; preds = %dma_fence_get.exit, %if.end22.if.end26_crit_edge
  %41 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f, align 4
  %tobool.not.i58 = icmp eq ptr %42, null
  br i1 %tobool.not.i58, label %if.end26.cleanup_crit_edge, label %if.then.i61

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i61:                                      ; preds = %if.end26
  %refcount.i59 = getelementptr inbounds %struct.dma_fence, ptr %42, i32 0, i32 6
  %call.i.i.i.i.i.i.i60 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i59, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @llvm.prefetch.p0(ptr %refcount.i59, i32 1, i32 3, i32 1) #9
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i59, ptr %refcount.i59, i32 1, ptr elementtype(i32) %refcount.i59) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i62 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i62, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !141

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i59, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @dma_fence_release(ptr noundef %refcount.i59) #9
  br label %cleanup

err_free:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %45) #9
  br label %err

err:                                              ; preds = %err_free, %entry.err_crit_edge
  %r.0 = phi i32 [ %call, %entry.err_crit_edge ], [ %call19, %err_free ]
  %46 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f, align 4
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef %ib_msg, ptr noundef %47) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_enc_ring_test_ring(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %get_rptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_rptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_rptr, align 4
  %call5 = tail call i64 %7(ptr noundef %ring) #9
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.end4.amdgpu_ring_write.exit_crit_edge

if.end4.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end4.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 1, ptr %arrayidx.i, align 4
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
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #9
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp36.not = icmp eq i32 %24, 0
  br i1 %cmp36.not, label %amdgpu_ring_write.exit.for.end_crit_edge, label %for.body.lr.ph

amdgpu_ring_write.exit.for.end_crit_edge:         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %amdgpu_ring_write.exit
  %conv10 = and i64 %call5, 4294967295
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %25 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs, align 4
  %get_rptr8 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %get_rptr8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rptr8, align 4
  %call9 = tail call i64 %28(ptr noundef %ring) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %conv10)
  %cmp11.not = icmp eq i64 %call9, %conv10
  br i1 %cmp11.not, label %if.end14, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #9
  %inc = add nuw i32 %i.037, 1
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit.for.end_crit_edge ], [ %i.037, %for.body.for.end_crit_edge ], [ %inc, %if.end14.for.end_crit_edge ]
  %32 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %33)
  %cmp16.not = icmp ult i32 %i.0.lcssa, %33
  %spec.select = select i1 %cmp16.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vcn_enc_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %job.i28 = alloca ptr, align 4
  %f.i29 = alloca ptr, align 4
  %job.i = alloca ptr, align 4
  %f.i = alloca ptr, align 4
  %ib = alloca %struct.amdgpu_ib, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #9
  %2 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %3 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call = call i32 @amdgpu_ib_get(ptr noundef %1, ptr noundef null, i32 noundef 135168, i32 noundef 2, ptr noundef nonnull %ib) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i) #9
  %4 = ptrtoint ptr %job.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i) #9
  %5 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %f.i, align 4
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 8
  %call.i = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %7, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.amdgpu_vcn_enc_get_create_msg.exit_crit_edge

if.end.amdgpu_vcn_enc_get_create_msg.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_vcn_enc_get_create_msg.exit

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ibs.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %2, align 8
  %add.i = add i64 %13, 4095
  %length_dw.i = getelementptr inbounds %struct.amdgpu_ib, ptr %11, i32 0, i32 1
  %ptr.i = getelementptr inbounds %struct.amdgpu_ib, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr.i, align 8
  %16 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %length_dw.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24, ptr %15, align 4
  %18 = load ptr, ptr %ptr.i, align 8
  %19 = load i32, ptr %length_dw.i, align 4
  %inc5.i = add i32 %19, 1
  store i32 %inc5.i, ptr %length_dw.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arrayidx6.i, align 4
  %21 = load ptr, ptr %ptr.i, align 8
  %22 = load i32, ptr %length_dw.i, align 4
  %inc9.i = add i32 %22, 1
  store i32 %inc9.i, ptr %length_dw.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx10.i, align 4
  %shr.i = lshr i64 %add.i, 32
  %conv.i = trunc i64 %shr.i to i32
  %24 = load ptr, ptr %ptr.i, align 8
  %25 = load i32, ptr %length_dw.i, align 4
  %inc14.i = add i32 %25, 1
  store i32 %inc14.i, ptr %length_dw.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %arrayidx15.i, align 4
  %27 = trunc i64 %add.i to i32
  %conv16.i = and i32 %27, -4096
  %28 = load ptr, ptr %ptr.i, align 8
  %29 = load i32, ptr %length_dw.i, align 4
  %inc19.i = add i32 %29, 1
  store i32 %inc19.i, ptr %length_dw.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %28, i32 %29
  %30 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv16.i, ptr %arrayidx20.i, align 4
  %31 = load ptr, ptr %ptr.i, align 8
  %32 = load i32, ptr %length_dw.i, align 4
  %inc23.i = add i32 %32, 1
  store i32 %inc23.i, ptr %length_dw.i, align 4
  %arrayidx24.i = getelementptr i32, ptr %31, i32 %32
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 11, ptr %arrayidx24.i, align 4
  %34 = load ptr, ptr %ptr.i, align 8
  %35 = load i32, ptr %length_dw.i, align 4
  %inc27.i = add i32 %35, 1
  store i32 %inc27.i, ptr %length_dw.i, align 4
  %arrayidx28.i = getelementptr i32, ptr %34, i32 %35
  %36 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20, ptr %arrayidx28.i, align 4
  %37 = load ptr, ptr %ptr.i, align 8
  %38 = load i32, ptr %length_dw.i, align 4
  %inc31.i = add i32 %38, 1
  store i32 %inc31.i, ptr %length_dw.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %37, i32 %38
  %39 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %arrayidx32.i, align 4
  %40 = load ptr, ptr %ptr.i, align 8
  %41 = load i32, ptr %length_dw.i, align 4
  %inc35.i = add i32 %41, 1
  store i32 %inc35.i, ptr %length_dw.i, align 4
  %arrayidx36.i = getelementptr i32, ptr %40, i32 %41
  %42 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 28, ptr %arrayidx36.i, align 4
  %43 = load ptr, ptr %ptr.i, align 8
  %44 = load i32, ptr %length_dw.i, align 4
  %inc39.i = add i32 %44, 1
  store i32 %inc39.i, ptr %length_dw.i, align 4
  %arrayidx40.i = getelementptr i32, ptr %43, i32 %44
  %45 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx40.i, align 4
  %46 = load ptr, ptr %ptr.i, align 8
  %47 = load i32, ptr %length_dw.i, align 4
  %inc43.i = add i32 %47, 1
  store i32 %inc43.i, ptr %length_dw.i, align 4
  %arrayidx44.i = getelementptr i32, ptr %46, i32 %47
  %48 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx44.i, align 4
  %49 = load ptr, ptr %ptr.i, align 8
  %50 = load i32, ptr %length_dw.i, align 4
  %inc47.i = add i32 %50, 1
  store i32 %inc47.i, ptr %length_dw.i, align 4
  %arrayidx48.i = getelementptr i32, ptr %49, i32 %50
  %51 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %arrayidx48.i, align 4
  %52 = load ptr, ptr %ptr.i, align 8
  %53 = load i32, ptr %length_dw.i, align 4
  %inc51.i = add i32 %53, 1
  store i32 %inc51.i, ptr %length_dw.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %52, i32 %53
  %54 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 134217729, ptr %arrayidx52.i, align 4
  %55 = load i32, ptr %length_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %55)
  %cmp1.i = icmp ult i32 %55, 16
  br i1 %cmp1.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc57.i, %for.body.i.for.body.i_crit_edge ], [ %55, %if.end.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ptr.i, align 8
  %arrayidx56.i = getelementptr i32, ptr %57, i32 %i.02.i
  %58 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %arrayidx56.i, align 4
  %inc57.i = add i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc57.i, 16
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %59 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %job.i, align 4
  %call58.i = call i32 @amdgpu_job_submit_direct(ptr noundef %60, ptr noundef %ring, ptr noundef nonnull %f.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end65.i, label %err.i

if.end65.i:                                       ; preds = %for.end.i
  %61 = ptrtoint ptr %f.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %if.end65.i.if.end5_crit_edge, label %if.then.i.i

if.end65.i.if.end5_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.i.i:                                      ; preds = %if.end65.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !141

if.end5.i.i.i.i.i.i.if.end5_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %if.end5

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @dma_fence_release(ptr noundef %refcount.i.i) #9
  br label %if.end5

err.i:                                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %job.i, align 4
  call void @amdgpu_job_free(ptr noundef %65) #9
  br label %amdgpu_vcn_enc_get_create_msg.exit

amdgpu_vcn_enc_get_create_msg.exit:               ; preds = %err.i, %if.end.amdgpu_vcn_enc_get_create_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %call58.i, %err.i ], [ %call.i, %if.end.amdgpu_vcn_enc_get_create_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #9
  br label %error.thread

if.end5:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end5_crit_edge, %if.end65.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i28) #9
  %66 = ptrtoint ptr %job.i28 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i28, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i29) #9
  %67 = ptrtoint ptr %f.i29 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %f.i29, align 4
  %68 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring, align 8
  %call.i30 = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %69, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job.i28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i64, label %if.end5.amdgpu_vcn_enc_get_destroy_msg.exit_crit_edge

if.end5.amdgpu_vcn_enc_get_destroy_msg.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_vcn_enc_get_destroy_msg.exit

if.end.i64:                                       ; preds = %if.end5
  %70 = ptrtoint ptr %job.i28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %job.i28, align 4
  %ibs.i32 = getelementptr inbounds %struct.amdgpu_job, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ibs.i32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ibs.i32, align 4
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %2, align 8
  %add.i34 = add i64 %75, 4095
  %length_dw.i35 = getelementptr inbounds %struct.amdgpu_ib, ptr %73, i32 0, i32 1
  %ptr.i36 = getelementptr inbounds %struct.amdgpu_ib, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ptr.i36, align 8
  %78 = ptrtoint ptr %length_dw.i35 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %length_dw.i35, align 4
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 24, ptr %77, align 4
  %80 = load ptr, ptr %ptr.i36, align 8
  %81 = load i32, ptr %length_dw.i35, align 4
  %inc5.i37 = add i32 %81, 1
  store i32 %inc5.i37, ptr %length_dw.i35, align 4
  %arrayidx6.i38 = getelementptr i32, ptr %80, i32 %81
  %82 = ptrtoint ptr %arrayidx6.i38 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %arrayidx6.i38, align 4
  %83 = load ptr, ptr %ptr.i36, align 8
  %84 = load i32, ptr %length_dw.i35, align 4
  %inc9.i39 = add i32 %84, 1
  store i32 %inc9.i39, ptr %length_dw.i35, align 4
  %arrayidx10.i40 = getelementptr i32, ptr %83, i32 %84
  %85 = ptrtoint ptr %arrayidx10.i40 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %arrayidx10.i40, align 4
  %shr.i41 = lshr i64 %add.i34, 32
  %conv.i42 = trunc i64 %shr.i41 to i32
  %86 = load ptr, ptr %ptr.i36, align 8
  %87 = load i32, ptr %length_dw.i35, align 4
  %inc14.i43 = add i32 %87, 1
  store i32 %inc14.i43, ptr %length_dw.i35, align 4
  %arrayidx15.i44 = getelementptr i32, ptr %86, i32 %87
  %88 = ptrtoint ptr %arrayidx15.i44 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i42, ptr %arrayidx15.i44, align 4
  %89 = trunc i64 %add.i34 to i32
  %conv16.i45 = and i32 %89, -4096
  %90 = load ptr, ptr %ptr.i36, align 8
  %91 = load i32, ptr %length_dw.i35, align 4
  %inc19.i46 = add i32 %91, 1
  store i32 %inc19.i46, ptr %length_dw.i35, align 4
  %arrayidx20.i47 = getelementptr i32, ptr %90, i32 %91
  %92 = ptrtoint ptr %arrayidx20.i47 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv16.i45, ptr %arrayidx20.i47, align 4
  %93 = load ptr, ptr %ptr.i36, align 8
  %94 = load i32, ptr %length_dw.i35, align 4
  %inc23.i48 = add i32 %94, 1
  store i32 %inc23.i48, ptr %length_dw.i35, align 4
  %arrayidx24.i49 = getelementptr i32, ptr %93, i32 %94
  %95 = ptrtoint ptr %arrayidx24.i49 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 11, ptr %arrayidx24.i49, align 4
  %96 = load ptr, ptr %ptr.i36, align 8
  %97 = load i32, ptr %length_dw.i35, align 4
  %inc27.i50 = add i32 %97, 1
  store i32 %inc27.i50, ptr %length_dw.i35, align 4
  %arrayidx28.i51 = getelementptr i32, ptr %96, i32 %97
  %98 = ptrtoint ptr %arrayidx28.i51 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 20, ptr %arrayidx28.i51, align 4
  %99 = load ptr, ptr %ptr.i36, align 8
  %100 = load i32, ptr %length_dw.i35, align 4
  %inc31.i52 = add i32 %100, 1
  store i32 %inc31.i52, ptr %length_dw.i35, align 4
  %arrayidx32.i53 = getelementptr i32, ptr %99, i32 %100
  %101 = ptrtoint ptr %arrayidx32.i53 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %arrayidx32.i53, align 4
  %102 = load ptr, ptr %ptr.i36, align 8
  %103 = load i32, ptr %length_dw.i35, align 4
  %inc35.i54 = add i32 %103, 1
  store i32 %inc35.i54, ptr %length_dw.i35, align 4
  %arrayidx36.i55 = getelementptr i32, ptr %102, i32 %103
  %104 = ptrtoint ptr %arrayidx36.i55 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 28, ptr %arrayidx36.i55, align 4
  %105 = load ptr, ptr %ptr.i36, align 8
  %106 = load i32, ptr %length_dw.i35, align 4
  %inc39.i56 = add i32 %106, 1
  store i32 %inc39.i56, ptr %length_dw.i35, align 4
  %arrayidx40.i57 = getelementptr i32, ptr %105, i32 %106
  %107 = ptrtoint ptr %arrayidx40.i57 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx40.i57, align 4
  %108 = load ptr, ptr %ptr.i36, align 8
  %109 = load i32, ptr %length_dw.i35, align 4
  %inc43.i58 = add i32 %109, 1
  store i32 %inc43.i58, ptr %length_dw.i35, align 4
  %arrayidx44.i59 = getelementptr i32, ptr %108, i32 %109
  %110 = ptrtoint ptr %arrayidx44.i59 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx44.i59, align 4
  %111 = load ptr, ptr %ptr.i36, align 8
  %112 = load i32, ptr %length_dw.i35, align 4
  %inc47.i60 = add i32 %112, 1
  store i32 %inc47.i60, ptr %length_dw.i35, align 4
  %arrayidx48.i61 = getelementptr i32, ptr %111, i32 %112
  %113 = ptrtoint ptr %arrayidx48.i61 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8, ptr %arrayidx48.i61, align 4
  %114 = load ptr, ptr %ptr.i36, align 8
  %115 = load i32, ptr %length_dw.i35, align 4
  %inc51.i62 = add i32 %115, 1
  store i32 %inc51.i62, ptr %length_dw.i35, align 4
  %arrayidx52.i63 = getelementptr i32, ptr %114, i32 %115
  %116 = ptrtoint ptr %arrayidx52.i63 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 134217730, ptr %arrayidx52.i63, align 4
  %117 = load i32, ptr %length_dw.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %117)
  %cmp6.i = icmp ult i32 %117, 16
  br i1 %cmp6.i, label %if.end.i64.for.body.i68_crit_edge, label %if.end.i64.for.end.i71_crit_edge

if.end.i64.for.end.i71_crit_edge:                 ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i71

if.end.i64.for.body.i68_crit_edge:                ; preds = %if.end.i64
  br label %for.body.i68

for.body.i68:                                     ; preds = %for.body.i68.for.body.i68_crit_edge, %if.end.i64.for.body.i68_crit_edge
  %i.07.i = phi i32 [ %inc57.i66, %for.body.i68.for.body.i68_crit_edge ], [ %117, %if.end.i64.for.body.i68_crit_edge ]
  %118 = ptrtoint ptr %ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ptr.i36, align 8
  %arrayidx56.i65 = getelementptr i32, ptr %119, i32 %i.07.i
  %120 = ptrtoint ptr %arrayidx56.i65 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %arrayidx56.i65, align 4
  %inc57.i66 = add i32 %i.07.i, 1
  %exitcond.not.i67 = icmp eq i32 %inc57.i66, 16
  br i1 %exitcond.not.i67, label %for.body.i68.for.end.i71_crit_edge, label %for.body.i68.for.body.i68_crit_edge

for.body.i68.for.body.i68_crit_edge:              ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i68

for.body.i68.for.end.i71_crit_edge:               ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i71

for.end.i71:                                      ; preds = %for.body.i68.for.end.i71_crit_edge, %if.end.i64.for.end.i71_crit_edge
  %121 = ptrtoint ptr %job.i28 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %job.i28, align 4
  %call58.i69 = call i32 @amdgpu_job_submit_direct(ptr noundef %122, ptr noundef %ring, ptr noundef nonnull %f.i29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i69)
  %tobool59.not.i70 = icmp eq i32 %call58.i69, 0
  br i1 %tobool59.not.i70, label %if.end61.i, label %err.i83

if.end61.i:                                       ; preds = %for.end.i71
  %123 = ptrtoint ptr %f.i29 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %f.i29, align 4
  %tobool.not.i.i72 = icmp eq ptr %124, null
  br i1 %tobool.not.i.i72, label %if.end61.i.error_crit_edge, label %if.then.i.i75

if.end61.i.error_crit_edge:                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i.i75:                                    ; preds = %if.end61.i
  %refcount.i.i73 = getelementptr inbounds %struct.dma_fence, ptr %124, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i73, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i.i73, i32 1, i32 3, i32 1) #9
  %125 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i73, ptr %refcount.i.i73, i32 1, ptr elementtype(i32) %refcount.i.i73) #9, !srcloc !143
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i75.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !144

if.then.i.i75.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i75
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %126 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %.not.i.i.i.i.i.i76 = icmp sgt i32 %126, -1
  br i1 %.not.i.i.i.i.i.i76, label %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !141

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i75.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i75.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i73, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %dma_fence_get.exit.i

dma_fence_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge
  %127 = ptrtoint ptr %f.i29 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr = load ptr, ptr %f.i29, align 4
  %tobool.not.i1.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i1.i, label %dma_fence_get.exit.i.error_crit_edge, label %if.then.i4.i

dma_fence_get.exit.i.error_crit_edge:             ; preds = %dma_fence_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i4.i:                                     ; preds = %dma_fence_get.exit.i
  %refcount.i2.i = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i2.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @llvm.prefetch.p0(ptr %refcount.i2.i, i32 1, i32 3, i32 1) #9
  %128 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i2.i, ptr %refcount.i2.i, i32 1, ptr elementtype(i32) %refcount.i2.i) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i.i.i78 = extractvalue { i32, i32, i32 } %128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i78)
  %cmp.i.i.i.i.i.i79 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i78, 1
  br i1 %cmp.i.i.i.i.i.i79, label %if.then.i.i.i82, label %if.end5.i.i.i.i.i.i80

if.end5.i.i.i.i.i.i80:                            ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i78)
  %.not.i.i.i.i.i5.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i78, 0
  br i1 %.not.i.i.i.i.i5.i, label %if.end5.i.i.i.i.i.i80.error_crit_edge, label %if.then10.i.i.i.i.i.i81, !prof !141

if.end5.i.i.i.i.i.i80.error_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then10.i.i.i.i.i.i81:                          ; preds = %if.end5.i.i.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i2.i, i32 noundef 3) #9
  br label %error

if.then.i.i.i82:                                  ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @dma_fence_release(ptr noundef %refcount.i2.i) #9
  br label %error

err.i83:                                          ; preds = %for.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %job.i28 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %job.i28, align 4
  call void @amdgpu_job_free(ptr noundef %130) #9
  br label %amdgpu_vcn_enc_get_destroy_msg.exit

amdgpu_vcn_enc_get_destroy_msg.exit:              ; preds = %err.i83, %if.end5.amdgpu_vcn_enc_get_destroy_msg.exit_crit_edge
  %retval.0.i84 = phi i32 [ %call58.i69, %err.i83 ], [ %call.i30, %if.end5.amdgpu_vcn_enc_get_destroy_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i29) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i28) #9
  br label %error.thread

error.thread:                                     ; preds = %amdgpu_vcn_enc_get_destroy_msg.exit, %amdgpu_vcn_enc_get_create_msg.exit
  %r.0.ph = phi i32 [ %retval.0.i84, %amdgpu_vcn_enc_get_destroy_msg.exit ], [ %retval.0.i, %amdgpu_vcn_enc_get_create_msg.exit ]
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #9
  br label %cleanup

error:                                            ; preds = %if.then.i.i.i82, %if.then10.i.i.i.i.i.i81, %if.end5.i.i.i.i.i.i80.error_crit_edge, %dma_fence_get.exit.i.error_crit_edge, %if.end61.i.error_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i29) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i28) #9
  %call10 = call i32 @dma_fence_wait_timeout(ptr noundef %124, i1 noundef zeroext false, i32 noundef %timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  %131 = call i32 @llvm.smin.i32(i32 %call10, i32 0)
  %spec.select = select i1 %cmp, i32 -110, i32 %131
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef %124) #9
  br i1 %tobool.not.i.i72, label %error.cleanup_crit_edge, label %if.then.i

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %error
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %124, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %132 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i.i86 = extractvalue { i32, i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i86)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i86, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i87, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i86)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i86, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !141

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i87:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i87, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %error.cleanup_crit_edge, %error.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %r.0.ph, %error.thread ], [ %spec.select, %error.cleanup_crit_edge ], [ %spec.select, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %spec.select, %if.then10.i.i.i.i.i ], [ %spec.select, %if.then.i.i87 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_vcn_get_enc_ring_prio(i32 noundef %ring) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ring)
  %switch.selectcmp = icmp eq i32 %ring, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ring)
  %switch.selectcmp3 = icmp eq i32 %ring, 2
  %switch.select4 = select i1 %switch.selectcmp3, i32 2, i32 %switch.select
  ret i32 %switch.select4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vcn_setup_ucode(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 2
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %2 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_vcn_inst, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp241.not = icmp eq i8 %3, 0
  br i1 %cmp241.not, label %if.then.do.end23_crit_edge, label %for.body.lr.ph

if.then.do.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

for.body.lr.ph:                                   ; preds = %if.then
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 13
  %8 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %harvest_config, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %7, i32 0, i32 7
  %fw_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.042
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.042)
  %cmp6 = icmp ugt i32 %i.042, 1
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.46) #12
  br label %do.end23

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %i.042, 28
  %arrayidx = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %add
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %arrayidx, align 8
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 8
  %fw16 = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %add, i32 1
  %15 = ptrtoint ptr %fw16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %fw16, align 4
  %16 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ucode_size_bytes, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add17 = add i32 %18, 4095
  %and18 = and i32 %add17, -4096
  %19 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_size, align 8
  %add20 = add i32 %and18, %20
  store i32 %add20, ptr %fw_size, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.end23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end23:                                         ; preds = %for.inc.do.end23_crit_edge, %do.end, %if.then.do.end23_crit_edge
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.50) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 55, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 56, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 57, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 58, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 59, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 60, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 61, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 62, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware351, !17, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 63, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware352, !19, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 64, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware353, !21, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 65, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 66, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 67, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware356, !27, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 68, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware357, !29, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 69, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware358, !31, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 70, i32 1}
!32 = !{ptr @amdgpu_vcn_sw_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 82, i32 2}
!34 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @amdgpu_vcn_sw_init.__key.1, !33, !"__key", i1 false, i1 false}
!36 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @amdgpu_vcn_sw_init.__key.3, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 83, i32 2}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @amdgpu_vcn_sw_init.__key.5, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 84, i32 2}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 93, i32 14}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 95, i32 14}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 97, i32 14}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 100, i32 13}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 107, i32 14}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 109, i32 14}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 116, i32 13}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 122, i32 13}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 129, i32 14}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 131, i32 14}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 140, i32 14}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 142, i32 14}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 148, i32 13}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 151, i32 13}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 157, i32 13}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 163, i32 13}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 174, i32 3}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @amdgpu_vcn_sw_init._entry, !76, !"_entry", i1 false, i1 false}
!82 = !{ptr @amdgpu_vcn_sw_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 181, i32 3}
!85 = !{ptr @amdgpu_vcn_sw_init._entry.28, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @amdgpu_vcn_sw_init._entry_ptr.30, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 206, i32 3}
!89 = !{ptr @amdgpu_vcn_sw_init._entry.31, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @amdgpu_vcn_sw_init._entry_ptr.33, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 214, i32 3}
!93 = !{ptr @amdgpu_vcn_sw_init._entry.34, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @amdgpu_vcn_sw_init._entry_ptr.36, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 231, i32 4}
!97 = !{ptr @amdgpu_vcn_sw_init._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @amdgpu_vcn_sw_init._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 245, i32 5}
!101 = !{ptr @amdgpu_vcn_sw_init._entry.40, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @amdgpu_vcn_sw_init._entry_ptr.42, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 429, i32 4}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @amdgpu_vcn_ring_begin_use._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @amdgpu_vcn_ring_begin_use._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 962, i32 5}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @amdgpu_vcn_setup_ucode._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @amdgpu_vcn_setup_ucode._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 971, i32 3}
!117 = !{ptr @amdgpu_vcn_setup_ucode._entry.49, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @amdgpu_vcn_setup_ucode._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c", i32 412, i32 4}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @amdgpu_vcn_idle_work_handler._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @amdgpu_vcn_idle_work_handler._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i8 0, i8 2}
!136 = !{!"auto-init"}
!137 = !{i64 2148584363, i64 2148584389, i64 2148584418, i64 2148584452, i64 2148584483, i64 2148584506}
!138 = !{i64 2148586828, i64 2148586854, i64 2148586883, i64 2148586917, i64 2148586948, i64 2148586971}
!139 = !{i64 2148673918}
!140 = !{i64 2148588358, i64 2148588390, i64 2148588419, i64 2148588453, i64 2148588484, i64 2148588507}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2149871691}
!143 = !{i64 2148585893, i64 2148585925, i64 2148585954, i64 2148585988, i64 2148586019, i64 2148586042}
!144 = !{!"branch_weights", i32 1, i32 2000}
