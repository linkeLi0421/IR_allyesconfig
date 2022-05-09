; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_xgmi_ras_funcs = type { ptr, ptr, ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_umc_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmhub_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_ras_funcs = type { ptr, ptr, ptr, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@amdgpu_vram_limit = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_gmc_vram_location._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_gmc_vram_location\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_gmc_vram_location._entry_ptr = internal global ptr @amdgpu_gmc_vram_location._entry, section ".printk_index", align 4
@amdgpu_gmc_sysvm_location._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_gmc_sysvm_location\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_gmc_sysvm_location._entry_ptr = internal global ptr @amdgpu_gmc_sysvm_location._entry, section ".printk_index", align 4
@amdgpu_gmc_sysvm_location._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: GART: %lluM 0x%016llX - 0x%016llX\0A\00", [53 x i8] zeroinitializer }, align 32
@amdgpu_gmc_sysvm_location._entry_ptr.8 = internal global ptr @amdgpu_gmc_sysvm_location._entry.6, section ".printk_index", align 4
@amdgpu_gmc_gart_location._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 274, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: limiting GART\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_gmc_gart_location\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_gmc_gart_location._entry_ptr = internal global ptr @amdgpu_gmc_gart_location._entry, section ".printk_index", align 4
@amdgpu_gmc_gart_location._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@amdgpu_gmc_gart_location._entry_ptr.13 = internal global ptr @amdgpu_gmc_gart_location._entry.12, section ".printk_index", align 4
@amdgpu_gmc_agp_location._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: AGP: %lluM 0x%016llX - 0x%016llX\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu_gmc_agp_location\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_gmc_agp_location._entry_ptr = internal global ptr @amdgpu_gmc_agp_location._entry, section ".printk_index", align 4
@xgmi_ras_funcs = external dso_local constant %struct.amdgpu_xgmi_ras_funcs, align 4
@__const.amdgpu_gmc_allocate_vm_inv_eng.vm_inv_engs = private unnamed_addr constant [3 x i32] [i32 131059, i32 131059, i32 131059], align 4
@amdgpu_gmc_allocate_vm_inv_eng._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 546, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: no VM inv eng for ring %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu_gmc_allocate_vm_inv_eng\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_gmc_allocate_vm_inv_eng._entry_ptr = internal global ptr @amdgpu_gmc_allocate_vm_inv_eng._entry, section ".printk_index", align 4
@amdgpu_gmc_allocate_vm_inv_eng._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: ring %s uses VM inv eng %u on hub %u\0A\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_gmc_allocate_vm_inv_eng._entry_ptr.21 = internal global ptr @amdgpu_gmc_allocate_vm_inv_eng._entry.19, section ".printk_index", align 4
@amdgpu_tmz = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_gmc_tmz_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 575, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: Trusted Memory Zone (TMZ) feature disabled (cmd line)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu_gmc_tmz_set\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_gmc_tmz_set._entry_ptr = internal global ptr @amdgpu_gmc_tmz_set._entry, section ".printk_index", align 4
@amdgpu_gmc_tmz_set._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 579, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Trusted Memory Zone (TMZ) feature enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_gmc_tmz_set._entry_ptr.26 = internal global ptr @amdgpu_gmc_tmz_set._entry.24, section ".printk_index", align 4
@amdgpu_gmc_tmz_set._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 592, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"amdgpu: Trusted Memory Zone (TMZ) feature disabled as experimental (default)\0A\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_gmc_tmz_set._entry_ptr.29 = internal global ptr @amdgpu_gmc_tmz_set._entry.27, section ".printk_index", align 4
@amdgpu_gmc_tmz_set._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 596, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"amdgpu: Trusted Memory Zone (TMZ) feature enabled as experimental (cmd line)\0A\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_gmc_tmz_set._entry_ptr.32 = internal global ptr @amdgpu_gmc_tmz_set._entry.30, section ".printk_index", align 4
@amdgpu_gmc_tmz_set._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 602, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: Trusted Memory Zone (TMZ) feature not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_gmc_tmz_set._entry_ptr.35 = internal global ptr @amdgpu_gmc_tmz_set._entry.33, section ".printk_index", align 4
@amdgpu_noretry = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_discovery = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.38, i32 179, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@switch.table.amdgpu_gmc_get_vbios_allocations = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00\00\01\00\01", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [9 x i64] [i64 7, i64 32, i64 22, i64 24, i64 26, i64 28, i64 29, i64 32, i64 35]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 19, i64 21, i64 23, i64 25]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 212, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 243, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 246, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 274, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 286, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 334, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 545, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 553, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 574, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 578, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 591, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 595, i32 4 }
@___asan_gen_.147 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 601, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 179, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [46 x i8] c"switch.table.amdgpu_gmc_get_vbios_allocations\00", align 1
@llvm.compiler.used = appending global [54 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_gmc_agp_location._entry, ptr @amdgpu_gmc_agp_location._entry_ptr, ptr @amdgpu_gmc_allocate_vm_inv_eng._entry, ptr @amdgpu_gmc_allocate_vm_inv_eng._entry.19, ptr @amdgpu_gmc_allocate_vm_inv_eng._entry_ptr, ptr @amdgpu_gmc_allocate_vm_inv_eng._entry_ptr.21, ptr @amdgpu_gmc_gart_location._entry, ptr @amdgpu_gmc_gart_location._entry.12, ptr @amdgpu_gmc_gart_location._entry_ptr, ptr @amdgpu_gmc_gart_location._entry_ptr.13, ptr @amdgpu_gmc_sysvm_location._entry, ptr @amdgpu_gmc_sysvm_location._entry.6, ptr @amdgpu_gmc_sysvm_location._entry_ptr, ptr @amdgpu_gmc_sysvm_location._entry_ptr.8, ptr @amdgpu_gmc_tmz_set._entry, ptr @amdgpu_gmc_tmz_set._entry.24, ptr @amdgpu_gmc_tmz_set._entry.27, ptr @amdgpu_gmc_tmz_set._entry.30, ptr @amdgpu_gmc_tmz_set._entry.33, ptr @amdgpu_gmc_tmz_set._entry_ptr, ptr @amdgpu_gmc_tmz_set._entry_ptr.26, ptr @amdgpu_gmc_tmz_set._entry_ptr.29, ptr @amdgpu_gmc_tmz_set._entry_ptr.32, ptr @amdgpu_gmc_tmz_set._entry_ptr.35, ptr @amdgpu_gmc_vram_location._entry, ptr @amdgpu_gmc_vram_location._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @switch.table.amdgpu_gmc_get_vbios_allocations], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_vram_location._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_sysvm_location._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_sysvm_location._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_gart_location._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_gart_location._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_agp_location._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_allocate_vm_inv_eng._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_allocate_vm_inv_eng._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_tmz_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_tmz_set._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_tmz_set._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_tmz_set._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gmc_tmz_set._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_gmc_get_vbios_allocations to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gmc_pdb0_alloc(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca %struct.amdgpu_bo_param, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp) #8
  %node_segment_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 2
  %0 = ptrtoint ptr %node_segment_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %node_segment_size, align 8
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 4
  %2 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_physical_nodes, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %1, %conv
  %vmid0_page_table_block_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 42
  %4 = ptrtoint ptr %vmid0_page_table_block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmid0_page_table_block_size, align 8
  %add = add i32 %5, 21
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw i64 1, %sh_prom
  %add4 = add i64 %mul, -1
  %sub = add i64 %add4, %shl
  %shr = lshr i64 %sub, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %6 = getelementptr inbounds i8, ptr %bp, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 32)
  %add7 = shl i32 %conv6, 3
  %add9 = add i32 %add7, 4103
  %and = and i32 %add9, -4096
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %bp, align 8
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %9 = ptrtoint ptr %byte_align to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %byte_align, align 4
  %domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %domain, align 4
  %flags = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 33, ptr %flags, align 8
  %type = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type, align 8
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 568, ptr %bo_ptr_size, align 8
  %pdb0_bo = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 44
  %call = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef %pdb0_bo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %pdb0_bo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdb0_bo, align 8
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %15, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %15, i32 0, i32 4, i32 0, i32 9
  %18 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %19, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %20 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end18
    i32 -512, label %if.end.bo_reserve_failure_crit_edge
  ], !prof !78

