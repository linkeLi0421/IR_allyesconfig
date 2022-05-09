; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c"
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

@xgpu_fiji_mgcg_cgcg_init = internal constant { [141 x i32], [140 x i8] } { [141 x i32] [i32 60488, i32 -1, i32 -1, i32 49664, i32 -1, i32 -536870912, i32 61608, i32 -1, i32 256, i32 61570, i32 -1, i32 256, i32 61616, i32 -1, i32 256, i32 61618, i32 -1, i32 256, i32 61617, i32 -1, i32 1073742080, i32 5497, i32 -1, i32 6291712, i32 61600, i32 -1, i32 256, i32 61573, i32 -1, i32 100663552, i32 61576, i32 -1, i32 256, i32 61574, i32 -1, i32 100663552, i32 61569, i32 -1, i32 256, i32 61624, i32 -1, i32 256, i32 61577, i32 -1, i32 256, i32 61568, i32 -1, i32 256, i32 61580, i32 -1, i32 256, i32 61581, i32 -1, i32 256, i32 61588, i32 -1, i32 256, i32 61589, i32 -1, i32 256, i32 61590, i32 -1, i32 256, i32 61591, i32 -1, i32 256, i32 61592, i32 -1, i32 256, i32 61599, i32 -1, i32 256, i32 61598, i32 -1, i32 256, i32 61572, i32 -1, i32 100663552, i32 61604, i32 -1, i32 256, i32 61597, i32 -1, i32 256, i32 61613, i32 -1, i32 256, i32 61612, i32 -1, i32 256, i32 61596, i32 -1, i32 256, i32 49664, i32 -1, i32 -536870912, i32 61440, i32 -1, i32 -1763704320, i32 8642, i32 -1, i32 9437440, i32 60489, i32 -1, i32 2097212, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 0, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 996, i32 -1, i32 256, i32 998, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [140 x i8] zeroinitializer }, align 32
@xgpu_fiji_golden_settings_a10 = internal constant { [75 x i32], [84 x i8] } { [75 x i32] [i32 9859, i32 511, i32 64, i32 9741, i32 -267386881, i32 1024, i32 793, i32 128, i32 0, i32 668, i32 240, i32 112, i32 674, i32 523313151, i32 305135616, i32 18953, i32 822083857, i32 17, i32 8956, i32 -1, i32 536870913, i32 49793, i32 65295, i32 0, i32 13317, i32 -57606137, i32 8454151, i32 13450, i32 -2146500335, i32 256, i32 13578, i32 -2146500335, i32 256, i32 13706, i32 -2146500335, i32 256, i32 13829, i32 -57606137, i32 8454151, i32 13962, i32 -2146500335, i32 256, i32 14090, i32 -2146500335, i32 256, i32 14218, i32 -2146500335, i32 256, i32 8963, i32 2097151, i32 1789, i32 9538, i32 983055, i32 720896, i32 11140, i32 2, i32 2, i32 11013, i32 1023, i32 255, i32 8754, i32 4, i32 4, i32 1324, i32 268435455, i32 268435455, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [84 x i8] zeroinitializer }, align 32
@xgpu_fiji_golden_common_all = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 49664, i32 -1, i32 -536870912, i32 41172, i32 -1, i32 973084186, i32 41173, i32 -1, i32 46, i32 9790, i32 -1, i32 570494979, i32 12764, i32 -1, i32 2048, i32 12765, i32 -1, i32 2048, i32 12774, i32 -1, i32 32703, i32 12775, i32 -1, i32 32687, i32 49664, i32 -1, i32 -536870912, i32 9295, i32 15, i32 9], [40 x i8] zeroinitializer }, align 32
@xgpu_tonga_mgcg_cgcg_init = internal constant { [261 x i32], [268 x i8] } { [261 x i32] [i32 60488, i32 -1, i32 -1, i32 49664, i32 -1, i32 -536870912, i32 61608, i32 -1, i32 256, i32 61570, i32 -1, i32 256, i32 61616, i32 -1, i32 256, i32 61618, i32 -1, i32 256, i32 61617, i32 -1, i32 1073742080, i32 5497, i32 -1, i32 6291712, i32 61600, i32 -1, i32 256, i32 61573, i32 -1, i32 100663552, i32 61576, i32 -1, i32 256, i32 61574, i32 -1, i32 100663552, i32 61569, i32 -1, i32 256, i32 61624, i32 -1, i32 256, i32 61577, i32 -1, i32 256, i32 61568, i32 -1, i32 256, i32 61580, i32 -1, i32 256, i32 61581, i32 -1, i32 256, i32 61588, i32 -1, i32 256, i32 61589, i32 -1, i32 256, i32 61590, i32 -1, i32 256, i32 61591, i32 -1, i32 256, i32 61592, i32 -1, i32 256, i32 61599, i32 -1, i32 256, i32 61598, i32 -1, i32 256, i32 61572, i32 -1, i32 100663552, i32 61604, i32 -1, i32 256, i32 61597, i32 -1, i32 256, i32 61613, i32 -1, i32 256, i32 61612, i32 -1, i32 256, i32 61596, i32 -1, i32 256, i32 49664, i32 -1, i32 -536870912, i32 61448, i32 -1, i32 65536, i32 61449, i32 -1, i32 196610, i32 61450, i32 -1, i32 262151, i32 61451, i32 -1, i32 393221, i32 61452, i32 -1, i32 589832, i32 61453, i32 -1, i32 65536, i32 61454, i32 -1, i32 196610, i32 61455, i32 -1, i32 262151, i32 61456, i32 -1, i32 393221, i32 61457, i32 -1, i32 589832, i32 61458, i32 -1, i32 65536, i32 61459, i32 -1, i32 196610, i32 61460, i32 -1, i32 262151, i32 61461, i32 -1, i32 393221, i32 61462, i32 -1, i32 589832, i32 61463, i32 -1, i32 65536, i32 61464, i32 -1, i32 196610, i32 61465, i32 -1, i32 262151, i32 61466, i32 -1, i32 393221, i32 61467, i32 -1, i32 589832, i32 61468, i32 -1, i32 65536, i32 61469, i32 -1, i32 196610, i32 61470, i32 -1, i32 262151, i32 61471, i32 -1, i32 393221, i32 61472, i32 -1, i32 589832, i32 61473, i32 -1, i32 65536, i32 61474, i32 -1, i32 196610, i32 61475, i32 -1, i32 262151, i32 61476, i32 -1, i32 393221, i32 61477, i32 -1, i32 589832, i32 61478, i32 -1, i32 65536, i32 61479, i32 -1, i32 196610, i32 61480, i32 -1, i32 262151, i32 61481, i32 -1, i32 393221, i32 61482, i32 -1, i32 589832, i32 61483, i32 -1, i32 65536, i32 61484, i32 -1, i32 196610, i32 61485, i32 -1, i32 262151, i32 61486, i32 -1, i32 393221, i32 61487, i32 -1, i32 589832, i32 61440, i32 -1, i32 -1763704320, i32 8642, i32 -1, i32 9437440, i32 60489, i32 -1, i32 2097212, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 0, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 996, i32 -1, i32 256, i32 998, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [268 x i8] zeroinitializer }, align 32
@xgpu_tonga_golden_settings_a11 = internal constant { [111 x i32], [100 x i8] } { [111 x i32] [i32 9860, i32 -134193, i32 29192, i32 9859, i32 64, i32 64, i32 9741, i32 -267386881, i32 1024, i32 793, i32 128, i32 0, i32 668, i32 240, i32 112, i32 674, i32 523313151, i32 305135616, i32 9792, i32 15, i32 0, i32 18953, i32 822083857, i32 17, i32 2529, i32 3, i32 0, i32 2120, i32 127, i32 40, i32 2165, i32 32694, i32 2449, i32 8956, i32 -1, i32 536870913, i32 8853, i32 1023, i32 252, i32 49793, i32 65295, i32 0, i32 60489, i32 3, i32 60, i32 13317, i32 -57606137, i32 8454151, i32 13315, i32 -16773121, i32 0, i32 13450, i32 -2146500335, i32 256, i32 13578, i32 -2146500335, i32 256, i32 13706, i32 -2146500335, i32 256, i32 13829, i32 -57606137, i32 8454151, i32 13827, i32 -16773121, i32 0, i32 13962, i32 -2146500335, i32 256, i32 14090, i32 -2146500335, i32 256, i32 14218, i32 -2146500335, i32 256, i32 8963, i32 2097151, i32 1789, i32 9538, i32 983055, i32 720896, i32 11136, i32 1048576, i32 -216006785, i32 11140, i32 2, i32 2, i32 11013, i32 1023, i32 763, i32 11012, i32 -1, i32 21563, i32 11011, i32 -1, i32 -1457452938, i32 8754, i32 4, i32 4, i32 1324, i32 268435455, i32 268435455, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [100 x i8] zeroinitializer }, align 32
@xgpu_tonga_golden_common_all = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 49664, i32 -1, i32 -536870912, i32 41172, i32 -1, i32 369098770, i32 41173, i32 -1, i32 42, i32 9790, i32 -1, i32 570494978, i32 12764, i32 -1, i32 2048, i32 12765, i32 -1, i32 2048, i32 12774, i32 -1, i32 32703], [44 x i8] zeroinitializer }, align 32
@xgpu_vi_mailbox_ack_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @xgpu_vi_set_mailbox_ack_irq, ptr @xgpu_vi_mailbox_ack_irq }, [24 x i8] zeroinitializer }, align 32
@xgpu_vi_mailbox_rcv_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @xgpu_vi_set_mailbox_rcv_irq, ptr @xgpu_vi_mailbox_rcv_irq }, [24 x i8] zeroinitializer }, align 32
@xgpu_vi_mailbox_get_irq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&adev->virt.flr_work)\00", [56 x i8] zeroinitializer }, align 32
@xgpu_vi_virt_ops = dso_local constant { %struct.amdgpu_virt_ops, [40 x i8] } { %struct.amdgpu_virt_ops { ptr @xgpu_vi_request_full_gpu_access, ptr @xgpu_vi_release_full_gpu_access, ptr null, ptr @xgpu_vi_request_reset, ptr @xgpu_vi_wait_reset_cmpl, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"get ack intr and do nothing.\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_gpu_recovery = external dso_local local_unnamed_addr global i32, align 4
@xgpu_vi_mailbox_send_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013amdgpu: RCV_MSG_VALID is not cleared\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgpu_vi_mailbox_send_ack\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c\00", [58 x i8] zeroinitializer }, align 32
@xgpu_vi_mailbox_send_ack._entry_ptr = internal global ptr @xgpu_vi_mailbox_send_ack._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xgpu_vi_mailbox_flr_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013amdgpu: failed to receive FLR_CMPL\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgpu_vi_mailbox_flr_work\00", [39 x i8] zeroinitializer }, align 32
@xgpu_vi_mailbox_flr_work._entry_ptr = internal global ptr @xgpu_vi_mailbox_flr_work._entry, section ".printk_index", align 4
@xgpu_vi_poll_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013amdgpu: Doesn't get ack from pf.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgpu_vi_poll_msg\00", [47 x i8] zeroinitializer }, align 32
@xgpu_vi_poll_msg._entry_ptr = internal global ptr @xgpu_vi_poll_msg._entry, section ".printk_index", align 4
@xgpu_vi_send_access_requests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013amdgpu: Doesn't get ack from pf, give up\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xgpu_vi_send_access_requests\00", [35 x i8] zeroinitializer }, align 32
@xgpu_vi_send_access_requests._entry_ptr = internal global ptr @xgpu_vi_send_access_requests._entry, section ".printk_index", align 4
@xgpu_vi_poll_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.4, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgpu_vi_poll_ack\00", [47 x i8] zeroinitializer }, align 32
@xgpu_vi_poll_ack._entry_ptr = internal global ptr @xgpu_vi_poll_ack._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"xgpu_fiji_mgcg_cgcg_init\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 46, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [30 x i8] c"xgpu_fiji_golden_settings_a10\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 96, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"xgpu_fiji_golden_common_all\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 124, i32 18 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"xgpu_tonga_mgcg_cgcg_init\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 137, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"xgpu_tonga_golden_settings_a11\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 227, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"xgpu_tonga_golden_common_all\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 267, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"xgpu_vi_mailbox_ack_irq_funcs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 560, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"xgpu_vi_mailbox_rcv_irq_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 565, i32 42 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 608, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"xgpu_vi_virt_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 619, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 493, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 331, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 518, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 416, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 449, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 396, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @xgpu_vi_mailbox_flr_work._entry, ptr @xgpu_vi_mailbox_flr_work._entry_ptr, ptr @xgpu_vi_mailbox_send_ack._entry, ptr @xgpu_vi_mailbox_send_ack._entry_ptr, ptr @xgpu_vi_poll_ack._entry, ptr @xgpu_vi_poll_ack._entry_ptr, ptr @xgpu_vi_poll_msg._entry, ptr @xgpu_vi_poll_msg._entry_ptr, ptr @xgpu_vi_send_access_requests._entry, ptr @xgpu_vi_send_access_requests._entry_ptr, ptr @xgpu_fiji_mgcg_cgcg_init, ptr @xgpu_fiji_golden_settings_a10, ptr @xgpu_fiji_golden_common_all, ptr @xgpu_tonga_mgcg_cgcg_init, ptr @xgpu_tonga_golden_settings_a11, ptr @xgpu_tonga_golden_common_all, ptr @xgpu_vi_mailbox_ack_irq_funcs, ptr @xgpu_vi_mailbox_rcv_irq_funcs, ptr @xgpu_vi_mailbox_get_irq.__key, ptr @.str, ptr @xgpu_vi_virt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_fiji_mgcg_cgcg_init to i32), i32 564, i32 704, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_fiji_golden_settings_a10 to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_fiji_golden_common_all to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_tonga_mgcg_cgcg_init to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_tonga_golden_settings_a11 to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_tonga_golden_common_all to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_mailbox_ack_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_mailbox_rcv_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_mailbox_get_irq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_virt_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_mailbox_send_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_mailbox_flr_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_poll_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_send_access_requests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpu_vi_poll_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgpu_vi_init_golden_registers(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body2 [
    i32 12, label %sw.bb
    i32 11, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @xgpu_fiji_mgcg_cgcg_init, i32 noundef 141) #4
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @xgpu_fiji_golden_settings_a10, i32 noundef 75) #4
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @xgpu_fiji_golden_common_all, i32 noundef 30) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @xgpu_tonga_mgcg_cgcg_init, i32 noundef 261) #4
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @xgpu_tonga_golden_settings_a11, i32 noundef 111) #4
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @xgpu_tonga_golden_common_all, i32 noundef 21) #4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #4, !srcloc !57
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgpu_vi_mailbox_set_irq_funcs(ptr nocapture noundef writeonly %adev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %0 = ptrtoint ptr %ack_irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %ack_irq, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5, i32 2
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgpu_vi_mailbox_ack_irq_funcs, ptr %funcs, align 4
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %2 = ptrtoint ptr %rcv_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %rcv_irq, align 8
  %funcs7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6, i32 2
  %3 = ptrtoint ptr %funcs7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgpu_vi_mailbox_rcv_irq_funcs, ptr %funcs7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgpu_vi_mailbox_add_irq_id(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %adev, i32 noundef 0, i32 noundef 135, ptr noundef %rcv_irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %call2 = tail call i32 @amdgpu_irq_add_id(ptr noundef %adev, i32 noundef 0, i32 noundef 138, ptr noundef %ack_irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgpu_vi_mailbox_get_irq(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %call = tail call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %call2 = tail call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %ack_irq, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %flr_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7
  tail call void @__init_work(ptr noundef %flr_work, i32 noundef 0) #4
  %0 = ptrtoint ptr %flr_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %flr_work, align 4
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @xgpu_vi_mailbox_get_irq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
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
  store ptr @xgpu_vi_mailbox_flr_work, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpu_vi_mailbox_flr_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -90324
  %call.i = tail call fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %add.ptr3, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not12.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not12.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body.i:                                     ; preds = %while.body4.preheader.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %timeout.013.i = phi i32 [ %sub.i, %while.body4.preheader.i.while.body.i_crit_edge ], [ 12000, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.013.i)
  %cmp.i = icmp eq i32 %timeout.013.i, 0
  br i1 %cmp.i, label %do.end, label %while.body4.preheader.i

while.body4.preheader.i:                          ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  %sub.i = add nsw i32 %timeout.013.i, -5
  %call5.i = tail call fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %add.ptr3, i32 noundef 3) #4
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %while.body4.preheader.i.if.end_crit_edge, label %while.body4.preheader.i.while.body.i_crit_edge

while.body4.preheader.i.while.body.i_crit_edge:   ; preds = %while.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body4.preheader.i.if.end_crit_edge:         ; preds = %while.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end:                                           ; preds = %while.body4.preheader.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef %add.ptr3) #4
  br i1 %call6, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @amdgpu_device_gpu_recover(ptr noundef %add.ptr3, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgpu_vi_mailbox_put_irq(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 5
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %ack_irq, i32 noundef 0) #4
  %rcv_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 6
  %call2 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %rcv_irq, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_request_full_gpu_access(ptr noundef %adev, i1 noundef zeroext %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %init, i32 1, i32 3
  %call = tail call fastcc i32 @xgpu_vi_send_access_requests(ptr noundef %adev, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_release_full_gpu_access(ptr noundef %adev, i1 noundef zeroext %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %init, i32 2, i32 4
  %call = tail call fastcc i32 @xgpu_vi_send_access_requests(ptr noundef %adev, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_request_reset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xgpu_vi_send_access_requests(ptr noundef %adev, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_wait_reset_cmpl(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %adev, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not12.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not12.i, label %entry.xgpu_vi_poll_msg.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.xgpu_vi_poll_msg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgpu_vi_poll_msg.exit

while.body.i:                                     ; preds = %while.body4.preheader.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %timeout.013.i = phi i32 [ %sub.i, %while.body4.preheader.i.while.body.i_crit_edge ], [ 12000, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.013.i)
  %cmp.i = icmp eq i32 %timeout.013.i, 0
  br i1 %cmp.i, label %do.end.i, label %while.body4.preheader.i

while.body4.preheader.i:                          ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  %sub.i = add nsw i32 %timeout.013.i, -5
  %call5.i = tail call fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %adev, i32 noundef 3) #4
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %while.body4.preheader.i.xgpu_vi_poll_msg.exit_crit_edge, label %while.body4.preheader.i.while.body.i_crit_edge

while.body4.preheader.i.while.body.i_crit_edge:   ; preds = %while.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body4.preheader.i.xgpu_vi_poll_msg.exit_crit_edge: ; preds = %while.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgpu_vi_poll_msg.exit

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %xgpu_vi_poll_msg.exit

xgpu_vi_poll_msg.exit:                            ; preds = %do.end.i, %while.body4.preheader.i.xgpu_vi_poll_msg.exit_crit_edge, %entry.xgpu_vi_poll_msg.exit_crit_edge
  %r.1.i = phi i32 [ -62, %do.end.i ], [ 0, %entry.xgpu_vi_poll_msg.exit_crit_edge ], [ 0, %while.body4.preheader.i.xgpu_vi_poll_msg.exit_crit_edge ]
  ret i32 %r.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_set_mailbox_ack_irq(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5329, i32 noundef 2) #4
  %and = and i32 %call, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %shl = select i1 %cmp, i32 2, i32 0
  %or = or i32 %and, %shl
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5329, i32 noundef %or, i32 noundef 2) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_mailbox_ack_irq(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_set_mailbox_rcv_irq(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5329, i32 noundef 2) #4
  %and = and i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %cond = zext i1 %cmp to i32
  %or = or i32 %and, %cond
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5329, i32 noundef %or, i32 noundef 2) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpu_vi_mailbox_rcv_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gpu_recovery to i32))
  %0 = load i32, ptr @amdgpu_gpu_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %adev, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %flr_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %flr_work) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %adev, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp.not = icmp eq i32 %event, 3
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %and = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5324, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %event)
  %cmp4.not = icmp eq i32 %call3, %event
  br i1 %cmp4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %or.i = or i32 %call.i, 512
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5328, i32 noundef %or.i, i32 noundef 2) #4
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %and211.i = and i32 %call1.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool.not12.i = icmp eq i32 %and211.i, 0
  br i1 %tobool.not12.i, label %if.end6.cleanup_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %timeout.013.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ 12000, %if.end6.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.013.i)
  %cmp.i = icmp eq i32 %timeout.013.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  %sub.i = add nsw i32 %timeout.013.i, -1
  %call4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %and2.i = and i32 %call4.i, 256
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %do.end.i, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then.cleanup_crit_edge ], [ -2, %if.end2.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_gpu_recover(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgpu_vi_send_access_requests(ptr noundef %adev, i32 noundef %request) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5320, i32 noundef 2) #4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5320, i32 noundef %request, i32 noundef 2) #4
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %or.i.i = or i32 %call.i.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5328, i32 noundef %or.i.i, i32 noundef 2) #4
  %call.i20 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %and10.i = and i32 %call.i20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not11.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not11.i, label %entry.while.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body4.preheader.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %timeout.012.i = phi i32 [ %sub.i, %while.body4.preheader.i.while.body.i_crit_edge ], [ 12000, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.012.i)
  %cmp.i = icmp eq i32 %timeout.012.i, 0
  br i1 %cmp.i, label %while.body.i.cleanup.sink.split_crit_edge, label %while.body4.preheader.i

