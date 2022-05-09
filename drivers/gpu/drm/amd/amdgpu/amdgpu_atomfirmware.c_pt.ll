; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct.atom_firmware_info_v3_1 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, [6 x i32] }
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.vram_usagebyfirmware_v2_1 = type { %struct.atom_common_table_header, i32, i16, i16 }
%struct.atom_integrated_system_info_v1_11 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.atom_external_display_connection_info, %struct.atom_14nm_dpphy_dvihdmi_tuningset, %struct.atom_14nm_dpphy_dvihdmi_tuningset, %struct.atom_14nm_dpphy_dvihdmi_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_camera_data, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, [66 x i32] }
%struct.atom_external_display_connection_info = type { %struct.atom_common_table_header, [16 x i8], [7 x %struct.atom_ext_display_path], i8, i8, i8, i8, i8, [3 x i8] }
%struct.atom_ext_display_path = type { i16, i16, i16, i8, i8, i16, i8, i8, i16, i16 }
%struct.atom_14nm_dpphy_dvihdmi_tuningset = type { i32, i8, i8, i16, i8, i8, i8, i8 }
%struct.atom_camera_data = type { i32, [3 x %struct.atom_camera_module_info], %struct.atom_camera_flashlight_info, %struct.atom_camera_dphy_elec_param, i32 }
%struct.atom_camera_module_info = type { i8, [8 x i8], [6 x %struct.atom_camera_dphy_timing_param] }
%struct.atom_camera_dphy_timing_param = type <{ i8, i32 }>
%struct.atom_camera_flashlight_info = type { i8, [8 x i8] }
%struct.atom_camera_dphy_elec_param = type { [3 x i16] }
%struct.atom_hdmi_retimer_redriver_set = type { i8, i8, i8, [9 x %struct.atom_i2c_reg_info], [3 x %struct.atom_i2c_reg_info] }
%struct.atom_i2c_reg_info = type { i8, i8 }
%struct.atom_14nm_dpphy_dp_tuningset = type { i8, i8, i16, i16, [10 x %struct.atom_14nm_dpphy_dp_setting] }
%struct.atom_14nm_dpphy_dp_setting = type <{ i8, i16, i8, i8 }>
%struct.atom_integrated_system_info_v2_1 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, %struct.edp_info_table, %struct.edp_info_table, [8 x i32], %struct.atom_external_display_connection_info, %struct.atom_DCN_dpphy_dvihdmi_tuningset, %struct.atom_DCN_dpphy_dvihdmi_tuningset, %struct.atom_DCN_dpphy_dvihdmi_tuningset, %struct.atom_DCN_dpphy_dvihdmi_tuningset, [6 x i32], %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, [28 x i32], %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, [30 x i32], [32 x i32] }
%struct.edp_info_table = type { i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, [3 x i8], [3 x i32] }
%struct.atom_DCN_dpphy_dvihdmi_tuningset = type { i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atom_DCN_dpphy_dp_tuningset = type { i8, i8, i16, i16, [10 x %struct.atom_DCN_dpphy_dp_setting] }
%struct.atom_DCN_dpphy_dp_setting = type { i8, i8, i8, i8, i8 }
%struct.atom_vram_info_header_v2_3 = type { %struct.atom_common_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct.atom_vram_module_v9] }
%struct.atom_vram_module_v9 = type { i32, i32, i32, [3 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [20 x i8] }
%struct.atom_vram_info_header_v2_4 = type { %struct.atom_common_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct.atom_vram_module_v10] }
%struct.atom_vram_module_v10 = type { i32, i32, i32, [3 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8] }
%struct.atom_vram_info_header_v2_5 = type { %struct.atom_common_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct.atom_vram_module_v11] }
%struct.atom_vram_module_v11 = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, [4 x i16], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [40 x i8] }
%struct.atom_vram_info_header_v2_6 = type { %struct.atom_common_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct.atom_vram_module_v9] }
%struct.atom_umc_info_v3_3 = type { %struct.atom_common_table_header, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i32, [4 x i32], i16, i16, i32, i32, [2 x i32] }
%struct.atom_firmware_info_v3_4 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.atom_smu_info_v3_1 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atom_umc_info_v3_1 = type { %struct.atom_common_table_header, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i32 }
%struct.atom_gfx_info_v2_2 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_gfx_info_v2_4 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32 }
%struct.atom_gfx_info_v2_7 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i8, i8, [2 x i8], i32, [8 x i8], [6 x i32] }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"atom firmware requested %08x %dkb fw %dkb drv\0A\00", [49 x i8] zeroinitializer }, align 32
@switch.table.convert_atom_mem_type_to_vram_type = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 2, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 8, i32 0, i32 2, i32 7, i32 8, i32 0, i32 0, i32 0, i32 10, i32 10], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 80, i64 96, i64 97, i64 112]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 7]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [52 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 116, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant [48 x i8] c"switch.table.convert_atom_mem_type_to_vram_type\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @switch.table.convert_atom_mem_type_to_vram_type], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.convert_atom_mem_type_to_vram_type to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atomfirmware_query_firmware_capability(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #6
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #6
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #6
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !11
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5.not = icmp eq i8 %9, 0
  br i1 %cmp5.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.if.then10_crit_edge

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp8 = icmp ugt i8 %7, 3
  br i1 %cmp8, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  %10 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios, align 4
  %14 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_offset, align 2
  %conv12 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv12
  %firmware_capability = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %add.ptr, i32 0, i32 4
  %16 = ptrtoint ptr %firmware_capability to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %firmware_capability, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %lor.lhs.false.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %fw_cap.0 = phi i32 [ %18, %if.then10 ], [ 0, %lor.lhs.false.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ], [ 0, %land.lhs.true.if.end13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  ret i32 %fw_cap.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_atomfirmware_gpu_virtualization_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %0 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atomfirmware_scratch_regs_init(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %1 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %2, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info, align 8
  %bios = getelementptr inbounds %struct.atom_context, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bios, align 4
  %7 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv
  %bios_scratch_reg_startaddr = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %add.ptr, i32 0, i32 6
  %9 = ptrtoint ptr %bios_scratch_reg_startaddr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %bios_scratch_reg_startaddr, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %bios_scratch_reg_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 28
  %12 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bios_scratch_reg_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atomfirmware_allocate_fb_scratch(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %1, i32 noundef 11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then, label %entry.if.end16.thread_crit_edge

entry.if.end16.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread

if.then:                                          ; preds = %entry
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bios, align 4
  %5 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv
  %start_address_in_kb = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %start_address_in_kb to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %start_address_in_kb, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %used_by_firmware_in_kb = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, ptr %add.ptr, i32 0, i32 2
  %10 = ptrtoint ptr %used_by_firmware_in_kb to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %used_by_firmware_in_kb, align 1
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %conv1 = zext i16 %12 to i32
  %used_by_driver_in_kb = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, ptr %add.ptr, i32 0, i32 3
  %13 = ptrtoint ptr %used_by_driver_in_kb to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %used_by_driver_in_kb, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv2 = zext i16 %15 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %conv1, i32 noundef %conv2) #6
  %16 = ptrtoint ptr %start_address_in_kb to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %start_address_in_kb, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %and = and i32 %18, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and)
  %cmp = icmp eq i32 %and, -2147483648
  br i1 %cmp, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %used_by_firmware_in_kb to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %used_by_firmware_in_kb, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv5 = zext i16 %21 to i32
  %shl = shl i32 %18, 10
  %conv9 = zext i32 %shl to i64
  %fw_vram_usage_start_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 22
  %22 = ptrtoint ptr %fw_vram_usage_start_offset to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv9, ptr %fw_vram_usage_start_offset, align 8
  %shl10 = shl nuw nsw i32 %conv5, 10
  %conv11 = zext i32 %shl10 to i64
  %fw_vram_usage_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 23
  %23 = ptrtoint ptr %fw_vram_usage_size to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv11, ptr %fw_vram_usage_size, align 8
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %if.then7, %entry.if.end16.thread_crit_edge
  %scratch_size_bytes48 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %scratch_size_bytes48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %scratch_size_bytes48, align 4
  br label %29

if.end16:                                         ; preds = %if.then
  %25 = ptrtoint ptr %used_by_driver_in_kb to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %used_by_driver_in_kb, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv14 = zext i16 %27 to i32
  %shl15 = shl nuw nsw i32 %conv14, 10
  %scratch_size_bytes = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %scratch_size_bytes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %scratch_size_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp17 = icmp eq i16 %26, 0
  br i1 %cmp17, label %if.end16._crit_edge, label %if.end16.if.end8.i.i_crit_edge

if.end16.if.end8.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

if.end16._crit_edge:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %29

29:                                               ; preds = %if.end16._crit_edge, %if.end16.thread
  %scratch_size_bytes51 = phi ptr [ %scratch_size_bytes48, %if.end16.thread ], [ %scratch_size_bytes, %if.end16._crit_edge ]
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %29, %if.end16.if.end8.i.i_crit_edge
  %scratch_size_bytes50 = phi ptr [ %scratch_size_bytes51, %29 ], [ %scratch_size_bytes, %if.end16.if.end8.i.i_crit_edge ]
  %30 = phi i32 [ 20480, %29 ], [ %shl15, %if.end16.if.end8.i.i_crit_edge ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #9
  %scratch = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i.i, ptr %scratch, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end24

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %scratch_size_bytes50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %scratch_size_bytes50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atomfirmware_get_vram_info(ptr noundef %adev, ptr noundef writeonly %vram_width, ptr noundef writeonly %vram_type, ptr noundef writeonly %vram_vendor) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #6
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #6
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #6
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !11
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 28, i32 30
  %6 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %7, i32 noundef %., ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and4 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %10 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info1, align 4
  %bios47 = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bios47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios47, align 4
  %14 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_offset, align 2
  %conv48 = zext i16 %15 to i32
  %add.ptr49 = getelementptr i8, ptr %13, i32 %conv48
  br i1 %tobool5.not, label %if.else45, label %if.then6

if.then6:                                         ; preds = %if.then2
  %16 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %frev, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.then6.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb23
  ]

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.then6
  %19 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %crev, align 1
  %.off = add i8 %20, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb10, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  %tobool15.not = icmp eq ptr %vram_width, null
  br i1 %tobool15.not, label %sw.bb10.if.end17_crit_edge, label %if.then16

sw.bb10.if.end17_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %umachannelnumber = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %add.ptr49, i32 0, i32 17
  %21 = ptrtoint ptr %umachannelnumber to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %umachannelnumber, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  %narrow333 = select i1 %tobool12.not, i8 1, i8 %22
  %spec.store.select = zext i8 %narrow333 to i32
  %mul = shl nuw nsw i32 %spec.store.select, 6
  %23 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %vram_width, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %sw.bb10.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %vram_type, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %memorytype = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %add.ptr49, i32 0, i32 16
  %24 = ptrtoint ptr %memorytype to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %memorytype, align 1
  %conv20 = zext i8 %25 to i32
  %call21 = call fastcc i32 @convert_atom_mem_type_to_vram_type(ptr noundef %adev, i32 noundef %conv20)
  %26 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call21, ptr %vram_type, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.then6
  %27 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %crev, align 1
  %.off334 = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off334)
  %switch335 = icmp ult i8 %.off334, 2
  br i1 %switch335, label %sw.bb25, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb23
  %tobool31.not = icmp eq ptr %vram_width, null
  br i1 %tobool31.not, label %sw.bb25.if.end34_crit_edge, label %if.then32

sw.bb25.if.end34_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %umachannelnumber26 = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %add.ptr49, i32 0, i32 9
  %29 = ptrtoint ptr %umachannelnumber26 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %umachannelnumber26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not = icmp eq i8 %30, 0
  %narrow = select i1 %tobool28.not, i8 1, i8 %30
  %spec.store.select222 = zext i8 %narrow to i32
  %mul33 = shl nuw nsw i32 %spec.store.select222, 6
  %31 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul33, ptr %vram_width, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %sw.bb25.if.end34_crit_edge
  %tobool36.not = icmp eq ptr %vram_type, null
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %memorytype35 = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %add.ptr49, i32 0, i32 8
  %32 = ptrtoint ptr %memorytype35 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %memorytype35, align 1
  %conv38 = zext i8 %33 to i32
  %call39 = call fastcc i32 @convert_atom_mem_type_to_vram_type(ptr noundef %adev, i32 noundef %conv38)
  %34 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call39, ptr %vram_type, align 4
  br label %cleanup

if.else45:                                        ; preds = %if.then2
  %bios_scratch_reg_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 28
  %35 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add = add i32 %36, 4
  %call50 = call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #6
  %and51 = lshr i32 %call50, 16
  %shr = and i32 %and51, 255
  %37 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %crev, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %38, label %if.else45.cleanup_crit_edge [
    i8 3, label %sw.bb53
    i8 4, label %sw.bb81
    i8 5, label %sw.bb122
    i8 6, label %sw.bb163
  ]

if.else45.cleanup_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb53:                                          ; preds = %if.else45
  %vram_module_num = getelementptr inbounds %struct.atom_vram_info_header_v2_3, ptr %add.ptr49, i32 0, i32 9
  %40 = ptrtoint ptr %vram_module_num to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vram_module_num, align 1
  %conv54 = zext i8 %41 to i32
  %vram_module58 = getelementptr inbounds %struct.atom_vram_info_header_v2_3, ptr %add.ptr49, i32 0, i32 13
  %42 = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv54)
  %.not360 = icmp ult i32 %42, %conv54
  br i1 %.not360, label %sw.bb53.while.body_crit_edge, label %sw.bb53.while.end_crit_edge