if.end.bo_reserve_failure_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bo_reserve_failure

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -17736
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.36, ptr noundef %15) #11
  br label %bo_reserve_failure

if.end18:                                         ; preds = %if.end
  %23 = ptrtoint ptr %pdb0_bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdb0_bo, align 8
  %call21 = call i32 @amdgpu_bo_pin(ptr noundef %24, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.bo_pin_failure_crit_edge

if.end18.bo_pin_failure_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %bo_pin_failure

if.end24:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %pdb0_bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdb0_bo, align 8
  %ptr_pdb0 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 45
  %call28 = call i32 @amdgpu_bo_kmap(ptr noundef %26, ptr noundef %ptr_pdb0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %27 = ptrtoint ptr %pdb0_bo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdb0_bo, align 8
  br i1 %tobool29.not, label %if.end31, label %bo_kmap_failure

if.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %28, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %28, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %28, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %32, ptr noundef null) #8
  %33 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %28, i32 0, i32 4, i32 0, i32 9
  %35 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %36) #8
  call void @ww_mutex_unlock(ptr noundef %36) #8
  br label %cleanup

bo_kmap_failure:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_bo_unpin(ptr noundef %28) #8
  br label %bo_pin_failure

bo_pin_failure:                                   ; preds = %bo_kmap_failure, %if.end18.bo_pin_failure_crit_edge
  %r.0 = phi i32 [ %call21, %if.end18.bo_pin_failure_crit_edge ], [ %call28, %bo_kmap_failure ]
  %37 = ptrtoint ptr %pdb0_bo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdb0_bo, align 8
  %tbo.i62 = getelementptr inbounds %struct.amdgpu_bo, ptr %38, i32 0, i32 4
  %bdev.i.i.i63 = getelementptr inbounds %struct.amdgpu_bo, ptr %38, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %bdev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdev.i.i.i63, align 8
  %lru_lock.i.i.i64 = getelementptr inbounds %struct.ttm_device, ptr %40, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i64) #8
  %resource.i.i.i65 = getelementptr inbounds %struct.amdgpu_bo, ptr %38, i32 0, i32 4, i32 6
  %41 = ptrtoint ptr %resource.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource.i.i.i65, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i62, ptr noundef %42, ptr noundef null) #8
  %43 = ptrtoint ptr %bdev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bdev.i.i.i63, align 8
  %lru_lock2.i.i.i66 = getelementptr inbounds %struct.ttm_device, ptr %44, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i66) #8
  %resv.i.i67 = getelementptr inbounds %struct.amdgpu_bo, ptr %38, i32 0, i32 4, i32 0, i32 9
  %45 = ptrtoint ptr %resv.i.i67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv.i.i67, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %46) #8
  call void @ww_mutex_unlock(ptr noundef %46) #8
  br label %bo_reserve_failure

bo_reserve_failure:                               ; preds = %bo_pin_failure, %do.end.i, %if.end.bo_reserve_failure_crit_edge
  %r.1 = phi i32 [ %retval.1.i.i, %do.end.i ], [ %r.0, %bo_pin_failure ], [ %retval.1.i.i, %if.end.bo_reserve_failure_crit_edge ]
  call void @amdgpu_bo_unref(ptr noundef %pdb0_bo) #8
  br label %cleanup

cleanup:                                          ; preds = %bo_reserve_failure, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %bo_reserve_failure ], [ 0, %if.end31 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_get_pde_for_bo(ptr noundef %bo, i32 noundef %level, ptr noundef %addr, ptr noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ttm = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ttm, align 8
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_address, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %conv = zext i32 %12 to i64
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %bo) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi i64 [ %call4, %sw.bb3 ], [ %conv, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %.sink, ptr %addr, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %ttm6 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %ttm6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ttm6, align 8
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource, align 4
  %call9 = tail call i64 @amdgpu_ttm_tt_pde_flags(ptr noundef %15, ptr noundef %17) #8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call9, ptr %flags, align 8
  %gmc_funcs = getelementptr i8, ptr %1, i32 -7564
  %19 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gmc_funcs, align 4
  %get_vm_pde = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %get_vm_pde to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_vm_pde, align 4
  tail call void %22(ptr noundef %add.ptr.i, i32 noundef %level, ptr noundef %addr, ptr noundef %flags) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_ttm_tt_pde_flags(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  %pd_addr = alloca i64, align 8
  %flags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pd_addr) #8
  %asic_type = getelementptr i8, ptr %1, i32 -15368
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp = icmp ugt i32 %3, 18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags) #8
  %resource.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %if.then.amdgpu_gmc_get_pde_for_bo.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
  ]

if.then.amdgpu_gmc_get_pde_for_bo.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_gmc_get_pde_for_bo.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ttm.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %ttm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ttm.i, align 8
  %dma_address.i = getelementptr inbounds %struct.ttm_tt, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_address.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %conv.i = zext i32 %14 to i64
  br label %amdgpu_gmc_get_pde_for_bo.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %bo) #8
  br label %amdgpu_gmc_get_pde_for_bo.exit