while.body.i.cleanup.sink.split_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

while.body4.preheader.i:                          ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  %sub.i = add nsw i32 %timeout.012.i, -5
  %call5.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %and.i = and i32 %call5.i, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body4.preheader.i.while.body.i_crit_edge, label %while.body4.preheader.i.if.end_crit_edge

while.body4.preheader.i.if.end_crit_edge:         ; preds = %while.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body4.preheader.i.while.body.i_crit_edge:   ; preds = %while.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end:                                           ; preds = %while.body4.preheader.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i21 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5328, i32 noundef 2) #4
  %and.i22 = and i32 %call.i21, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5328, i32 noundef %and.i22, i32 noundef 2) #4
  %5 = zext i32 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %request, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.then4_crit_edge
    i32 3, label %if.end.if.then4_crit_edge36
    i32 5, label %if.end.if.then4_crit_edge37
  ]

if.end.if.then4_crit_edge37:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.end.if.then4_crit_edge36:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.if.then4_crit_edge36, %if.end.if.then4_crit_edge37
  %call.i23 = tail call fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %adev, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not12.i = icmp eq i32 %call.i23, 0
  br i1 %tobool.not12.i, label %if.then4.cleanup_crit_edge, label %if.then4.while.body.i25_crit_edge

if.then4.while.body.i25_crit_edge:                ; preds = %if.then4
  br label %while.body.i25

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.i25:                                   ; preds = %while.body4.preheader.i29.while.body.i25_crit_edge, %if.then4.while.body.i25_crit_edge
  %timeout.013.i = phi i32 [ %sub.i26, %while.body4.preheader.i29.while.body.i25_crit_edge ], [ 12000, %if.then4.while.body.i25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.013.i)
  %cmp.i24 = icmp eq i32 %timeout.013.i, 0
  br i1 %cmp.i24, label %do.end, label %while.body4.preheader.i29