sw.bb53.while.end_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

sw.bb53.while.body_crit_edge:                     ; preds = %sw.bb53
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.bb53.while.body_crit_edge
  %vram_module.0349 = phi ptr [ %add.ptr62, %while.body.while.body_crit_edge ], [ %vram_module58, %sw.bb53.while.body_crit_edge ]
  %i.0348 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %sw.bb53.while.body_crit_edge ]
  %vram_module_size = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.0349, i32 0, i32 5
  %43 = ptrtoint ptr %vram_module_size to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %vram_module_size, align 1
  %conv61 = zext i16 %44 to i32
  %add.ptr62 = getelementptr i8, ptr %vram_module.0349, i32 %conv61
  %inc = add nuw nsw i32 %i.0348, 1
  %exitcond353.not = icmp eq i32 %inc, %shr
  br i1 %exitcond353.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sw.bb53.while.end_crit_edge
  %vram_module.0.lcssa = phi ptr [ %vram_module58, %sw.bb53.while.end_crit_edge ], [ %add.ptr62, %while.body.while.end_crit_edge ]
  %tobool63.not = icmp eq ptr %vram_type, null
  br i1 %tobool63.not, label %while.end.if.end67_crit_edge, label %if.then64

while.end.if.end67_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then64:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %memory_type = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.0.lcssa, i32 0, i32 7
  %45 = ptrtoint ptr %memory_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %memory_type, align 1
  %conv65 = zext i8 %46 to i32
  %call66 = call fastcc i32 @convert_atom_mem_type_to_vram_type(ptr noundef %adev, i32 noundef %conv65)
  %47 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call66, ptr %vram_type, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %while.end.if.end67_crit_edge
  %tobool70.not = icmp eq ptr %vram_width, null
  br i1 %tobool70.not, label %if.end67.if.end73_crit_edge, label %if.then71

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %channel_width = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.0.lcssa, i32 0, i32 9
  %48 = ptrtoint ptr %channel_width to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %channel_width, align 1
  %conv69 = zext i8 %49 to i32
  %channel_num = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.0.lcssa, i32 0, i32 8
  %50 = ptrtoint ptr %channel_num to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %channel_num, align 1
  %conv68 = zext i8 %51 to i32
  %mul72 = shl i32 %conv68, %conv69
  %52 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul72, ptr %vram_width, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end67.if.end73_crit_edge
  %tobool77.not = icmp eq ptr %vram_vendor, null
  br i1 %tobool77.not, label %if.end73.cleanup_crit_edge, label %if.then78

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %vender_rev_id = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.0.lcssa, i32 0, i32 12
  %53 = ptrtoint ptr %vender_rev_id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vender_rev_id, align 1
  %55 = and i8 %54, 15
  %conv79 = zext i8 %55 to i32
  %56 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv79, ptr %vram_vendor, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %if.else45
  %vram_module_num82 = getelementptr inbounds %struct.atom_vram_info_header_v2_4, ptr %add.ptr49, i32 0, i32 9
  %57 = ptrtoint ptr %vram_module_num82 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vram_module_num82, align 1
  %conv83 = zext i8 %58 to i32
  %vram_module88 = getelementptr inbounds %struct.atom_vram_info_header_v2_4, ptr %add.ptr49, i32 0, i32 13
  %59 = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv83)
  %.not358 = icmp ult i32 %59, %conv83
  br i1 %.not358, label %sw.bb81.while.body93_crit_edge, label %sw.bb81.while.end98_crit_edge