amdgpu_gmc_get_pde_for_bo.exit:                   ; preds = %sw.bb3.i, %sw.bb.i, %if.then.amdgpu_gmc_get_pde_for_bo.exit_crit_edge
  %.sink.i = phi i64 [ %call4.i, %sw.bb3.i ], [ %conv.i, %sw.bb.i ], [ 0, %if.then.amdgpu_gmc_get_pde_for_bo.exit_crit_edge ]
  %15 = ptrtoint ptr %pd_addr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %.sink.i, ptr %pd_addr, align 8
  %ttm6.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %ttm6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ttm6.i, align 8
  %18 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource.i, align 4
  %call9.i = tail call i64 @amdgpu_ttm_tt_pde_flags(ptr noundef %17, ptr noundef %19) #8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call9.i, ptr %flags, align 8
  %gmc_funcs.i = getelementptr i8, ptr %1, i32 -7564
  %21 = ptrtoint ptr %gmc_funcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gmc_funcs.i, align 4
  %get_vm_pde.i = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %get_vm_pde.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_vm_pde.i, align 4
  call void %24(ptr noundef %add.ptr.i, i32 noundef -1, ptr noundef nonnull %pd_addr, ptr noundef nonnull %flags) #8
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %flags, align 8
  %27 = ptrtoint ptr %pd_addr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pd_addr, align 8
  %or = or i64 %28, %26
  store i64 %or, ptr %pd_addr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %bo) #8
  %29 = ptrtoint ptr %pd_addr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call1, ptr %pd_addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %amdgpu_gmc_get_pde_for_bo.exit
  %30 = ptrtoint ptr %pd_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pd_addr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pd_addr) #8
  ret i64 %31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gmc_set_pte_pde(ptr nocapture readnone %adev, ptr noundef %cpu_pt_addr, i32 noundef %gpu_page_idx, i64 noundef %addr, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %addr, 281474976706560
  %or = or i64 %and, %flags
  %mul = shl i32 %gpu_page_idx, 3
  %add.ptr = getelementptr i8, ptr %cpu_pt_addr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i64 %or to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %shr.i = lshr i64 %or, 32
  %conv3.i = trunc i64 %shr.i to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #8
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #8, !srcloc !80
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_gmc_agp_addr(ptr nocapture noundef readonly %bo) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %2 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm, align 8
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %caching = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %caching to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_address, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 4096
  %conv = zext i32 %add to i64
  %agp_size = getelementptr i8, ptr %1, i32 -13952
  %12 = ptrtoint ptr %agp_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %agp_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv)
  %cmp4.not = icmp ugt i64 %13, %conv
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %agp_start = getelementptr i8, ptr %1, i32 -13944
  %14 = ptrtoint ptr %agp_start to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %agp_start, align 8
  %conv12 = zext i32 %11 to i64
  %add13 = add i64 %15, %conv12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %add13, %if.end7 ], [ 2147483647, %lor.lhs.false.cleanup_crit_edge ], [ 2147483647, %entry.cleanup_crit_edge ], [ 2147483647, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_vram_location(ptr nocapture noundef readonly %adev, ptr nocapture noundef %mc, i64 noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vram_limit to i32))
  %0 = load i32, ptr @amdgpu_vram_limit, align 4
  %conv = sext i32 %0 to i64
  %shl = shl nsw i64 %conv, 20
  %vram_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 10
  %1 = ptrtoint ptr %vram_start to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %base, ptr %vram_start, align 8
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 2
  %2 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_vram_size, align 8
  %add = add i64 %base, -1
  %sub = add i64 %add, %3
  %vram_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 11
  %4 = ptrtoint ptr %vram_end to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %vram_end, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %real_vram_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 15
  %5 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %real_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %6)
  %cmp = icmp ult i64 %shl, %6
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl, ptr %real_vram_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 39, i32 4
  %8 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.then6, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fb_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 12
  %10 = ptrtoint ptr %fb_start to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %base, ptr %fb_start, align 8
  %fb_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 13
  %11 = ptrtoint ptr %fb_end to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub, ptr %fb_end, align 8
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end.do.end_crit_edge
  %12 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev, align 8
  %shr = lshr i64 %3, 20
  %real_vram_size13 = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 15
  %14 = ptrtoint ptr %real_vram_size13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %real_vram_size13, align 8
  %shr14 = lshr i64 %15, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str, i64 noundef %shr, i64 noundef %base, i64 noundef %sub, i64 noundef %shr14) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_sysvm_location(ptr nocapture noundef readonly %adev, ptr nocapture noundef %mc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %node_segment_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 39, i32 2
  %0 = ptrtoint ptr %node_segment_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %node_segment_size, align 8
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 39, i32 4
  %2 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_physical_nodes, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %1, %conv
  %sub = add i64 %mul, -1
  %physical_node_id = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 39, i32 3
  %4 = ptrtoint ptr %physical_node_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %physical_node_id, align 8
  %conv5 = zext i32 %5 to i64
  %mul6 = mul i64 %1, %conv5
  %vram_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 10
  %6 = ptrtoint ptr %vram_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul6, ptr %vram_start, align 8
  %add = add i64 %1, -1
  %sub10 = add i64 %add, %mul6
  %vram_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 11
  %7 = ptrtoint ptr %vram_end to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sub10, ptr %vram_end, align 8
  %gart_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 8
  %8 = ptrtoint ptr %gart_start to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %mul, ptr %gart_start, align 8
  %gart_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 7
  %9 = ptrtoint ptr %gart_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %gart_size, align 8
  %sub14 = add i64 %sub, %10
  %gart_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 9
  %11 = ptrtoint ptr %gart_end to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub14, ptr %gart_end, align 8
  %fb_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 12
  %12 = ptrtoint ptr %fb_start to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %fb_start, align 8
  %fb_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 13
  %13 = ptrtoint ptr %fb_end to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %sub, ptr %fb_end, align 8
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 2
  %16 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mc_vram_size, align 8
  %shr = lshr i64 %17, 20
  %real_vram_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 15
  %18 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %real_vram_size, align 8
  %shr17 = lshr i64 %19, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str, i64 noundef %shr, i64 noundef %mul6, i64 noundef %sub10, i64 noundef %shr17) #11
  %20 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adev, align 8
  %22 = ptrtoint ptr %gart_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %gart_size, align 8
  %shr23 = lshr i64 %23, 20
  %24 = ptrtoint ptr %gart_start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %gart_start, align 8
  %26 = ptrtoint ptr %gart_end to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %gart_end, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.7, i64 noundef %shr23, i64 noundef %25, i64 noundef %27) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_gart_location(ptr nocapture noundef readonly %adev, ptr nocapture noundef %mc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_mask = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 17
  %0 = ptrtoint ptr %mc_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mc_mask, align 8
  %2 = tail call i64 @llvm.umin.i64(i64 %1, i64 140737488355327)
  %fb_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 12
  %3 = ptrtoint ptr %fb_start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fb_start, align 8
  %add = add nuw nsw i64 %2, 1
  %fb_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 13
  %5 = ptrtoint ptr %fb_end to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fb_end, align 8
  %add2 = add i64 %6, 4294967296
  %and = and i64 %add2, -4294967296
  %sub = sub i64 %add, %and
  %gart_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 7
  %7 = ptrtoint ptr %gart_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %gart_size, align 8
  %9 = tail call i64 @llvm.umax.i64(i64 %4, i64 %sub)
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %9)
  %cmp9 = icmp ugt i64 %8, %9
  br i1 %cmp9, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.9) #11
  %12 = ptrtoint ptr %gart_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %gart_size, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %gart_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %gart_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %14)
  %cmp18.not = icmp uge i64 %4, %14
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %sub)
  %cmp19 = icmp ult i64 %4, %sub
  %or.cond = select i1 %cmp18.not, i1 %cmp19, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %14)
  %cmp21 = icmp ult i64 %sub, %14
  %or.cond73 = select i1 %or.cond, i1 true, i1 %cmp21
  %add25 = sub i64 %add, %14
  %phi.bo = and i64 %add25, -4294967296
  %add25.sink = select i1 %or.cond73, i64 0, i64 %phi.bo
  %15 = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add25.sink, ptr %15, align 8
  %add32 = add i64 %14, -1
  %sub33 = add i64 %add32, %add25.sink
  %gart_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 9
  %17 = ptrtoint ptr %gart_end to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub33, ptr %gart_end, align 8
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 8
  %shr = lshr i64 %14, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.7, i64 noundef %shr, i64 noundef %add25.sink, i64 noundef %sub33) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_agp_location(ptr nocapture noundef readonly %adev, ptr nocapture noundef %mc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %agp_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 5
  %2 = ptrtoint ptr %agp_start to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 281474976710655, ptr %agp_start, align 8
  %agp_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 6
  %3 = ptrtoint ptr %agp_end to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %agp_end, align 8
  %agp_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 4
  %4 = ptrtoint ptr %agp_size to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %agp_size, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fb_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 12
  %5 = ptrtoint ptr %fb_start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fb_start, align 8
  %gart_start = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 8
  %7 = ptrtoint ptr %gart_start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %gart_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp = icmp ugt i64 %6, %8
  %and3 = and i64 %6, -17179869184
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %gart_end = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 9
  %9 = ptrtoint ptr %gart_end to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %gart_end, align 8
  %add4 = add i64 %10, 17179869184
  %and5 = and i64 %add4, -17179869184
  %sub = sub i64 %and3, %and5
  %mc_mask = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 17
  %11 = ptrtoint ptr %mc_mask to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mc_mask, align 8
  %add6 = add i64 %12, 1
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i64 %8, -17179869184
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then1
  %and14.sink = phi i64 [ %and14, %if.else ], [ %add6, %if.then1 ]
  %size_bf.0 = phi i64 [ %and3, %if.else ], [ %sub, %if.then1 ]
  %fb_end15 = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 13
  %13 = ptrtoint ptr %fb_end15 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fb_end15, align 8
  %add17 = add i64 %14, 17179869184
  %and18 = and i64 %add17, -17179869184
  %sub19 = sub i64 %and14.sink, %and18
  call void @__sanitizer_cov_trace_cmp8(i64 %size_bf.0, i64 %sub19)
  %cmp21 = icmp ugt i64 %size_bf.0, %sub19
  br i1 %cmp21, label %if.then22, label %if.else28

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %sub24 = sub i64 %6, %size_bf.0
  br label %if.end35

if.else28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %fb_end29 = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 13
  %15 = ptrtoint ptr %fb_end29 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fb_end29, align 8
  %add31 = add i64 %16, 17179869184
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %if.then22
  %and32.sink.in = phi i64 [ %sub24, %if.then22 ], [ %add31, %if.else28 ]
  %size_af.0.sink = phi i64 [ %size_bf.0, %if.then22 ], [ %sub19, %if.else28 ]
  %and32.sink = and i64 %and32.sink.in, -17179869184
  %17 = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %and32.sink, ptr %17, align 8
  %19 = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %size_af.0.sink, ptr %19, align 8
  %add38 = add i64 %and32.sink, -1
  %sub39 = add i64 %add38, %size_af.0.sink
  %agp_end40 = getelementptr inbounds %struct.amdgpu_gmc, ptr %mc, i32 0, i32 6
  %21 = ptrtoint ptr %agp_end40 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub39, ptr %agp_end40, align 8
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  %shr = lshr i64 %size_af.0.sink, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.14, i64 noundef %shr, i64 noundef %and32.sink, i64 noundef %sub39) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_gmc_filter_faults(ptr noundef %adev, ptr nocapture noundef readonly %ih, i64 noundef %addr, i16 noundef zeroext %pasid, i64 noundef %timestamp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.i = shl i64 %addr, 4
  %conv.i92 = zext i16 %pasid to i64
  %or.i = or i64 %shl.i, %conv.i92
  %processed_timestamp = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 16
  %0 = ptrtoint ptr %processed_timestamp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %processed_timestamp, align 8
  %2 = sub i64 %1, %timestamp
  %sub = shl i64 %2, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup61

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 5001, i64 %timestamp)
  %cmp3 = icmp ugt i64 %timestamp, 5001
  %phi.bo = add i64 %timestamp, -5000
  %cond = select i1 %cmp3, i64 %phi.bo, i64 1
  %last_fault = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 36
  %3 = ptrtoint ptr %last_fault to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %last_fault, align 8
  %idxprom = zext i8 %bf.load to i32
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 34, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %bf.load5 = load i64, ptr %arrayidx, align 8
  %bf.lshr = lshr i64 %bf.load5, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr, i64 %cond)
  %cmp6.not = icmp ult i64 %bf.lshr, %cond
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup61_crit_edge

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup61