while.body4.preheader.i29:                        ; preds = %while.body.i25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  %sub.i26 = add nsw i32 %timeout.013.i, -5
  %call5.i27 = tail call fastcc i32 @xgpu_vi_mailbox_rcv_msg(ptr noundef %adev, i32 noundef 1) #4
  %tobool.not.i28 = icmp eq i32 %call5.i27, 0
  br i1 %tobool.not.i28, label %while.body4.preheader.i29.cleanup_crit_edge, label %while.body4.preheader.i29.while.body.i25_crit_edge

while.body4.preheader.i29.while.body.i25_crit_edge: ; preds = %while.body4.preheader.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i25

while.body4.preheader.i29.cleanup_crit_edge:      ; preds = %while.body4.preheader.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %while.body.i.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.9, %do.end ], [ @.str.7, %while.body.i.cleanup.sink.split_crit_edge ]
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body4.preheader.i29.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ -62, %cleanup.sink.split ], [ 0, %while.body4.preheader.i29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @xgpu_vi_mailbox_get_irq.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 608, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @xgpu_vi_virt_ops, !4, !"xgpu_vi_virt_ops", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 619, i32 30}
!5 = !{ptr @xgpu_fiji_mgcg_cgcg_init, !6, !"xgpu_fiji_mgcg_cgcg_init", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 46, i32 18}
!7 = !{ptr @xgpu_fiji_golden_settings_a10, !8, !"xgpu_fiji_golden_settings_a10", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 96, i32 18}
!9 = !{ptr @xgpu_fiji_golden_common_all, !10, !"xgpu_fiji_golden_common_all", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 124, i32 18}
!11 = !{ptr @xgpu_tonga_mgcg_cgcg_init, !12, !"xgpu_tonga_mgcg_cgcg_init", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 137, i32 18}
!13 = !{ptr @xgpu_tonga_golden_settings_a11, !14, !"xgpu_tonga_golden_settings_a11", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 227, i32 18}
!15 = !{ptr @xgpu_tonga_golden_common_all, !16, !"xgpu_tonga_golden_common_all", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 267, i32 18}
!17 = !{ptr @xgpu_vi_mailbox_ack_irq_funcs, !18, !"xgpu_vi_mailbox_ack_irq_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 560, i32 42}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 493, i32 2}
!21 = !{ptr @xgpu_vi_mailbox_rcv_irq_funcs, !22, !"xgpu_vi_mailbox_rcv_irq_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 565, i32 42}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 331, i32 4}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xgpu_vi_mailbox_send_ack._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @xgpu_vi_mailbox_send_ack._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 518, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xgpu_vi_mailbox_flr_work._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @xgpu_vi_mailbox_flr_work._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 416, i32 4}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @xgpu_vi_poll_msg._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @xgpu_vi_poll_msg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 449, i32 4}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xgpu_vi_send_access_requests._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @xgpu_vi_send_access_requests._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/mxgpu_vi.c", i32 396, i32 4}
!46 = !{ptr @xgpu_vi_poll_ack._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xgpu_vi_poll_ack._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2163574541, i64 2163575043, i64 2163574578, i64 2163574634, i64 2163574668, i64 2163574692, i64 2163574733, i64 2163574754, i64 2163574782, i64 2163574816}