sw.bb81.while.end98_crit_edge:                    ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end98

sw.bb81.while.body93_crit_edge:                   ; preds = %sw.bb81
  br label %while.body93

while.body93:                                     ; preds = %while.body93.while.body93_crit_edge, %sw.bb81.while.body93_crit_edge
  %vram_module.1345 = phi ptr [ %add.ptr96, %while.body93.while.body93_crit_edge ], [ %vram_module88, %sw.bb81.while.body93_crit_edge ]
  %i.1344 = phi i32 [ %inc97, %while.body93.while.body93_crit_edge ], [ 0, %sw.bb81.while.body93_crit_edge ]
  %vram_module_size94 = getelementptr inbounds %struct.atom_vram_module_v10, ptr %vram_module.1345, i32 0, i32 5
  %60 = ptrtoint ptr %vram_module_size94 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %vram_module_size94, align 1
  %conv95 = zext i16 %61 to i32
  %add.ptr96 = getelementptr i8, ptr %vram_module.1345, i32 %conv95
  %inc97 = add nuw nsw i32 %i.1344, 1
  %exitcond352.not = icmp eq i32 %inc97, %shr
  br i1 %exitcond352.not, label %while.body93.while.end98_crit_edge, label %while.body93.while.body93_crit_edge

while.body93.while.body93_crit_edge:              ; preds = %while.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body93

while.body93.while.end98_crit_edge:               ; preds = %while.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end98

while.end98:                                      ; preds = %while.body93.while.end98_crit_edge, %sw.bb81.while.end98_crit_edge
  %vram_module.1.lcssa = phi ptr [ %vram_module88, %sw.bb81.while.end98_crit_edge ], [ %add.ptr96, %while.body93.while.end98_crit_edge ]
  %tobool100.not = icmp eq ptr %vram_type, null
  br i1 %tobool100.not, label %while.end98.if.end104_crit_edge, label %if.then101