if.end8:                                          ; preds = %if.end
  %conv.i = trunc i64 %or.i to i32
  %shr.i = lshr i64 %shl.i, 32
  %conv1.i = trunc i64 %shr.i to i32
  %mul.i.i = mul i32 %conv1.i, 1640531527
  %xor.i = xor i32 %mul.i.i, %conv.i
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 35, i32 %shr.i.i
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load12 = load i8, ptr %arrayidx11, align 8
  %idxprom14 = zext i8 %bf.load12 to i32
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 34, i32 %idxprom14
  br label %while.cond

while.cond:                                       ; preds = %if.end24.while.cond_crit_edge, %if.end8
  %fault.0 = phi ptr [ %arrayidx15, %if.end8 ], [ %arrayidx31, %if.end24.while.cond_crit_edge ]
  %6 = ptrtoint ptr %fault.0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %bf.load16 = load i64, ptr %fault.0, align 8
  %bf.lshr17 = lshr i64 %bf.load16, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr17, i64 %cond)
  %cmp18.not = icmp ult i64 %bf.lshr17, %cond
  br i1 %cmp18.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %key20 = getelementptr inbounds %struct.amdgpu_gmc_fault, ptr %fault.0, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key20, i32 noundef 8) #8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %key20) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %or.i)
  %cmp22 = icmp eq i64 %call.i, %or.i
  br i1 %cmp22, label %while.body.cleanup61_crit_edge, label %if.end24

while.body.cleanup61_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup61

if.end24:                                         ; preds = %while.body
  %7 = ptrtoint ptr %fault.0 to i32
  call void @__asan_load8_noabort(i32 %7)
  %bf.load25 = load i64, ptr %fault.0, align 8
  %bf.lshr26 = lshr i64 %bf.load25, 16
  %8 = trunc i64 %bf.load25 to i32
  %9 = lshr i32 %8, 8
  %idxprom30 = and i32 %9, 255
  %arrayidx31 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 34, i32 %idxprom30
  %10 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %10)
  %bf.load32 = load i64, ptr %arrayidx31, align 8
  %bf.lshr33 = lshr i64 %bf.load32, 16
  %cmp34.not = icmp ult i64 %bf.lshr33, %bf.lshr26
  br i1 %cmp34.not, label %if.end24.while.cond_crit_edge, label %if.end24.while.end_crit_edge

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end24.while.cond_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %while.cond.while.end_crit_edge
  %11 = ptrtoint ptr %last_fault to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load39 = load i8, ptr %last_fault, align 8
  %idxprom41 = zext i8 %bf.load39 to i32
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 34, i32 %idxprom41
  %key43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 34, i32 %idxprom41, i32 1
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key43, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %key43, i64 noundef %or.i) #8
  %12 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %12)
  %bf.load44 = load i64, ptr %arrayidx42, align 8
  %bf.shl = shl i64 %timestamp, 16
  %bf.clear45 = and i64 %bf.load44, 255
  %bf.set = or i64 %bf.clear45, %bf.shl
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load48 = load i8, ptr %arrayidx11, align 8
  %bf.cast49 = zext i8 %bf.load48 to i64
  %bf.shl52 = shl nuw nsw i64 %bf.cast49, 8
  %bf.set54 = or i64 %bf.shl52, %bf.set
  store i64 %bf.set54, ptr %arrayidx42, align 8
  %14 = ptrtoint ptr %last_fault to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load56 = load i8, ptr %last_fault, align 8
  %inc = add i8 %bf.load56, 1
  store i8 %inc, ptr %last_fault, align 8
  store i8 %bf.load56, ptr %arrayidx11, align 8
  br label %cleanup61

