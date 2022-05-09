; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_virt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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

@xgpu_nv_mailbox_ack_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @xgpu_nv_set_mailbox_ack_irq, ptr @xgpu_nv_mailbox_ack_irq }, [24 x i8] zeroinitializer }, align 32
@xgpu_nv_mailbox_rcv_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @xgpu_nv_set_mailbox_rcv_irq, ptr @xgpu_nv_mailbox_rcv_irq }, [24 x i8] zeroinitializer }, align 32
@xgpu_nv_mailbox_get_irq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&adev->virt.flr_work)\00", [56 x i8] zeroinitializer }, align 32
@xgpu_nv_virt_ops = dso_local constant { %struct.amdgpu_virt_ops, [40 x i8] } { %struct.amdgpu_virt_ops { ptr @xgpu_nv_request_full_gpu_access, ptr @xgpu_nv_release_full_gpu_access, ptr @xgpu_nv_request_init_data, ptr @xgpu_nv_request_reset, ptr null, ptr @xgpu_nv_mailbox_trans_msg }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"get ack intr and do nothing.\0A\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xgpu_nv_send_access_requests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013amdgpu: Doesn't get msg:%d from pf, error=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xgpu_nv_send_access_requests\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c\00", [58 x i8] zeroinitializer }, align 32
@xgpu_nv_send_access_requests._entry_ptr = internal global ptr @xgpu_nv_send_access_requests._entry, section ".printk_index", align 4
@xgpu_nv_mailbox_trans_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013amdgpu: trn=%x ACK should not assert! wait again !\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgpu_nv_mailbox_trans_msg\00", [38 x i8] zeroinitializer }, align 32
@xgpu_nv_mailbox_trans_msg._entry_ptr = internal global ptr @xgpu_nv_mailbox_trans_msg._entry, section ".printk_index", align 4
@xgpu_nv_mailbox_trans_msg._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013amdgpu: Doesn't get ack from pf, continue\0A\00", [51 x i8] zeroinitializer }, align 32
@xgpu_nv_mailbox_trans_msg._entry_ptr.9 = internal global ptr @xgpu_nv_mailbox_trans_msg._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xgpu_nv_poll_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013amdgpu: Doesn't get TRN_MSG_ACK from pf in %d msec\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgpu_nv_poll_ack\00", [47 x i8] zeroinitializer }, align 32
@xgpu_nv_poll_ack._entry_ptr = internal global ptr @xgpu_nv_poll_ack._entry, section ".printk_index", align 4
@switch.table.xgpu_nv_send_access_requests = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 7], [40 x i8] zeroinitializer }, align 32
@switch.table.xgpu_nv_send_access_requests.12 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 7], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@___asan_gen_.13 = private unnamed_addr constant [30 x i8] c"xgpu_nv_mailbox_ack_irq_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 357, i32 42 }
@___asan_gen_.16 = private unnamed_addr constant [30 x i8] c"xgpu_nv_mailbox_rcv_irq_funcs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 362, i32 42 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 405, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"xgpu_nv_virt_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 416, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 253, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 182, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 134, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 148, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 92, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [42 x i8] c"switch.table.xgpu_nv_send_access_requests\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [45 x i8] c"switch.table.xgpu_nv_send_access_requests.12\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @xgpu_nv_mailbox_trans_msg._entry, ptr @xgpu_nv_mailbox_trans_msg._entry.7, ptr @xgpu_nv_mailbox_trans_msg._entry_ptr, ptr @xgpu_nv_mailbox_trans_msg._entry_ptr.9, ptr @xgpu_nv_poll_ack._entry, ptr @xgpu_nv_poll_ack._entry_ptr, ptr @xgpu_nv_send_access_requests._entry, ptr @xgpu_nv_send_access_requests._entry_ptr, ptr @xgpu_nv_mailbox_ack_irq_funcs, ptr @xgpu_nv_mailbox_rcv_irq_funcs, ptr @xgpu_nv_mailbox_get_irq.__key, ptr @.str, ptr @xgpu_nv_virt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @switch.table.xgpu_nv_send_access_requests, ptr @switch.table.xgpu_nv_send_access_requests.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_mailbox_ack_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_mailbox_rcv_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_mailbox_get_irq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_virt_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_send_access_requests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_mailbox_trans_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_mailbox_trans_msg._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_nv_poll_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgpu_nv_send_access_requests to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgpu_nv_send_access_requests.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgpu_nv_mailbox_set_irq_funcs(ptr nocapture noundef writeonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %0 = ptrtoint ptr %ack_irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %ack_irq, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5, i32 2
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgpu_nv_mailbox_ack_irq_funcs, ptr %funcs, align 4
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %2 = ptrtoint ptr %rcv_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %rcv_irq, align 8
  %funcs7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6, i32 2
  %3 = ptrtoint ptr %funcs7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgpu_nv_mailbox_rcv_irq_funcs, ptr %funcs7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgpu_nv_mailbox_add_irq_id(ptr noundef %adev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %adev, i32 noundef 3, i32 noundef 135, ptr noundef %rcv_irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %call2 = tail call i32 @amdgpu_irq_add_id(ptr noundef %adev, i32 noundef 3, i32 noundef 138, ptr noundef %ack_irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgpu_nv_mailbox_get_irq(ptr noundef %adev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %call = tail call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %call2 = tail call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %ack_irq, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flr_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7
  tail call void @__init_work(ptr noundef %flr_work, i32 noundef 0) #6
  %0 = ptrtoint ptr %flr_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %flr_work, align 4
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @xgpu_nv_mailbox_get_irq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry16 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7, i32 1
  %1 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgpu_nv_mailbox_flr_work, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpu_nv_mailbox_flr_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %in_gpu_reset = getelementptr i8, ptr %work, i32 704
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_gpu_reset, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %in_gpu_reset, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %in_gpu_reset, ptr %in_gpu_reset, i32 0, i32 1, ptr elementtype(i32) %in_gpu_reset) #6, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %add.ptr3 = getelementptr i8, ptr %work, i32 -90324
  %asmresult3.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp.not, label %if.end, label %atomic_cmpxchg.exit.cleanup_crit_edge

atomic_cmpxchg.exit.cleanup_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %atomic_cmpxchg.exit
  %reset_sem = getelementptr i8, ptr %work, i32 712
  tail call void @down_write(ptr noundef %reset_sem) #6
  tail call void @amdgpu_virt_fini_data_exchange(ptr noundef %add.ptr3) #6
  tail call void @xgpu_nv_mailbox_trans_msg(ptr noundef %add.ptr3, i32 noundef 201, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %do.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %if.end
  %timeout.0 = phi i32 [ 5000, %if.end ], [ %sub, %if.end7.do.body_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr3, i32 noundef 3674, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp5 = icmp eq i32 %call.i, 3
  br i1 %cmp5, label %do.body.flr_done_crit_edge, label %if.end7

do.body.flr_done_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %flr_done

if.end7:                                          ; preds = %do.body
  tail call void @msleep(i32 noundef 10) #6
  %sub = add nsw i32 %timeout.0, -10
  %cmp8.not = icmp eq i32 %sub, 0
  br i1 %cmp8.not, label %if.end7.flr_done_crit_edge, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end7.flr_done_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %flr_done

flr_done:                                         ; preds = %if.end7.flr_done_crit_edge, %do.body.flr_done_crit_edge
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_gpu_reset, i32 noundef 4) #6
  %1 = ptrtoint ptr %in_gpu_reset to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %in_gpu_reset, align 4
  tail call void @up_write(ptr noundef %reset_sem) #6
  %call11 = tail call zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef %add.ptr3) #6
  br i1 %call11, label %land.lhs.true, label %flr_done.cleanup_crit_edge

flr_done.cleanup_crit_edge:                       ; preds = %flr_done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %flr_done
  %call12 = tail call zeroext i1 @amdgpu_device_has_job_running(ptr noundef %add.ptr3) #6
  br i1 %call12, label %lor.lhs.false, label %land.lhs.true.if.then20_crit_edge

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sdma_timeout = getelementptr i8, ptr %work, i32 1100
  %2 = ptrtoint ptr %sdma_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdma_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %3)
  %cmp13 = icmp eq i32 %3, 2147483647
  br i1 %cmp13, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false14

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %gfx_timeout = getelementptr i8, ptr %work, i32 1096
  %4 = ptrtoint ptr %gfx_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfx_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %5)
  %cmp15 = icmp eq i32 %5, 2147483647
  br i1 %cmp15, label %lor.lhs.false14.if.then20_crit_edge, label %lor.lhs.false16

lor.lhs.false14.if.then20_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %compute_timeout = getelementptr i8, ptr %work, i32 1108
  %6 = ptrtoint ptr %compute_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %compute_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %7)
  %cmp17 = icmp eq i32 %7, 2147483647
  br i1 %cmp17, label %lor.lhs.false16.if.then20_crit_edge, label %lor.lhs.false18