while.end98.if.end104_crit_edge:                  ; preds = %while.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then101:                                       ; preds = %while.end98
  call void @__sanitizer_cov_trace_pc() #8
  %memory_type99 = getelementptr inbounds %struct.atom_vram_module_v10, ptr %vram_module.1.lcssa, i32 0, i32 7
  %62 = ptrtoint ptr %memory_type99 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %memory_type99, align 1
  %conv102 = zext i8 %63 to i32
  %call103 = call fastcc i32 @convert_atom_mem_type_to_vram_type(ptr noundef %adev, i32 noundef %conv102)
  %64 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call103, ptr %vram_type, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %while.end98.if.end104_crit_edge
  %tobool109.not = icmp eq ptr %vram_width, null
  br i1 %tobool109.not, label %if.end104.if.end113_crit_edge, label %if.then110

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then110:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %channel_width107 = getelementptr inbounds %struct.atom_vram_module_v10, ptr %vram_module.1.lcssa, i32 0, i32 9
  %65 = ptrtoint ptr %channel_width107 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %channel_width107, align 1
  %conv108 = zext i8 %66 to i32
  %channel_num105 = getelementptr inbounds %struct.atom_vram_module_v10, ptr %vram_module.1.lcssa, i32 0, i32 8
  %67 = ptrtoint ptr %channel_num105 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %channel_num105, align 1
  %conv106 = zext i8 %68 to i32
  %mul112 = shl i32 %conv106, %conv108
  %69 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul112, ptr %vram_width, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end104.if.end113_crit_edge
  %tobool118.not = icmp eq ptr %vram_vendor, null
  br i1 %tobool118.not, label %if.end113.cleanup_crit_edge, label %if.then119

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then119:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %vender_rev_id114 = getelementptr inbounds %struct.atom_vram_module_v10, ptr %vram_module.1.lcssa, i32 0, i32 12
  %70 = ptrtoint ptr %vender_rev_id114 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vender_rev_id114, align 1
  %72 = and i8 %71, 15
  %conv120 = zext i8 %72 to i32
  %73 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv120, ptr %vram_vendor, align 4
  br label %cleanup

sw.bb122:                                         ; preds = %if.else45
  %vram_module_num123 = getelementptr inbounds %struct.atom_vram_info_header_v2_5, ptr %add.ptr49, i32 0, i32 9
  %74 = ptrtoint ptr %vram_module_num123 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %vram_module_num123, align 1
  %conv124 = zext i8 %75 to i32
  %vram_module129 = getelementptr inbounds %struct.atom_vram_info_header_v2_5, ptr %add.ptr49, i32 0, i32 13
  %76 = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv124)
  %.not356 = icmp ult i32 %76, %conv124
  br i1 %.not356, label %sw.bb122.while.body134_crit_edge, label %sw.bb122.while.end139_crit_edge

sw.bb122.while.end139_crit_edge:                  ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end139

sw.bb122.while.body134_crit_edge:                 ; preds = %sw.bb122
  br label %while.body134

while.body134:                                    ; preds = %while.body134.while.body134_crit_edge, %sw.bb122.while.body134_crit_edge
  %vram_module.2341 = phi ptr [ %add.ptr137, %while.body134.while.body134_crit_edge ], [ %vram_module129, %sw.bb122.while.body134_crit_edge ]
  %i.2340 = phi i32 [ %inc138, %while.body134.while.body134_crit_edge ], [ 0, %sw.bb122.while.body134_crit_edge ]
  %vram_module_size135 = getelementptr inbounds %struct.atom_vram_module_v11, ptr %vram_module.2341, i32 0, i32 3
  %77 = ptrtoint ptr %vram_module_size135 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %vram_module_size135, align 1
  %conv136 = zext i16 %78 to i32
  %add.ptr137 = getelementptr i8, ptr %vram_module.2341, i32 %conv136
  %inc138 = add nuw nsw i32 %i.2340, 1
  %exitcond351.not = icmp eq i32 %inc138, %shr
  br i1 %exitcond351.not, label %while.body134.while.end139_crit_edge, label %while.body134.while.body134_crit_edge

while.body134.while.body134_crit_edge:            ; preds = %while.body134
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body134

while.body134.while.end139_crit_edge:             ; preds = %while.body134
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end139

while.end139:                                     ; preds = %while.body134.while.end139_crit_edge, %sw.bb122.while.end139_crit_edge
  %vram_module.2.lcssa = phi ptr [ %vram_module129, %sw.bb122.while.end139_crit_edge ], [ %add.ptr137, %while.body134.while.end139_crit_edge ]
  %tobool141.not = icmp eq ptr %vram_type, null
  br i1 %tobool141.not, label %while.end139.if.end145_crit_edge, label %if.then142

while.end139.if.end145_crit_edge:                 ; preds = %while.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then142:                                       ; preds = %while.end139
  call void @__sanitizer_cov_trace_pc() #8
  %memory_type140 = getelementptr inbounds %struct.atom_vram_module_v11, ptr %vram_module.2.lcssa, i32 0, i32 5
  %79 = ptrtoint ptr %memory_type140 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %memory_type140, align 1
  %conv143 = zext i8 %80 to i32
  %call144 = call fastcc i32 @convert_atom_mem_type_to_vram_type(ptr noundef %adev, i32 noundef %conv143)
  %81 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call144, ptr %vram_type, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %while.end139.if.end145_crit_edge
  %tobool150.not = icmp eq ptr %vram_width, null
  br i1 %tobool150.not, label %if.end145.if.end154_crit_edge, label %if.then151

if.end145.if.end154_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then151:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %channel_width148 = getelementptr inbounds %struct.atom_vram_module_v11, ptr %vram_module.2.lcssa, i32 0, i32 7
  %82 = ptrtoint ptr %channel_width148 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %channel_width148, align 1
  %conv149 = zext i8 %83 to i32
  %channel_num146 = getelementptr inbounds %struct.atom_vram_module_v11, ptr %vram_module.2.lcssa, i32 0, i32 6
  %84 = ptrtoint ptr %channel_num146 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %channel_num146, align 1
  %conv147 = zext i8 %85 to i32
  %mul153 = shl i32 %conv147, %conv149
  %86 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul153, ptr %vram_width, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end145.if.end154_crit_edge
  %tobool159.not = icmp eq ptr %vram_vendor, null
  br i1 %tobool159.not, label %if.end154.cleanup_crit_edge, label %if.then160

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then160:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  %vender_rev_id155 = getelementptr inbounds %struct.atom_vram_module_v11, ptr %vram_module.2.lcssa, i32 0, i32 11
  %87 = ptrtoint ptr %vender_rev_id155 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %vender_rev_id155, align 1
  %89 = and i8 %88, 15
  %conv161 = zext i8 %89 to i32
  %90 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv161, ptr %vram_vendor, align 4
  br label %cleanup