cleanup61:                                        ; preds = %while.end, %while.body.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.2 = phi i1 [ false, %while.end ], [ true, %entry.cleanup61_crit_edge ], [ true, %if.end.cleanup61_crit_edge ], [ true, %while.body.cleanup61_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_filter_faults_remove(ptr noundef %adev, i64 noundef %addr, i16 noundef zeroext %pasid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.i = shl i64 %addr, 4
  %conv.i22 = zext i16 %pasid to i64
  %or.i = or i64 %shl.i, %conv.i22
  %conv.i = trunc i64 %or.i to i32
  %shr.i = lshr i64 %shl.i, 32
  %conv1.i = trunc i64 %shr.i to i32
  %mul.i.i = mul i32 %conv1.i, 1640531527
  %xor.i = xor i32 %mul.i.i, %conv.i
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 35, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %arrayidx, align 8
  %idxprom = zext i8 %bf.load to i32
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 34, i32 %idxprom
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %fault.0 = phi ptr [ %arrayidx3, %entry ], [ %arrayidx11, %if.end.do.body_crit_edge ]
  %key4 = getelementptr inbounds %struct.amdgpu_gmc_fault, ptr %fault.0, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key4, i32 noundef 8) #8
  %call.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %key4, i64 noundef %or.i, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %or.i)
  %cmp = icmp eq i64 %call.i, %or.i
  br i1 %cmp, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %do.body
  %1 = ptrtoint ptr %fault.0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load6 = load i64, ptr %fault.0, align 8
  %bf.lshr = lshr i64 %bf.load6, 16
  %2 = trunc i64 %bf.load6 to i32
  %3 = lshr i32 %2, 8
  %idxprom10 = and i32 %3, 255
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 34, i32 %idxprom10
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %4)
  %bf.load12 = load i64, ptr %arrayidx11, align 8
  %bf.lshr13 = lshr i64 %bf.load12, 16
  %cmp14 = icmp ult i64 %bf.lshr13, %bf.lshr
  br i1 %cmp14, label %if.end.do.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gmc_ras_late_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %0 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras_funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %ras_late_init = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ras_late_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras_late_init, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ras_funcs10 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 104, i32 2
  %4 = ptrtoint ptr %ras_funcs10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras_funcs10, align 8
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end9.if.end25_crit_edge, label %land.lhs.true12

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true12:                                  ; preds = %if.end9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %land.lhs.true12.if.end25_crit_edge, label %if.then17

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then17:                                        ; preds = %land.lhs.true12
  %call21 = tail call i32 %7(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then17.if.end25_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.then17.if.end25_crit_edge, %land.lhs.true12.if.end25_crit_edge, %if.end9.if.end25_crit_edge
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %8 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %connected_to_cpu, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool26.not = icmp eq i8 %9, 0
  br i1 %tobool26.not, label %if.then27, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %ras_funcs30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 10
  %10 = ptrtoint ptr %ras_funcs30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xgmi_ras_funcs, ptr %ras_funcs30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25.if.end31_crit_edge
  %ras_funcs34 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 10
  %11 = ptrtoint ptr %ras_funcs34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ras_funcs34, align 4
  %tobool35.not = icmp eq ptr %12, null
  br i1 %tobool35.not, label %if.end31.if.end51_crit_edge, label %land.lhs.true36

if.end31.if.end51_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true36:                                  ; preds = %if.end31
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool41.not = icmp eq ptr %14, null
  br i1 %tobool41.not, label %land.lhs.true36.if.end51_crit_edge, label %if.then42

land.lhs.true36.if.end51_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then42:                                        ; preds = %land.lhs.true36
  %call47 = tail call i32 %14(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then42.if.end51_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end51:                                         ; preds = %if.then42.if.end51_crit_edge, %land.lhs.true36.if.end51_crit_edge, %if.end31.if.end51_crit_edge
  %ras_funcs52 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 102, i32 2
  %15 = ptrtoint ptr %ras_funcs52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ras_funcs52, align 8
  %tobool53.not = icmp eq ptr %16, null
  br i1 %tobool53.not, label %if.end51.if.end67_crit_edge, label %land.lhs.true54

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true54:                                  ; preds = %if.end51
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool58.not = icmp eq ptr %18, null
  br i1 %tobool58.not, label %land.lhs.true54.if.end67_crit_edge, label %if.then59

land.lhs.true54.if.end67_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then59:                                        ; preds = %land.lhs.true54
  %call63 = tail call i32 %18(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then59.if.end67_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end67:                                         ; preds = %if.then59.if.end67_crit_edge, %land.lhs.true54.if.end67_crit_edge, %if.end51.if.end67_crit_edge
  %ras_funcs68 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 121, i32 1, i32 1
  %19 = ptrtoint ptr %ras_funcs68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ras_funcs68, align 4
  %tobool69.not = icmp eq ptr %20, null
  br i1 %tobool69.not, label %if.end67.if.end85_crit_edge, label %land.lhs.true70

if.end67.if.end85_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true70:                                  ; preds = %if.end67
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool75.not = icmp eq ptr %22, null
  br i1 %tobool75.not, label %land.lhs.true70.if.end85_crit_edge, label %if.then76

land.lhs.true70.if.end85_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then76:                                        ; preds = %land.lhs.true70
  %call81 = tail call i32 %22(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then76.if.end85_crit_edge, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then76.if.end85_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.end85:                                         ; preds = %if.then76.if.end85_crit_edge, %land.lhs.true70.if.end85_crit_edge, %if.end67.if.end85_crit_edge
  %ras_funcs87 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 121, i32 2, i32 1
  %23 = ptrtoint ptr %ras_funcs87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ras_funcs87, align 4
  %tobool88.not = icmp eq ptr %24, null
  br i1 %tobool88.not, label %if.end85.if.end104_crit_edge, label %land.lhs.true89

if.end85.if.end104_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

land.lhs.true89:                                  ; preds = %if.end85
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool94.not = icmp eq ptr %26, null
  br i1 %tobool94.not, label %land.lhs.true89.if.end104_crit_edge, label %if.then95

land.lhs.true89.if.end104_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then95:                                        ; preds = %land.lhs.true89
  %call100 = tail call i32 %26(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then95.if.end104_crit_edge, label %if.then95.cleanup_crit_edge

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then95.if.end104_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.end104:                                        ; preds = %if.then95.if.end104_crit_edge, %land.lhs.true89.if.end104_crit_edge, %if.end85.if.end104_crit_edge
  %ras_funcs106 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 121, i32 3, i32 1
  %27 = ptrtoint ptr %ras_funcs106 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ras_funcs106, align 4
  %tobool107.not = icmp eq ptr %28, null
  br i1 %tobool107.not, label %if.end104.if.end123_crit_edge, label %land.lhs.true108

if.end104.if.end123_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

land.lhs.true108:                                 ; preds = %if.end104
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool113.not = icmp eq ptr %30, null
  br i1 %tobool113.not, label %land.lhs.true108.if.end123_crit_edge, label %if.then114

land.lhs.true108.if.end123_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then114:                                       ; preds = %land.lhs.true108
  %call119 = tail call i32 %30(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then114.if.end123_crit_edge, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then114.if.end123_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.end123:                                        ; preds = %if.then114.if.end123_crit_edge, %land.lhs.true108.if.end123_crit_edge, %if.end104.if.end123_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then114.cleanup_crit_edge, %if.then95.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end123 ], [ %call, %if.then.cleanup_crit_edge ], [ %call21, %if.then17.cleanup_crit_edge ], [ %call47, %if.then42.cleanup_crit_edge ], [ %call63, %if.then59.cleanup_crit_edge ], [ %call81, %if.then76.cleanup_crit_edge ], [ %call100, %if.then95.cleanup_crit_edge ], [ %call119, %if.then114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_ras_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %0 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras_funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ras_fini = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ras_fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras_fini, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %adev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ras_funcs7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 104, i32 2
  %4 = ptrtoint ptr %ras_funcs7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras_funcs7, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %land.lhs.true9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true9:                                   ; preds = %if.end
  %ras_fini12 = getelementptr inbounds %struct.amdgpu_mmhub_ras_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ras_fini12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ras_fini12, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %land.lhs.true9.if.end18_crit_edge, label %if.then14

land.lhs.true9.if.end18_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %adev) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true9.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %ras_funcs19 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 10
  %8 = ptrtoint ptr %ras_funcs19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ras_funcs19, align 4
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %if.end18.if.end32_crit_edge, label %land.lhs.true21

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true21:                                  ; preds = %if.end18
  %ras_fini25 = getelementptr inbounds %struct.amdgpu_xgmi_ras_funcs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ras_fini25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ras_fini25, align 4
  %tobool26.not = icmp eq ptr %11, null
  br i1 %tobool26.not, label %land.lhs.true21.if.end32_crit_edge, label %if.then27

land.lhs.true21.if.end32_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %adev) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true21.if.end32_crit_edge, %if.end18.if.end32_crit_edge
  %ras_funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 102, i32 2
  %12 = ptrtoint ptr %ras_funcs33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ras_funcs33, align 8
  %tobool34.not = icmp eq ptr %13, null
  br i1 %tobool34.not, label %if.end32.if.end44_crit_edge, label %land.lhs.true35

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true35:                                  ; preds = %if.end32
  %ras_fini38 = getelementptr inbounds %struct.amdgpu_hdp_ras_funcs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ras_fini38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ras_fini38, align 4
  %tobool39.not = icmp eq ptr %15, null
  br i1 %tobool39.not, label %land.lhs.true35.if.end44_crit_edge, label %if.then40

land.lhs.true35.if.end44_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then40:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef %adev) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %land.lhs.true35.if.end44_crit_edge, %if.end32.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gmc_allocate_vm_inv_eng(ptr noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %vm_inv_engs = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vm_inv_engs) #8
  %0 = call ptr @memcpy(ptr %vm_inv_engs, ptr @__const.amdgpu_gmc_allocate_vm_inv_eng.vm_inv_engs, i32 12)
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 89
  %1 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp37.not = icmp eq i32 %2, 0
  br i1 %cmp37.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 119, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 90, i32 %i.038
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %4, %ring2
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %vmhub1 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %vmhub1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vmhub1, align 4
  %arrayidx4 = getelementptr [3 x i32], ptr %vm_inv_engs, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %iszero = icmp eq i32 %10, 0
  br i1 %iszero, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  %name = getelementptr inbounds %struct.amdgpu_ring, ptr %4, i32 0, i32 29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %name) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true), !range !83
  %vm_inv_eng = getelementptr inbounds %struct.amdgpu_ring, ptr %4, i32 0, i32 37
  %14 = ptrtoint ptr %vm_inv_eng to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %vm_inv_eng, align 4
  %shl = shl nuw i32 1, %13
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %arrayidx4, align 4
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 8
  %name13 = getelementptr inbounds %struct.amdgpu_ring, ptr %4, i32 0, i32 29
  %18 = ptrtoint ptr %vmhub1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vmhub1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.20, ptr noundef %name13, i32 noundef %13, i32 noundef %19) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.038, 1
  %20 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rings, align 8
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vm_inv_engs) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_tmz_set(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %sw.default [
    i32 22, label %entry.sw.bb_crit_edge
    i32 24, label %entry.sw.bb_crit_edge36
    i32 26, label %entry.sw.bb6_crit_edge
    i32 28, label %entry.sw.bb6_crit_edge37
    i32 29, label %entry.sw.bb6_crit_edge38
    i32 32, label %entry.sw.bb6_crit_edge39
    i32 35, label %entry.sw.bb6_crit_edge40
  ]

entry.sw.bb6_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_tmz to i32))
  %3 = load i32, ptr @amdgpu_tmz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %tmz_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %tmz_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tmz_enabled, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %tmz_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %tmz_enabled, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge37, %entry.sw.bb6_crit_edge38, %entry.sw.bb6_crit_edge39, %entry.sw.bb6_crit_edge40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_tmz to i32))
  %6 = load i32, ptr @amdgpu_tmz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp7 = icmp slt i32 %6, 1
  %tmz_enabled10 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 37
  br i1 %cmp7, label %if.then8, label %if.else14

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tmz_enabled10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tmz_enabled10, align 1
  br label %sw.epilog