lor.lhs.false16.if.then20_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %video_timeout = getelementptr i8, ptr %work, i32 1104
  %8 = ptrtoint ptr %video_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %video_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %9)
  %cmp19 = icmp eq i32 %9, 2147483647
  br i1 %cmp19, label %lor.lhs.false18.if.then20_crit_edge, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false18.if.then20_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false18.if.then20_crit_edge, %lor.lhs.false16.if.then20_crit_edge, %lor.lhs.false14.if.then20_crit_edge, %lor.lhs.false.if.then20_crit_edge, %land.lhs.true.if.then20_crit_edge
  %call21 = tail call i32 @amdgpu_device_gpu_recover(ptr noundef %add.ptr3, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %lor.lhs.false18.cleanup_crit_edge, %flr_done.cleanup_crit_edge, %atomic_cmpxchg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgpu_nv_mailbox_put_irq(ptr noundef %adev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %ack_irq, i32 noundef 0) #6
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %call2 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_request_full_gpu_access(ptr noundef %adev, i1 noundef zeroext %init) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %init, i32 1, i32 3
  %call = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_release_full_gpu_access(ptr noundef %adev, i1 noundef zeroext %init) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %init, i32 2, i32 4
  %call = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_request_init_data(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_request_reset(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.while.end_crit_edge, label %while.cond

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond:                                       ; preds = %entry
  %call.1 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %while.cond.while.end_crit_edge, label %while.cond.1

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.1:                                     ; preds = %while.cond
  %call.2 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %while.cond.1.while.end_crit_edge, label %while.cond.2

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.2:                                     ; preds = %while.cond.1
  %call.3 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %while.cond.2.while.end_crit_edge, label %while.cond.3

while.cond.2.while.end_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.3:                                     ; preds = %while.cond.2
  %call.4 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %while.cond.3.while.end_crit_edge, label %while.cond.4

while.cond.3.while.end_crit_edge:                 ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.4:                                     ; preds = %while.cond.3
  %call.5 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %while.cond.4.while.end_crit_edge, label %while.cond.5

while.cond.4.while.end_crit_edge:                 ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.5:                                     ; preds = %while.cond.4
  %call.6 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %while.cond.5.while.end_crit_edge, label %while.cond.6

while.cond.5.while.end_crit_edge:                 ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.6:                                     ; preds = %while.cond.5
  %call.7 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %while.cond.6.while.end_crit_edge, label %while.cond.7

while.cond.6.while.end_crit_edge:                 ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.7:                                     ; preds = %while.cond.6
  %call.8 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %while.cond.7.while.end_crit_edge, label %while.cond.8

while.cond.7.while.end_crit_edge:                 ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.8:                                     ; preds = %while.cond.7
  %call.9 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %while.cond.8.while.end_crit_edge, label %while.cond.9

while.cond.8.while.end_crit_edge:                 ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.9:                                     ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  %call.10 = tail call fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef 5)
  br label %while.end

while.end:                                        ; preds = %while.cond.9, %while.cond.8.while.end_crit_edge, %while.cond.7.while.end_crit_edge, %while.cond.6.while.end_crit_edge, %while.cond.5.while.end_crit_edge, %while.cond.4.while.end_crit_edge, %while.cond.3.while.end_crit_edge, %while.cond.2.while.end_crit_edge, %while.cond.1.while.end_crit_edge, %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ], [ 0, %while.cond.1.while.end_crit_edge ], [ 0, %while.cond.2.while.end_crit_edge ], [ 0, %while.cond.3.while.end_crit_edge ], [ 0, %while.cond.4.while.end_crit_edge ], [ 0, %while.cond.5.while.end_crit_edge ], [ 0, %while.cond.6.while.end_crit_edge ], [ 0, %while.cond.7.while.end_crit_edge ], [ 0, %while.cond.8.while.end_crit_edge ], [ %call.10, %while.cond.9 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpu_nv_mailbox_trans_msg(ptr noundef %adev, i32 noundef %req, i32 noundef %data1, i32 noundef %data2, i32 noundef %data3) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_mm_wreg8(ptr noundef %adev, i32 noundef 14712, i8 noundef zeroext 0) #6
  %call.i28 = tail call zeroext i8 @amdgpu_mm_rreg8(ptr noundef %adev, i32 noundef 14712) #6
  %0 = and i8 %call.i28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not29 = icmp eq i8 %0, 0
  br i1 %tobool.not29, label %entry.do.end5.critedge_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.do.end5.critedge_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.critedge

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  %1 = phi i8 [ %2, %do.end.do.end_crit_edge ], [ %0, %entry.do.end_crit_edge ]
  %conv = zext i8 %1 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv) #9
  tail call void @msleep(i32 noundef 1) #6
  tail call void @amdgpu_mm_wreg8(ptr noundef %adev, i32 noundef 14712, i8 noundef zeroext 0) #6
  %call.i = tail call zeroext i8 @amdgpu_mm_rreg8(ptr noundef %adev, i32 noundef 14712) #6
  %2 = and i8 %call.i, 2
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end.do.end5.critedge_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.do.end5.critedge_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.critedge

do.end5.critedge:                                 ; preds = %do.end.do.end5.critedge_crit_edge, %entry.do.end5.critedge_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3670, i32 noundef %req, i32 noundef 2) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3671, i32 noundef %data1, i32 noundef 2) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3672, i32 noundef %data2, i32 noundef 2) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3673, i32 noundef %data3, i32 noundef 2) #6
  tail call void @amdgpu_mm_wreg8(ptr noundef %adev, i32 noundef 14712, i8 noundef zeroext 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.preheader.i.do.body.i_crit_edge, %do.end5.critedge
  %timeout.0.i = phi i32 [ 500, %do.end5.critedge ], [ %sub.i, %while.body.preheader.i.do.body.i_crit_edge ]
  %call.i25 = tail call zeroext i8 @amdgpu_mm_rreg8(ptr noundef %adev, i32 noundef 14712) #6
  %3 = and i8 %call.i25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %while.body.preheader.i, label %do.body.i.if.end14_crit_edge

do.body.i.if.end14_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

while.body.preheader.i:                           ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  %sub.i = add nsw i32 %timeout.0.i, -5
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %while.body.preheader.i.do.body.i_crit_edge, label %do.end11

while.body.preheader.i.do.body.i_crit_edge:       ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end11:                                         ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 500) #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.body.i.if.end14_crit_edge
  tail call void @amdgpu_mm_wreg8(ptr noundef %adev, i32 noundef 14712, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_set_mailbox_ack_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3679, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %and = and i32 %call, -3
  %masksel = select i1 %cmp, i32 2, i32 0
  %tmp.0 = or i32 %and, %masksel
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3679, i32 noundef %tmp.0, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_mailbox_ack_irq(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_set_mailbox_rcv_irq(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3679, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %and = and i32 %call, -2
  %masksel = zext i1 %cmp to i32
  %tmp.0 = or i32 %and, %masksel
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3679, i32 noundef %tmp.0, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_nv_mailbox_rcv_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3674, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cond = icmp eq i32 %call.i, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %flr_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %flr_work) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_fini_data_exchange(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_job_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_gpu_recover(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgpu_nv_send_access_requests(ptr noundef %adev, i32 noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xgpu_nv_mailbox_trans_msg(ptr noundef %adev, i32 noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %switch.tableidx = add i32 %req, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 53, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.xgpu_nv_send_access_requests, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp8.i.i.i = icmp slt i64 %call.i, 0
  %3 = tail call i64 @llvm.abs.i64(i64 %call.i, i1 false) #6
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %3) #10, !srcloc !43
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %3, i64 %4, i32 0) #10, !srcloc !44
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %add.i = add nsw i64 %cond213.i.i.i, 6000
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %switch.lookup
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3674, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %switch.load)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %switch.load
  br i1 %cmp.not.i.i, label %do.body.i.if.else9_crit_edge, label %if.end.i

do.body.i.if.else9_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else9

if.end.i:                                         ; preds = %do.body.i
  tail call void @msleep(i32 noundef 10) #6
  %call3.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3.i)
  %cmp8.i.i8.i = icmp slt i64 %call3.i, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %call3.i, i1 false) #6
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #10, !srcloc !43
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #10, !srcloc !44
  %asmresult10.i.i.i9.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i10.i = lshr i64 %asmresult10.i.i.i9.i, 18
  %sub210.i.i11.i = sub nsw i64 0, %div1811.i.i10.i
  %cond213.i.i12.i = select i1 %cmp8.i.i8.i, i64 %sub210.i.i11.i, i64 %div1811.i.i10.i
  %cmp.i = icmp ugt i64 %add.i, %cond213.i.i12.i
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.then2

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then2:                                         ; preds = %if.end.i
  tail call void @xgpu_nv_mailbox_trans_msg(ptr noundef %adev, i32 noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %switch.tableidx61 = add i32 %req, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx61)
  %9 = icmp ult i32 %switch.tableidx61, 6
  br i1 %9, label %switch.hole_check62, label %if.then2.if.then.1_crit_edge

if.then2.if.then.1_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.1

switch.hole_check62:                              ; preds = %if.then2
  %switch.maskindex64 = trunc i32 %switch.tableidx61 to i8
  %switch.shifted65 = lshr i8 53, %switch.maskindex64
  %10 = and i8 %switch.shifted65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit66.not = icmp eq i8 %10, 0
  br i1 %switch.lobit66.not, label %switch.hole_check62.if.then.1_crit_edge, label %switch.lookup63

switch.hole_check62.if.then.1_crit_edge:          ; preds = %switch.hole_check62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.1

switch.lookup63:                                  ; preds = %switch.hole_check62
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep67 = getelementptr inbounds [6 x i32], ptr @switch.table.xgpu_nv_send_access_requests.12, i32 0, i32 %switch.tableidx61
  %11 = ptrtoint ptr %switch.gep67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load68 = load i32, ptr %switch.gep67, align 4
  br label %if.then.1

if.then.1:                                        ; preds = %switch.lookup63, %switch.hole_check62.if.then.1_crit_edge, %if.then2.if.then.1_crit_edge
  %event.152.1 = phi i32 [ %switch.load68, %switch.lookup63 ], [ %switch.load, %switch.hole_check62.if.then.1_crit_edge ], [ %switch.load, %if.then2.if.then.1_crit_edge ]
  %call.i.1 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.1)
  %cmp8.i.i.i.1 = icmp slt i64 %call.i.1, 0
  %12 = tail call i64 @llvm.abs.i64(i64 %call.i.1, i1 false) #6
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %12) #10, !srcloc !43
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %12, i64 %13, i32 0) #10, !srcloc !44
  %asmresult10.i.i.i.i.1 = extractvalue { i64, i32 } %14, 0
  %div1811.i.i.i.1 = lshr i64 %asmresult10.i.i.i.i.1, 18
  %sub210.i.i.i.1 = sub nsw i64 0, %div1811.i.i.i.1
  %cond213.i.i.i.1 = select i1 %cmp8.i.i.i.1, i64 %sub210.i.i.i.1, i64 %div1811.i.i.i.1
  %add.i.1 = add nsw i64 %cond213.i.i.i.1, 6000
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %if.end.i.1.do.body.i.1_crit_edge, %if.then.1
  %call.i.i.1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3674, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.1, i32 %event.152.1)
  %cmp.not.i.i.1 = icmp eq i32 %call.i.i.1, %event.152.1
  br i1 %cmp.not.i.i.1, label %do.body.i.1.if.else9_crit_edge, label %if.end.i.1