sw.bb163:                                         ; preds = %if.else45
  %vram_module_num164 = getelementptr inbounds %struct.atom_vram_info_header_v2_6, ptr %add.ptr49, i32 0, i32 9
  %91 = ptrtoint ptr %vram_module_num164 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %vram_module_num164, align 1
  %conv165 = zext i8 %92 to i32
  %vram_module170 = getelementptr inbounds %struct.atom_vram_info_header_v2_6, ptr %add.ptr49, i32 0, i32 13
  %93 = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %conv165)
  %.not = icmp ult i32 %93, %conv165
  br i1 %.not, label %sw.bb163.while.body175_crit_edge, label %sw.bb163.while.end180_crit_edge

sw.bb163.while.end180_crit_edge:                  ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end180

sw.bb163.while.body175_crit_edge:                 ; preds = %sw.bb163
  br label %while.body175

while.body175:                                    ; preds = %while.body175.while.body175_crit_edge, %sw.bb163.while.body175_crit_edge
  %vram_module.3338 = phi ptr [ %add.ptr178, %while.body175.while.body175_crit_edge ], [ %vram_module170, %sw.bb163.while.body175_crit_edge ]
  %i.3337 = phi i32 [ %inc179, %while.body175.while.body175_crit_edge ], [ 0, %sw.bb163.while.body175_crit_edge ]
  %vram_module_size176 = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.3338, i32 0, i32 5
  %94 = ptrtoint ptr %vram_module_size176 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %vram_module_size176, align 1
  %conv177 = zext i16 %95 to i32
  %add.ptr178 = getelementptr i8, ptr %vram_module.3338, i32 %conv177
  %inc179 = add nuw nsw i32 %i.3337, 1
  %exitcond.not = icmp eq i32 %inc179, %shr
  br i1 %exitcond.not, label %while.body175.while.end180_crit_edge, label %while.body175.while.body175_crit_edge

while.body175.while.body175_crit_edge:            ; preds = %while.body175
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body175

while.body175.while.end180_crit_edge:             ; preds = %while.body175
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end180

while.end180:                                     ; preds = %while.body175.while.end180_crit_edge, %sw.bb163.while.end180_crit_edge
  %vram_module.3.lcssa = phi ptr [ %vram_module170, %sw.bb163.while.end180_crit_edge ], [ %add.ptr178, %while.body175.while.end180_crit_edge ]
  %tobool182.not = icmp eq ptr %vram_type, null
  br i1 %tobool182.not, label %while.end180.if.end186_crit_edge, label %if.then183

while.end180.if.end186_crit_edge:                 ; preds = %while.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then183:                                       ; preds = %while.end180
  call void @__sanitizer_cov_trace_pc() #8
  %memory_type181 = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.3.lcssa, i32 0, i32 7
  %96 = ptrtoint ptr %memory_type181 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %memory_type181, align 1
  %conv184 = zext i8 %97 to i32
  %call185 = call fastcc i32 @convert_atom_mem_type_to_vram_type(ptr noundef %adev, i32 noundef %conv184)
  %98 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call185, ptr %vram_type, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %while.end180.if.end186_crit_edge
  %tobool191.not = icmp eq ptr %vram_width, null
  br i1 %tobool191.not, label %if.end186.if.end195_crit_edge, label %if.then192

if.end186.if.end195_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end195