if.else14:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %tmz_enabled10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %tmz_enabled10, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmz_enabled22 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 37
  %9 = ptrtoint ptr %tmz_enabled22 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tmz_enabled22, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else14, %if.then8, %if.else, %if.then
  %.str.28.sink = phi ptr [ @.str.28, %if.then8 ], [ @.str.31, %if.else14 ], [ @.str.22, %if.then ], [ @.str.25, %if.else ], [ @.str.34, %sw.default ]
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull %.str.28.sink) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_gmc_noretry_set(ptr nocapture noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %sw.default [
    i32 19, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge15
    i32 23, label %entry.sw.bb_crit_edge16
    i32 25, label %entry.sw.bb_crit_edge17
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_noretry to i32))
  %3 = load i32, ptr @amdgpu_noretry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  %noretry = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %noretry to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %noretry, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %noretry to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %noretry, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_noretry to i32))
  %6 = load i32, ptr @amdgpu_noretry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp4 = icmp eq i32 %6, -1
  %noretry6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %noretry6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %noretry6, align 4
  br label %sw.epilog

if.else7:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %noretry6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %noretry6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else7, %if.then5, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_set_vm_fault_masks(ptr noundef %adev, i32 noundef %hub_type, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_context0_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %hub_type, i32 5
  %ctx_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %hub_type, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hub_type)
  %cmp1 = icmp eq i32 %hub_type, 0
  %virt15 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs22 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %vm_cntx_cntl_vm_fault43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %hub_type, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0142 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_context0_cntl, align 4
  %2 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx_distance, align 4
  %mul = mul i32 %3, %i.0142
  %add = add i32 %mul, %1
  %4 = ptrtoint ptr %virt15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt15, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp1, label %cond.true, label %cond.false14