do.body.i.1.if.else9_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else9

if.end.i.1:                                       ; preds = %do.body.i.1
  tail call void @msleep(i32 noundef 10) #6
  %call3.i.1 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3.i.1)
  %cmp8.i.i8.i.1 = icmp slt i64 %call3.i.1, 0
  %15 = tail call i64 @llvm.abs.i64(i64 %call3.i.1, i1 false) #6
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %15) #10, !srcloc !43
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %15, i64 %16, i32 0) #10, !srcloc !44
  %asmresult10.i.i.i9.i.1 = extractvalue { i64, i32 } %17, 0
  %div1811.i.i10.i.1 = lshr i64 %asmresult10.i.i.i9.i.1, 18
  %sub210.i.i11.i.1 = sub nsw i64 0, %div1811.i.i10.i.1
  %cond213.i.i12.i.1 = select i1 %cmp8.i.i8.i.1, i64 %sub210.i.i11.i.1, i64 %div1811.i.i10.i.1
  %cmp.i.1 = icmp ugt i64 %add.i.1, %cond213.i.i12.i.1
  br i1 %cmp.i.1, label %if.end.i.1.do.body.i.1_crit_edge, label %if.then2.1

if.end.i.1.do.body.i.1_crit_edge:                 ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.1

if.then2.1:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %req)
  %cmp5.not = icmp eq i32 %req, 6
  br i1 %cmp5.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then2.1
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %event.152.1, i32 noundef -62) #9
  br label %cleanup