if.then192:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %channel_width189 = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.3.lcssa, i32 0, i32 9
  %99 = ptrtoint ptr %channel_width189 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %channel_width189, align 1
  %conv190 = zext i8 %100 to i32
  %channel_num187 = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.3.lcssa, i32 0, i32 8
  %101 = ptrtoint ptr %channel_num187 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %channel_num187, align 1
  %conv188 = zext i8 %102 to i32
  %mul194 = shl i32 %conv188, %conv190
  %103 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul194, ptr %vram_width, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end186.if.end195_crit_edge
  %tobool200.not = icmp eq ptr %vram_vendor, null
  br i1 %tobool200.not, label %if.end195.cleanup_crit_edge, label %if.then201

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then201:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %vender_rev_id196 = getelementptr inbounds %struct.atom_vram_module_v9, ptr %vram_module.3.lcssa, i32 0, i32 12
  %104 = ptrtoint ptr %vender_rev_id196 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %vender_rev_id196, align 1
  %106 = and i8 %105, 15
  %conv202 = zext i8 %106 to i32
  %107 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv202, ptr %vram_vendor, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then201, %if.end195.cleanup_crit_edge, %if.then160, %if.end154.cleanup_crit_edge, %if.then119, %if.end113.cleanup_crit_edge, %if.then78, %if.end73.cleanup_crit_edge, %if.else45.cleanup_crit_edge, %if.then37, %if.end34.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %if.then19, %if.end17.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.else45.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end195.cleanup_crit_edge ], [ 0, %if.then201 ], [ 0, %if.end154.cleanup_crit_edge ], [ 0, %if.then160 ], [ 0, %if.end113.cleanup_crit_edge ], [ 0, %if.then119 ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %if.then78 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @convert_atom_mem_type_to_vram_type(ptr nocapture noundef readonly %adev, i32 noundef %atom_mem_type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %switch.tableidx = add i32 %atom_mem_type, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 17
  br i1 %2, label %switch.lookup, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = zext i32 %atom_mem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %atom_mem_type, label %sw.default7 [
    i32 80, label %if.else.if.end_crit_edge
    i32 96, label %if.else.sw.bb5_crit_edge
    i32 97, label %if.else.sw.bb5_crit_edge10
    i32 112, label %sw.bb6
  ]

if.else.sw.bb5_crit_edge10:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.else.sw.bb5_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb5:                                           ; preds = %if.else.sw.bb5_crit_edge, %if.else.sw.bb5_crit_edge10
  br label %if.end

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.default7:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.convert_atom_mem_type_to_vram_type, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %sw.default7, %sw.bb6, %sw.bb5, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %vram_type.0 = phi i32 [ 0, %sw.default7 ], [ 9, %sw.bb6 ], [ 6, %sw.bb5 ], [ 5, %if.else.if.end_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.if.end_crit_edge ]
  ret i32 %vram_type.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atomfirmware_mem_ecc_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #6
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #6
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #6
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !11
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 24, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  br i1 %cmp, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cond = icmp eq i8 %9, 3
  br i1 %cond, label %lor.rhs, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios, align 4
  %14 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_offset, align 2
  %conv5 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv5
  %umc_config126 = getelementptr inbounds %struct.atom_umc_info_v3_3, ptr %add.ptr, i32 0, i32 16
  %16 = ptrtoint ptr %umc_config126 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %umc_config126, align 1
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool31 = icmp ne i32 %18, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool31, %lor.rhs ], [ false, %if.then.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_atomfirmware_sram_ecc_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %0 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_atomfirmware_dynamic_boot_config_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %0 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atomfirmware_ras_rom_addr(ptr nocapture noundef readonly %adev, ptr noundef writeonly %i2c_address) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #6
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #6
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #6
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !11
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp5 = icmp ugt i8 %9, 3
  br i1 %cmp5, label %land.lhs.true.if.then10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp8 = icmp ugt i8 %7, 3
  br i1 %cmp8, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  %10 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios, align 4
  %14 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_offset, align 2
  %conv12 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv12
  %ras_rom_i2c_slave_addr = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %add.ptr, i32 0, i32 19
  %16 = ptrtoint ptr %ras_rom_i2c_slave_addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ras_rom_i2c_slave_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then10.cleanup_crit_edge, label %if.then13

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.then10
  %tobool14.not = icmp eq ptr %i2c_address, null
  br i1 %tobool14.not, label %if.then13.cleanup_crit_edge, label %if.then15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %i2c_address to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %i2c_address, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then13.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then15 ], [ true, %if.then13.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.then10.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atomfirmware_get_clock_info(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %spll2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1
  %mpll4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #6
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #6
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %4, i32 noundef 4, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %bootup_sclk_in10khz = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %add.ptr, i32 0, i32 2
  %11 = ptrtoint ptr %bootup_sclk_in10khz to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %bootup_sclk_in10khz, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %default_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 4
  %14 = ptrtoint ptr %default_sclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %default_sclk, align 4
  %bootup_mclk_in10khz = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %add.ptr, i32 0, i32 3
  %15 = ptrtoint ptr %bootup_mclk_in10khz to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %bootup_mclk_in10khz, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %default_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 3
  %18 = ptrtoint ptr %default_mclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %default_mclk, align 4
  %current_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 1
  %19 = ptrtoint ptr %current_sclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %current_sclk, align 4
  %current_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 2
  %20 = ptrtoint ptr %current_mclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %current_mclk, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ]
  %21 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mode_info1, align 4
  %call14 = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %22, i32 noundef 8, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call14, label %if.then15, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mode_info1, align 4
  %bios17 = getelementptr inbounds %struct.atom_context, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %bios17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bios17, align 4
  %27 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data_offset, align 2
  %conv18 = zext i16 %28 to i32
  %add.ptr19 = getelementptr i8, ptr %26, i32 %conv18
  %core_refclk_10khz = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %add.ptr19, i32 0, i32 9
  %29 = ptrtoint ptr %core_refclk_10khz to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %core_refclk_10khz, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %spll2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %spll2, align 4
  %reference_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 1
  %33 = ptrtoint ptr %reference_div to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %reference_div, align 4
  %min_post_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 12
  %34 = ptrtoint ptr %min_post_div to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %min_post_div, align 4
  %max_post_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 13
  %35 = ptrtoint ptr %max_post_div to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %max_post_div, align 4
  %min_ref_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 10
  %36 = ptrtoint ptr %min_ref_div to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %min_ref_div, align 4
  %max_ref_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 11
  %37 = ptrtoint ptr %max_ref_div to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 255, ptr %max_ref_div, align 4
  %min_feedback_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 14
  %38 = ptrtoint ptr %min_feedback_div to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %min_feedback_div, align 4
  %max_feedback_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 15
  %39 = ptrtoint ptr %max_feedback_div to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 255, ptr %max_feedback_div, align 4
  %best_vco = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 9
  %40 = ptrtoint ptr %best_vco to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %best_vco, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end.if.end20_crit_edge
  %ret.1 = phi i32 [ 0, %if.then15 ], [ %ret.0, %if.end.if.end20_crit_edge ]
  %41 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mode_info1, align 4
  %call22 = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %42, i32 noundef 24, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call22, label %if.then23, label %if.end20.if.end37_crit_edge

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mode_info1, align 4
  %bios25 = getelementptr inbounds %struct.atom_context, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %bios25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bios25, align 4
  %47 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %data_offset, align 2
  %conv26 = zext i16 %48 to i32
  %add.ptr27 = getelementptr i8, ptr %46, i32 %conv26
  %mem_refclk_10khz = getelementptr inbounds %struct.atom_umc_info_v3_1, ptr %add.ptr27, i32 0, i32 12
  %49 = ptrtoint ptr %mem_refclk_10khz to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %mem_refclk_10khz, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %mpll4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mpll4, align 4
  %reference_div29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 1
  %53 = ptrtoint ptr %reference_div29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %reference_div29, align 4
  %min_post_div30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 12
  %54 = ptrtoint ptr %min_post_div30 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %min_post_div30, align 4
  %max_post_div31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 13
  %55 = ptrtoint ptr %max_post_div31 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %max_post_div31, align 4
  %min_ref_div32 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 10
  %56 = ptrtoint ptr %min_ref_div32 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %min_ref_div32, align 4
  %max_ref_div33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 11
  %57 = ptrtoint ptr %max_ref_div33 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 255, ptr %max_ref_div33, align 4
  %min_feedback_div34 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 14
  %58 = ptrtoint ptr %min_feedback_div34 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %min_feedback_div34, align 4
  %max_feedback_div35 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 15
  %59 = ptrtoint ptr %max_feedback_div35 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 255, ptr %max_feedback_div35, align 4
  %best_vco36 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 9
  %60 = ptrtoint ptr %best_vco36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %best_vco36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then23, %if.end20.if.end37_crit_edge
  %ret.2 = phi i32 [ 0, %if.then23 ], [ %ret.1, %if.end20.if.end37_crit_edge ]
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %61 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %62)
  %cmp = icmp ugt i32 %62, 25
  br i1 %cmp, label %if.then39, label %if.end37.if.end57_crit_edge

if.end37.if.end57_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then39:                                        ; preds = %if.end37
  %63 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mode_info1, align 4
  %call41 = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %64, i32 noundef 14, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call41, label %if.then42, label %if.then39.if.end57_crit_edge

if.then39.if.end57_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then42:                                        ; preds = %if.then39
  %65 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mode_info1, align 4
  %bios44 = getelementptr inbounds %struct.atom_context, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %bios44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bios44, align 4
  %69 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %data_offset, align 2
  %conv45 = zext i16 %70 to i32
  %add.ptr46 = getelementptr i8, ptr %68, i32 %conv45
  %71 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp48 = icmp eq i8 %72, 2
  br i1 %cmp48, label %land.lhs.true, label %if.then42.if.end57_crit_edge

if.then42.if.end57_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then42
  %73 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp51 = icmp ugt i8 %74, 1
  br i1 %cmp51, label %if.then53, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %rlc_gpu_timer_refclk = getelementptr inbounds %struct.atom_gfx_info_v2_2, ptr %add.ptr46, i32 0, i32 16
  %75 = ptrtoint ptr %rlc_gpu_timer_refclk to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %rlc_gpu_timer_refclk, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %spll2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %spll2, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %land.lhs.true.if.end57_crit_edge, %if.then42.if.end57_crit_edge, %if.then39.if.end57_crit_edge, %if.end37.if.end57_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.then39.if.end57_crit_edge ], [ %ret.2, %if.end37.if.end57_crit_edge ], [ 0, %if.then53 ], [ 0, %land.lhs.true.if.end57_crit_edge ], [ 0, %if.then42.if.end57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #6
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atomfirmware_get_gfx_info(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #6
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #6
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %4, i32 noundef 14, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.then, label %entry.cleanup119_crit_edge

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %11 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %crev, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %12, label %if.then.cleanup119_crit_edge [
    i8 4, label %sw.bb
    i8 7, label %sw.bb48
  ]

if.then.cleanup119_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %max_shader_engines = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 3
  %14 = ptrtoint ptr %max_shader_engines to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_shader_engines, align 1
  %conv4 = zext i8 %15 to i32
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv4, ptr %config, align 8
  %max_cu_per_sh = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 5
  %17 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_cu_per_sh, align 1
  %conv6 = zext i8 %18 to i32
  %max_cu_per_sh9 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %19 = ptrtoint ptr %max_cu_per_sh9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv6, ptr %max_cu_per_sh9, align 8
  %max_sh_per_se = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 6
  %20 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_sh_per_se, align 1
  %conv10 = zext i8 %21 to i32
  %max_sh_per_se13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %22 = ptrtoint ptr %max_sh_per_se13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv10, ptr %max_sh_per_se13, align 4
  %max_backends_per_se = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 7
  %23 = ptrtoint ptr %max_backends_per_se to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_backends_per_se, align 1
  %conv14 = zext i8 %24 to i32
  %max_backends_per_se17 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %25 = ptrtoint ptr %max_backends_per_se17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv14, ptr %max_backends_per_se17, align 8
  %max_texture_channel_caches = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 8
  %26 = ptrtoint ptr %max_texture_channel_caches to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_texture_channel_caches, align 1
  %conv18 = zext i8 %27 to i32
  %max_texture_channel_caches21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 5
  %28 = ptrtoint ptr %max_texture_channel_caches21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv18, ptr %max_texture_channel_caches21, align 4
  %gc_num_gprs = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 20
  %29 = ptrtoint ptr %gc_num_gprs to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %gc_num_gprs, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %conv22 = zext i16 %31 to i32
  %max_gprs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 6
  %32 = ptrtoint ptr %max_gprs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv22, ptr %max_gprs, align 8
  %gc_num_max_gs_thds = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 26
  %33 = ptrtoint ptr %gc_num_max_gs_thds to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %gc_num_max_gs_thds, align 1
  %conv25 = zext i8 %34 to i32
  %max_gs_threads = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 7
  %35 = ptrtoint ptr %max_gs_threads to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv25, ptr %max_gs_threads, align 4
  %gc_gs_table_depth = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 27
  %36 = ptrtoint ptr %gc_gs_table_depth to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %gc_gs_table_depth, align 1
  %conv28 = zext i8 %37 to i32
  %gs_vgt_table_depth = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 25
  %38 = ptrtoint ptr %gs_vgt_table_depth to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv28, ptr %gs_vgt_table_depth, align 4
  %gc_gsprim_buff_depth = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 21
  %39 = ptrtoint ptr %gc_gsprim_buff_depth to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %gc_gsprim_buff_depth, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv31 = zext i16 %41 to i32
  %gs_prim_buffer_depth = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 26
  %42 = ptrtoint ptr %gs_prim_buffer_depth to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv31, ptr %gs_prim_buffer_depth, align 8
  %gc_double_offchip_lds_buffer = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 28
  %43 = ptrtoint ptr %gc_double_offchip_lds_buffer to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gc_double_offchip_lds_buffer, align 1
  %conv34 = zext i8 %44 to i32
  %double_offchip_lds_buf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 31
  %45 = ptrtoint ptr %double_offchip_lds_buf to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv34, ptr %double_offchip_lds_buf, align 4
  %gc_wave_size = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 23
  %46 = ptrtoint ptr %gc_wave_size to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %gc_wave_size, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %conv37 = zext i16 %48 to i32
  %wave_front_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 2
  %49 = ptrtoint ptr %wave_front_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv37, ptr %wave_front_size, align 8
  %gc_max_waves_per_simd = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 24
  %50 = ptrtoint ptr %gc_max_waves_per_simd to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %gc_max_waves_per_simd, align 1
  %52 = call i16 @llvm.bswap.i16(i16 %51)
  %conv39 = zext i16 %52 to i32
  %max_waves_per_simd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 1
  %53 = ptrtoint ptr %max_waves_per_simd to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv39, ptr %max_waves_per_simd, align 4
  %gc_max_scratch_slots_per_cu = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 29
  %54 = ptrtoint ptr %gc_max_scratch_slots_per_cu to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %gc_max_scratch_slots_per_cu, align 1
  %conv42 = zext i8 %55 to i32
  %max_scratch_slots_per_cu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 3
  %56 = ptrtoint ptr %max_scratch_slots_per_cu to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv42, ptr %max_scratch_slots_per_cu, align 4
  %gc_lds_size = getelementptr inbounds %struct.atom_gfx_info_v2_4, ptr %add.ptr, i32 0, i32 25
  br label %cleanup119.sink.split

sw.bb48:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %max_shader_engines49 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 3
  %57 = ptrtoint ptr %max_shader_engines49 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %max_shader_engines49, align 1
  %conv50 = zext i8 %58 to i32
  %config52 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %59 = ptrtoint ptr %config52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv50, ptr %config52, align 8
  %max_cu_per_sh54 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 5
  %60 = ptrtoint ptr %max_cu_per_sh54 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %max_cu_per_sh54, align 1
  %conv55 = zext i8 %61 to i32
  %max_cu_per_sh58 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %62 = ptrtoint ptr %max_cu_per_sh58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv55, ptr %max_cu_per_sh58, align 8
  %max_sh_per_se59 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 6
  %63 = ptrtoint ptr %max_sh_per_se59 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %max_sh_per_se59, align 1
  %conv60 = zext i8 %64 to i32
  %max_sh_per_se63 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %65 = ptrtoint ptr %max_sh_per_se63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv60, ptr %max_sh_per_se63, align 4
  %max_backends_per_se64 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 7
  %66 = ptrtoint ptr %max_backends_per_se64 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_backends_per_se64, align 1
  %conv65 = zext i8 %67 to i32
  %max_backends_per_se68 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %68 = ptrtoint ptr %max_backends_per_se68 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv65, ptr %max_backends_per_se68, align 8
  %max_texture_channel_caches69 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 8
  %69 = ptrtoint ptr %max_texture_channel_caches69 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %max_texture_channel_caches69, align 1
  %conv70 = zext i8 %70 to i32
  %max_texture_channel_caches73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 5
  %71 = ptrtoint ptr %max_texture_channel_caches73 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv70, ptr %max_texture_channel_caches73, align 4
  %gc_num_gprs74 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 20
  %72 = ptrtoint ptr %gc_num_gprs74 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %gc_num_gprs74, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73)
  %conv75 = zext i16 %74 to i32
  %max_gprs78 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 6
  %75 = ptrtoint ptr %max_gprs78 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv75, ptr %max_gprs78, align 8
  %gc_num_max_gs_thds79 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 26
  %76 = ptrtoint ptr %gc_num_max_gs_thds79 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %gc_num_max_gs_thds79, align 1
  %conv80 = zext i8 %77 to i32
  %max_gs_threads83 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 7
  %78 = ptrtoint ptr %max_gs_threads83 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv80, ptr %max_gs_threads83, align 4
  %gc_gs_table_depth84 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 27
  %79 = ptrtoint ptr %gc_gs_table_depth84 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %gc_gs_table_depth84, align 1
  %conv85 = zext i8 %80 to i32
  %gs_vgt_table_depth88 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 25
  %81 = ptrtoint ptr %gs_vgt_table_depth88 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv85, ptr %gs_vgt_table_depth88, align 4
  %gc_gsprim_buff_depth89 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 21
  %82 = ptrtoint ptr %gc_gsprim_buff_depth89 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %gc_gsprim_buff_depth89, align 1
  %84 = call i16 @llvm.bswap.i16(i16 %83)
  %conv90 = zext i16 %84 to i32
  %gs_prim_buffer_depth93 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 26
  %85 = ptrtoint ptr %gs_prim_buffer_depth93 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv90, ptr %gs_prim_buffer_depth93, align 8
  %gc_double_offchip_lds_buffer94 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 28
  %86 = ptrtoint ptr %gc_double_offchip_lds_buffer94 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %gc_double_offchip_lds_buffer94, align 1
  %conv95 = zext i8 %87 to i32
  %double_offchip_lds_buf98 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 31
  %88 = ptrtoint ptr %double_offchip_lds_buf98 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv95, ptr %double_offchip_lds_buf98, align 4
  %gc_wave_size99 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 23
  %89 = ptrtoint ptr %gc_wave_size99 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %gc_wave_size99, align 1
  %91 = call i16 @llvm.bswap.i16(i16 %90)
  %conv100 = zext i16 %91 to i32
  %wave_front_size103 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 2
  %92 = ptrtoint ptr %wave_front_size103 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv100, ptr %wave_front_size103, align 8
  %gc_max_waves_per_simd104 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 24
  %93 = ptrtoint ptr %gc_max_waves_per_simd104 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %gc_max_waves_per_simd104, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94)
  %conv105 = zext i16 %95 to i32
  %max_waves_per_simd108 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 1
  %96 = ptrtoint ptr %max_waves_per_simd108 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv105, ptr %max_waves_per_simd108, align 4
  %gc_max_scratch_slots_per_cu109 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 29
  %97 = ptrtoint ptr %gc_max_scratch_slots_per_cu109 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %gc_max_scratch_slots_per_cu109, align 1
  %conv110 = zext i8 %98 to i32
  %max_scratch_slots_per_cu113 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 3
  %99 = ptrtoint ptr %max_scratch_slots_per_cu113 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv110, ptr %max_scratch_slots_per_cu113, align 4
  %gc_lds_size114 = getelementptr inbounds %struct.atom_gfx_info_v2_7, ptr %add.ptr, i32 0, i32 25
  br label %cleanup119.sink.split

