; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/vega20_reg_init.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/vega20_reg_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.IP_BASE = type { [6 x %struct.IP_BASE_INSTANCE] }
%struct.IP_BASE_INSTANCE = type { [6 x i32] }
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

@GC_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 8192, i32 40960, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@HDP_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 3872, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@MMHUB_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 106496, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@ATHUB_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 3104, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@NBIO_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 0, i32 20, i32 3360, i32 66560, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@MP0_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 90112, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@MP1_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 90112, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@UVD_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 30720, i32 32256, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE { [6 x i32] [i32 0, i32 36864, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@VCE_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 32256, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@DF_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 28672, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@DCE_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 18, i32 192, i32 13504, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@OSSSYS_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 4256, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@SDMA0_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 4704, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@SDMA1_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 6240, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@SMUIO_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 92160, i32 92672, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@THM_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 91648, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@CLK_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 93184, i32 93696, i32 94208, i32 94720, i32 110592, i32 111104] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@UMC_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 81920, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@RSMU_BASE = internal constant { %struct.IP_BASE, [48 x i8] } { %struct.IP_BASE { [6 x %struct.IP_BASE_INSTANCE] [%struct.IP_BASE_INSTANCE { [6 x i32] [i32 73728, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer, %struct.IP_BASE_INSTANCE zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [48 x i8] c"../drivers/gpu/drm/amd/amdgpu/vega20_reg_init.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"GC_BASE\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 69, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"HDP_BASE\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 75, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"MMHUB_BASE\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 81, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"ATHUB_BASE\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 39, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"NBIO_BASE\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 99, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"MP0_BASE\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 87, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"MP1_BASE\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 93, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"UVD_BASE\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 141, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"VCE_BASE\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 148, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"DF_BASE\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 57, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"DCE_BASE\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 51, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"OSSSYS_BASE\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 105, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"SDMA0_BASE\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 111, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"SDMA1_BASE\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 117, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"SMUIO_BASE\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 123, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"THM_BASE\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 129, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"CLK_BASE\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 45, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"UMC_BASE\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 135, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"RSMU_BASE\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 160, i32 29 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @GC_BASE, ptr @HDP_BASE, ptr @MMHUB_BASE, ptr @ATHUB_BASE, ptr @NBIO_BASE, ptr @MP0_BASE, ptr @MP1_BASE, ptr @UVD_BASE, ptr @VCE_BASE, ptr @DF_BASE, ptr @DCE_BASE, ptr @OSSSYS_BASE, ptr @SDMA0_BASE, ptr @SDMA1_BASE, ptr @SMUIO_BASE, ptr @THM_BASE, ptr @CLK_BASE, ptr @UMC_BASE, ptr @RSMU_BASE], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GC_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HDP_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MMHUB_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ATHUB_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NBIO_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MP0_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MP1_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UVD_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VCE_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DF_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DCE_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OSSSYS_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SDMA0_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SDMA1_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMUIO_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @THM_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CLK_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UMC_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSMU_BASE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @vega20_reg_base_init(ptr nocapture noundef writeonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0139 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @GC_BASE, i32 0, i32 %i.0139
  %arrayidx2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1, i32 %i.0139
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @HDP_BASE, i32 0, i32 %i.0139
  %arrayidx6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2, i32 %i.0139
  %1 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx3, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @MMHUB_BASE, i32 0, i32 %i.0139
  %arrayidx10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11, i32 %i.0139
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx7, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @ATHUB_BASE, i32 0, i32 %i.0139
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 12, i32 %i.0139
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx11, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @NBIO_BASE, i32 0, i32 %i.0139
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13, i32 %i.0139
  %4 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx15, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @MP0_BASE, i32 0, i32 %i.0139
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 14, i32 %i.0139
  %5 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx19, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @MP1_BASE, i32 0, i32 %i.0139
  %arrayidx26 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15, i32 %i.0139
  %6 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx23, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @UVD_BASE, i32 0, i32 %i.0139
  %arrayidx30 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %i.0139
  %7 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx27, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @VCE_BASE, i32 0, i32 %i.0139
  %arrayidx34 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 18, i32 %i.0139
  %8 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx31, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @DF_BASE, i32 0, i32 %i.0139
  %arrayidx38 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19, i32 %i.0139
  %9 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx35, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @DCE_BASE, i32 0, i32 %i.0139
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20, i32 %i.0139
  %10 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx39, ptr %arrayidx42, align 4
  %arrayidx43 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @OSSSYS_BASE, i32 0, i32 %i.0139
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21, i32 %i.0139
  %11 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx43, ptr %arrayidx46, align 4
  %arrayidx47 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @SDMA0_BASE, i32 0, i32 %i.0139
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3, i32 %i.0139
  %12 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx47, ptr %arrayidx50, align 4
  %arrayidx51 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @SDMA1_BASE, i32 0, i32 %i.0139
  %arrayidx54 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4, i32 %i.0139
  %13 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx51, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @SMUIO_BASE, i32 0, i32 %i.0139
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 22, i32 %i.0139
  %14 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx55, ptr %arrayidx58, align 4
  %arrayidx62 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 24, i32 %i.0139
  %15 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx15, ptr %arrayidx62, align 4
  %arrayidx63 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @THM_BASE, i32 0, i32 %i.0139
  %arrayidx66 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25, i32 %i.0139
  %16 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx63, ptr %arrayidx66, align 4
  %arrayidx67 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @CLK_BASE, i32 0, i32 %i.0139
  %arrayidx70 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 26, i32 %i.0139
  %17 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx67, ptr %arrayidx70, align 4
  %arrayidx71 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @UMC_BASE, i32 0, i32 %i.0139
  %arrayidx74 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27, i32 %i.0139
  %18 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx71, ptr %arrayidx74, align 4
  %arrayidx75 = getelementptr [6 x %struct.IP_BASE_INSTANCE], ptr @RSMU_BASE, i32 0, i32 %i.0139
  %arrayidx78 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 28, i32 %i.0139
  %19 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx75, ptr %arrayidx78, align 4
  %inc = add nuw nsw i32 %i.0139, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vega20_doorbell_index_init(ptr noundef writeonly %adev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %doorbell_index = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144
  %0 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %doorbell_index, align 4
  %mec_ring0 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 1
  %1 = ptrtoint ptr %mec_ring0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %mec_ring0, align 4
  %mec_ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 2
  %2 = ptrtoint ptr %mec_ring1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %mec_ring1, align 4
  %mec_ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 3
  %3 = ptrtoint ptr %mec_ring2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %mec_ring2, align 4
  %mec_ring3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 4
  %4 = ptrtoint ptr %mec_ring3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %mec_ring3, align 4
  %mec_ring4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 5
  %5 = ptrtoint ptr %mec_ring4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %mec_ring4, align 4
  %mec_ring5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 6
  %6 = ptrtoint ptr %mec_ring5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %mec_ring5, align 4
  %mec_ring6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 7
  %7 = ptrtoint ptr %mec_ring6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %mec_ring6, align 4
  %mec_ring7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 8
  %8 = ptrtoint ptr %mec_ring7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %mec_ring7, align 4
  %userqueue_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 9
  %9 = ptrtoint ptr %userqueue_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 11, ptr %userqueue_start, align 4
  %userqueue_end = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 10
  %10 = ptrtoint ptr %userqueue_end to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 138, ptr %userqueue_end, align 4
  %gfx_ring0 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 11
  %11 = ptrtoint ptr %gfx_ring0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 139, ptr %gfx_ring0, align 4
  %sdma_engine = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13
  %12 = ptrtoint ptr %sdma_engine to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 256, ptr %sdma_engine, align 4
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 266, ptr %arrayidx15, align 4
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 2
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 276, ptr %arrayidx18, align 4
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 3
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 286, ptr %arrayidx21, align 4
  %arrayidx24 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 4
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 296, ptr %arrayidx24, align 4
  %arrayidx27 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 5
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 306, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 6
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 316, ptr %arrayidx30, align 4
  %arrayidx33 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 7
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 326, ptr %arrayidx33, align 4
  %ih = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 15
  %20 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 376, ptr %ih, align 4
  %21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16
  %uvd_ring2_3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 1
  %uvd_ring4_5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 2
  %uvd_ring6_7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 3
  %vce_ring0_1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 4
  %22 = ptrtoint ptr %vce_ring0_1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 396, ptr %vce_ring0_1, align 4
  %vce_ring2_3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 5
  %23 = ptrtoint ptr %vce_ring2_3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 397, ptr %vce_ring2_3, align 4
  %vce_ring4_5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 6
  %24 = ptrtoint ptr %vce_ring4_5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 398, ptr %vce_ring4_5, align 4
  %vce_ring6_7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 7
  %25 = ptrtoint ptr %vce_ring6_7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 399, ptr %vce_ring6_7, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 392, ptr %21, align 4
  %27 = ptrtoint ptr %uvd_ring2_3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 393, ptr %uvd_ring2_3, align 4
  %28 = ptrtoint ptr %uvd_ring4_5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 394, ptr %uvd_ring4_5, align 4
  %29 = ptrtoint ptr %uvd_ring6_7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 395, ptr %uvd_ring6_7, align 4
  %first_non_cp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 17
  %30 = ptrtoint ptr %first_non_cp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %first_non_cp, align 4
  %last_non_cp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 18
  %31 = ptrtoint ptr %last_non_cp to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 399, ptr %last_non_cp, align 4
  %max_assignment = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 19
  %32 = ptrtoint ptr %max_assignment to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 798, ptr %max_assignment, align 4
  %sdma_doorbell_range = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 20
  %33 = ptrtoint ptr %sdma_doorbell_range to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 20, ptr %sdma_doorbell_range, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @GC_BASE, !1, !"GC_BASE", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 69, i32 29}
!2 = !{ptr @HDP_BASE, !3, !"HDP_BASE", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 75, i32 29}
!4 = !{ptr @MMHUB_BASE, !5, !"MMHUB_BASE", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 81, i32 29}
!6 = !{ptr @ATHUB_BASE, !7, !"ATHUB_BASE", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 39, i32 29}
!8 = !{ptr @NBIO_BASE, !9, !"NBIO_BASE", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 99, i32 29}
!10 = !{ptr @MP0_BASE, !11, !"MP0_BASE", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 87, i32 29}
!12 = !{ptr @MP1_BASE, !13, !"MP1_BASE", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 93, i32 29}
!14 = !{ptr @UVD_BASE, !15, !"UVD_BASE", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 141, i32 29}
!16 = !{ptr @VCE_BASE, !17, !"VCE_BASE", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 148, i32 29}
!18 = !{ptr @DF_BASE, !19, !"DF_BASE", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 57, i32 29}
!20 = !{ptr @DCE_BASE, !21, !"DCE_BASE", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 51, i32 29}
!22 = !{ptr @OSSSYS_BASE, !23, !"OSSSYS_BASE", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 105, i32 29}
!24 = !{ptr @SDMA0_BASE, !25, !"SDMA0_BASE", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 111, i32 29}
!26 = !{ptr @SDMA1_BASE, !27, !"SDMA1_BASE", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 117, i32 29}
!28 = !{ptr @SMUIO_BASE, !29, !"SMUIO_BASE", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 123, i32 29}
!30 = !{ptr @THM_BASE, !31, !"THM_BASE", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 129, i32 29}
!32 = !{ptr @CLK_BASE, !33, !"CLK_BASE", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 45, i32 29}
!34 = !{ptr @UMC_BASE, !35, !"UMC_BASE", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 135, i32 29}
!36 = !{ptr @RSMU_BASE, !37, !"RSMU_BASE", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega20_ip_offset.h", i32 160, i32 29}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