cond.true:                                        ; preds = %for.body
  br i1 %tobool.not, label %cond.true.cond.false_crit_edge, label %land.lhs.true

cond.true.cond.false_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %6 = ptrtoint ptr %funcs22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs22, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true8

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true8:                                       ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %9(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end40

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %cond.true.cond.false_crit_edge
  %call13 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  br label %cond.end40

cond.false14:                                     ; preds = %for.body
  br i1 %tobool.not, label %cond.false14.cond.false36_crit_edge, label %land.lhs.true19

cond.false14.cond.false36_crit_edge:              ; preds = %cond.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false36

land.lhs.true19:                                  ; preds = %cond.false14
  %10 = ptrtoint ptr %funcs22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs22, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %land.lhs.true19.cond.false36_crit_edge, label %land.lhs.true24

land.lhs.true19.cond.false36_crit_edge:           ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false36

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %sriov_rreg28 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg28, align 4
  %tobool29.not = icmp eq ptr %13, null
  br i1 %tobool29.not, label %land.lhs.true24.cond.false36_crit_edge, label %cond.true30

land.lhs.true24.cond.false36_crit_edge:           ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false36

cond.true30:                                      ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 %13(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #8
  br label %cond.end40

cond.false36:                                     ; preds = %land.lhs.true24.cond.false36_crit_edge, %land.lhs.true19.cond.false36_crit_edge, %cond.false14.cond.false36_crit_edge
  %call37 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false36, %cond.true30, %cond.false, %cond.true8
  %cond41 = phi i32 [ %call, %cond.true8 ], [ %call13, %cond.false ], [ %call35, %cond.true30 ], [ %call37, %cond.false36 ]
  %14 = ptrtoint ptr %vm_cntx_cntl_vm_fault43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_cntx_cntl_vm_fault43, align 4
  %or = or i32 %15, %cond41
  %neg = xor i32 %15, -1
  %and44 = and i32 %cond41, %neg
  %tmp.0 = select i1 %enable, i32 %or, i32 %and44
  %16 = ptrtoint ptr %virt15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt15, align 8
  %and49 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %cmp1, label %cond.true46, label %cond.false68

cond.true46:                                      ; preds = %cond.end40
  br i1 %tobool50.not, label %cond.true46.cond.false66_crit_edge, label %land.lhs.true51

cond.true46.cond.false66_crit_edge:               ; preds = %cond.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false66

land.lhs.true51:                                  ; preds = %cond.true46
  %18 = ptrtoint ptr %funcs22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs22, align 4
  %tobool55.not = icmp eq ptr %19, null
  br i1 %tobool55.not, label %land.lhs.true51.cond.false66_crit_edge, label %land.lhs.true56

land.lhs.true51.cond.false66_crit_edge:           ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false66

land.lhs.true56:                                  ; preds = %land.lhs.true51
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg, align 4
  %tobool60.not = icmp eq ptr %21, null
  br i1 %tobool60.not, label %land.lhs.true56.cond.false66_crit_edge, label %cond.true61

land.lhs.true56.cond.false66_crit_edge:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false66

cond.true61:                                      ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 1) #8
  br label %for.inc

cond.false66:                                     ; preds = %land.lhs.true56.cond.false66_crit_edge, %land.lhs.true51.cond.false66_crit_edge, %cond.true46.cond.false66_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #8
  br label %for.inc

cond.false68:                                     ; preds = %cond.end40
  br i1 %tobool50.not, label %cond.false68.cond.false89_crit_edge, label %land.lhs.true73

cond.false68.cond.false89_crit_edge:              ; preds = %cond.false68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false89

land.lhs.true73:                                  ; preds = %cond.false68
  %22 = ptrtoint ptr %funcs22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs22, align 4
  %tobool77.not = icmp eq ptr %23, null
  br i1 %tobool77.not, label %land.lhs.true73.cond.false89_crit_edge, label %land.lhs.true78

land.lhs.true73.cond.false89_crit_edge:           ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false89

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %sriov_wreg82 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg82, align 4
  %tobool83.not = icmp eq ptr %25, null
  br i1 %tobool83.not, label %land.lhs.true78.cond.false89_crit_edge, label %cond.true84

land.lhs.true78.cond.false89_crit_edge:           ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false89

cond.true84:                                      ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %25(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 11) #8
  br label %for.inc

cond.false89:                                     ; preds = %land.lhs.true78.cond.false89_crit_edge, %land.lhs.true73.cond.false89_crit_edge, %cond.false68.cond.false89_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.false89, %cond.true84, %cond.false66, %cond.true61
  %inc = add nuw nsw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_get_vbios_allocations(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %switch.tableidx = add i32 %1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.amdgpu_gmc_get_vbios_allocations, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink50 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %keep_stolen_vga_memory2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 15
  %4 = ptrtoint ptr %keep_stolen_vga_memory2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink50, ptr %keep_stolen_vga_memory2, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.epilog.if.end9_crit_edge

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

lor.lhs.false:                                    ; preds = %sw.epilog
  %call = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %adev, i32 noundef 5) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %lor.lhs.false.if.end9_crit_edge, label %if.else

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %7 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gmc_funcs, align 4
  %get_vbios_fb_size = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %get_vbios_fb_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_vbios_fb_size, align 4
  %call4 = tail call i32 %10(ptr noundef %adev) #8
  %keep_stolen_vga_memory6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 15
  %11 = ptrtoint ptr %keep_stolen_vga_memory6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %keep_stolen_vga_memory6, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.umax.i32(i32 %call4, i32 9437184)
  %spec.select = select i1 %tobool7.not, i32 %call4, i32 %13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %lor.lhs.false.if.end9_crit_edge, %sw.epilog.if.end9_crit_edge
  %size.0 = phi i32 [ 0, %lor.lhs.false.if.end9_crit_edge ], [ 0, %sw.epilog.if.end9_crit_edge ], [ %spec.select, %if.else ]
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %14 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %real_vram_size, align 8
  %conv = zext i32 %size.0 to i64
  %sub = sub i64 %15, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %sub)
  %cmp11 = icmp ult i64 %sub, 8388608
  %spec.store.select = select i1 %cmp11, i32 0, i32 %size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9437184, i32 %spec.store.select)
  %cmp15 = icmp ugt i32 %spec.store.select, 9437184
  %conv19 = zext i32 %spec.store.select to i64
  %sub22 = add nsw i64 %conv19, -9437184
  %16 = call i32 @llvm.umin.i32(i32 %spec.store.select, i32 9437184)
  %17 = zext i32 %16 to i64
  %.sink = select i1 %cmp15, i64 %sub22, i64 0
  %18 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 11
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %17, ptr %18, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 13
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %.sink, ptr %20, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_device_ip_get_ip_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gmc_init_pdb0(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %gart_pte_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 6
  %0 = ptrtoint ptr %gart_pte_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gart_pte_flags, align 8
  %node_segment_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 2
  %2 = ptrtoint ptr %node_segment_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %node_segment_size, align 8
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 4
  %4 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_physical_nodes, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %3, %conv
  %vmid0_page_table_block_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 42
  %6 = ptrtoint ptr %vmid0_page_table_block_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vmid0_page_table_block_size, align 8
  %sh_prom = zext i32 %7 to i64
  %shl4 = shl i64 2097152, %sh_prom
  %vram_base_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 10
  %8 = ptrtoint ptr %vram_base_offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vram_base_offset, align 8
  %physical_node_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 3
  %10 = ptrtoint ptr %physical_node_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %physical_node_id, align 8
  %conv7 = zext i32 %11 to i64
  %mul11 = mul i64 %3, %conv7
  %sub = sub i64 %9, %mul11
  %add = add i64 %sub, %mul
  %12 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gart, align 8
  %call.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %13) #8
  %vram_start.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %14 = ptrtoint ptr %vram_start.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vram_start.i.i, align 8
  %sub.i.i = sub i64 %call.i, %15
  %16 = ptrtoint ptr %vram_base_offset to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vram_base_offset, align 8
  %add.i.i = add i64 %sub.i.i, %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %idx, align 4, !annotation !84
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call14 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #8
  br i1 %call14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %add)
  %cmp73 = icmp ult i64 %sub, %add
  br i1 %cmp73, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %19 = ptrtoint ptr %vmid0_page_table_block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vmid0_page_table_block_size, align 8
  %add19 = shl i32 %20, 7
  %21 = add i32 %add19, 1152
  %22 = and i32 %21, 3968
  %shl21 = zext i32 %22 to i64
  %ptr_pdb0 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 45
  %or16 = or i64 %1, %shl21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %vram_addr.075 = phi i64 [ %sub, %for.body.lr.ph ], [ %add27, %for.body.for.body_crit_edge ]
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %ptr_pdb0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr_pdb0, align 4
  %and.i = and i64 %vram_addr.075, 281474976706560
  %or23 = or i64 %or16, %and.i
  %or.i = or i64 %or23, 18014398509482085
  %mul.i = shl i32 %i.074, 3
  %add.ptr.i = getelementptr i8, ptr %24, i32 %mul.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  call void @arm_heavy_mb() #8
  %conv.i.i = trunc i64 %or.i to i32
  %25 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %shr.i.i = lshr i64 %or.i, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %26 = call i32 @llvm.bswap.i32(i32 %conv3.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #8, !srcloc !80
  %inc = add i32 %i.074, 1
  %add27 = add i64 %vram_addr.075, %shl4
  %cmp = icmp ult i64 %add27, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = shl i32 %inc, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %ptr_pdb030 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 45
  %27 = ptrtoint ptr %ptr_pdb030 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr_pdb030, align 4
  %and.i65 = and i64 %add.i.i, 281474976706560
  %add.ptr.i68 = getelementptr i8, ptr %28, i32 %i.0.lcssa
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  call void @arm_heavy_mb() #8
  %29 = trunc i64 %and.i65 to i32
  %conv.i.i69 = or i32 %29, 5
  %30 = call i32 @llvm.bswap.i32(i32 %conv.i.i69) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %30) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %shr.i.i70 = lshr i64 %and.i65, 32
  %conv3.i.i71 = trunc i64 %shr.i.i70 to i32
  %31 = call i32 @llvm.bswap.i32(i32 %conv3.i.i71) #8
  %add.ptr.i.i72 = getelementptr i8, ptr %add.ptr.i68, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %31) #8, !srcloc !80
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_gmc_vram_pa(ptr nocapture noundef readonly %adev, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %bo) #8
  %vram_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %0 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vram_start.i, align 8
  %sub.i = sub i64 %call, %1
  %vram_base_offset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 10
  %2 = ptrtoint ptr %vram_base_offset.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vram_base_offset.i, align 8
  %add.i = add i64 %sub.i, %3
  ret i64 %add.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr nocapture noundef readonly %adev, i64 noundef %mc_addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vram_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %0 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vram_start, align 8
  %sub = sub i64 %mc_addr, %1
  %vram_base_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 10
  %2 = ptrtoint ptr %vram_base_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vram_base_offset, align 8
  %add = add i64 %sub, %3
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_gmc_vram_cpu_pa(ptr nocapture noundef readonly %adev, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %bo) #8
  %vram_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %0 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vram_start, align 8
  %sub = sub i64 %call, %1
  %aper_base = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 1
  %2 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aper_base, align 4
  %conv = zext i32 %3 to i64
  %add = add i64 %sub, %conv
  ret i64 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_gmc_get_reserved_allocation(ptr nocapture noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stolen_reserved_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 17
  %stolen_reserved_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 18
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = call ptr @memset(ptr %stolen_reserved_offset, i32 0, i32 16)
  %1 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %2)
  %cond = icmp eq i32 %2, 35
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_discovery to i32))
  %3 = load i32, ptr @amdgpu_discovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %stolen_reserved_offset to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 536543232, ptr %stolen_reserved_offset, align 8
  %5 = ptrtoint ptr %stolen_reserved_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 262144, ptr %stolen_reserved_size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 212, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_gmc_vram_location._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_gmc_vram_location._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 243, i32 2}