cleanup119.sink.split:                            ; preds = %sw.bb48, %sw.bb
  %gc_lds_size.sink = phi ptr [ %gc_lds_size, %sw.bb ], [ %gc_lds_size114, %sw.bb48 ]
  %100 = ptrtoint ptr %gc_lds_size.sink to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %gc_lds_size.sink, align 1
  %102 = call i16 @llvm.bswap.i16(i16 %101)
  %conv45 = zext i16 %102 to i32
  %lds_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 4
  %103 = ptrtoint ptr %lds_size to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv45, ptr %lds_size, align 8
  br label %cleanup119

cleanup119:                                       ; preds = %cleanup119.sink.split, %if.then.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup119_crit_edge ], [ -22, %entry.cleanup119_crit_edge ], [ 0, %cleanup119.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_atomfirmware_mem_training_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %0 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atomfirmware_get_fw_reserved_fb_size(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #6
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #6
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #6
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !11
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 4
  %8 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  %10 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.not = icmp eq i8 %11, 3
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cond = icmp eq i8 %13, 4
  br i1 %cond, label %sw.bb, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %fw_reserved_size_in_kb = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %add.ptr, i32 0, i32 31
  %14 = ptrtoint ptr %fw_reserved_size_in_kb to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fw_reserved_size_in_kb, align 1
  %shl = shl i32 %15, 10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %shl, %sw.bb ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c", i32 116, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