if.else:                                          ; preds = %if.then2.1
  call void @__sanitizer_cov_trace_pc() #8
  %req_init_data_ver = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 14
  %18 = ptrtoint ptr %req_init_data_ver to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %req_init_data_ver, align 4
  br label %cleanup

if.else9:                                         ; preds = %do.body.i.1.if.else9_crit_edge, %do.body.i.if.else9_crit_edge
  tail call void @amdgpu_mm_wreg8(ptr noundef %adev, i32 noundef 14713, i8 noundef zeroext 2) #6
  %19 = zext i32 %req to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %req, label %if.else9.cleanup_crit_edge [
    i32 6, label %if.then11
    i32 1, label %if.else9.if.then26_crit_edge
    i32 5, label %if.else9.if.then26_crit_edge70
  ]

if.else9.if.then26_crit_edge70:                   ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.else9.if.then26_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3675, i32 noundef 2) #6
  %req_init_data_ver14 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 14
  %20 = tail call i32 @llvm.smax.i32(i32 %call12, i32 1)
  %21 = ptrtoint ptr %req_init_data_ver14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %req_init_data_ver14, align 4
  br label %cleanup

if.then26:                                        ; preds = %if.else9.if.then26_crit_edge, %if.else9.if.then26_crit_edge70
  %call27 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3676, i32 noundef 2) #6
  %checksum_key = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11, i32 2
  %22 = ptrtoint ptr %checksum_key to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call27, ptr %checksum_key, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then11, %if.else9.cleanup_crit_edge, %if.else, %do.end, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %do.end ], [ 0, %if.else9.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.then11 ], [ 0, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wreg8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @amdgpu_mm_rreg8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @xgpu_nv_mailbox_get_irq.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 405, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @xgpu_nv_virt_ops, !4, !"xgpu_nv_virt_ops", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 416, i32 30}
!5 = !{ptr @xgpu_nv_mailbox_ack_irq_funcs, !6, !"xgpu_nv_mailbox_ack_irq_funcs", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 357, i32 42}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 253, i32 2}
!9 = !{ptr @xgpu_nv_mailbox_rcv_irq_funcs, !10, !"xgpu_nv_mailbox_rcv_irq_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 362, i32 42}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 182, i32 5}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @xgpu_nv_send_access_requests._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @xgpu_nv_send_access_requests._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 134, i32 4}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xgpu_nv_mailbox_trans_msg._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @xgpu_nv_mailbox_trans_msg._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 148, i32 3}
!24 = !{ptr @xgpu_nv_mailbox_trans_msg._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @xgpu_nv_mailbox_trans_msg._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_nv.c", i32 92, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xgpu_nv_poll_ack._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @xgpu_nv_poll_ack._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148462648}
!41 = !{i64 735659, i64 735683, i64 735704, i64 735721, i64 735738}
!42 = !{i64 2148462874}
!43 = !{i64 1475785, i64 1475812}
!44 = !{i64 1476480, i64 1476507, i64 1476540, i64 1476561, i64 1476588, i64 1476614}