!10 = !{ptr @amdgpu_gmc_sysvm_location._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @amdgpu_gmc_sysvm_location._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 246, i32 2}
!14 = !{ptr @amdgpu_gmc_sysvm_location._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @amdgpu_gmc_sysvm_location._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 274, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @amdgpu_gmc_gart_location._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @amdgpu_gmc_gart_location._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @amdgpu_gmc_gart_location._entry.12, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 286, i32 2}
!24 = !{ptr @amdgpu_gmc_gart_location._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 334, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @amdgpu_gmc_agp_location._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @amdgpu_gmc_agp_location._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 545, i32 4}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @amdgpu_gmc_allocate_vm_inv_eng._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @amdgpu_gmc_allocate_vm_inv_eng._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 553, i32 3}
!38 = !{ptr @amdgpu_gmc_allocate_vm_inv_eng._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @amdgpu_gmc_allocate_vm_inv_eng._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 574, i32 4}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @amdgpu_gmc_tmz_set._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @amdgpu_gmc_tmz_set._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 578, i32 4}
!47 = !{ptr @amdgpu_gmc_tmz_set._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @amdgpu_gmc_tmz_set._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 591, i32 4}
!51 = !{ptr @amdgpu_gmc_tmz_set._entry.27, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @amdgpu_gmc_tmz_set._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 595, i32 4}
!55 = !{ptr @amdgpu_gmc_tmz_set._entry.30, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @amdgpu_gmc_tmz_set._entry_ptr.32, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c", i32 601, i32 3}
!59 = !{ptr @amdgpu_gmc_tmz_set._entry.33, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @amdgpu_gmc_tmz_set._entry_ptr.35, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!63 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @amdgpu_bo_reserve._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @amdgpu_bo_reserve._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!79 = !{i64 2149375503}
!80 = !{i64 709656}
!81 = !{i64 2149375876}
!82 = !{i8 0, i8 2}
!83 = !{i32 0, i32 33}
!84 = !{!"auto-init"}
