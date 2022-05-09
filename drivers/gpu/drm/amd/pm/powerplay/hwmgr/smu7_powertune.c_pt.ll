; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_powertune.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gpu_pt_config_reg = type { i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.98], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.98 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.95] }
%struct.anon.95 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.99 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.smu7_hwmgr = type { %struct.smu7_dpm_table, %struct.smu7_dpm_table, %struct.smu7_odn_dpm_table, %struct.smu7_mclk_latency_table, [8 x i32], i32, i32, i32, i32, i32, i32, %struct.smu7_clock_registers, i8, i16, i8, i16, i16, i32, i32, i32, %struct.smu7_leakage_voltage, %struct.smu7_leakage_voltage, %struct.smu7_leakage_voltage, i32, i32, i32, i16, i16, i16, i16, i8, %struct.smu7_vbios_boot_state, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, %struct.smu7_display_timing, %struct.smu7_thermal_temperature_setting, %struct.smu7_dpmlevel_enable_mask, i32, i32, i32, i32, i32, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i32, i32, i16, i16, i32, %struct.profile_mode_setting, i32, i32, i8, %struct._AtomCtrl_HiLoLeakageOffsetTable, %struct._AtomCtrl_EDCLeakgeTable }
%struct.smu7_dpm_table = type { %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table }
%struct.smu7_single_dpm_table = type { i32, [8 x %struct.smu7_dpm_level] }
%struct.smu7_dpm_level = type { i8, i32, i32 }
%struct.smu7_odn_dpm_table = type { %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels, %struct.smu7_odn_clock_voltage_dependency_table, %struct.smu7_odn_clock_voltage_dependency_table, i32, i32, i32 }
%struct.phm_odn_clock_levels = type { i32, i32, i32, i32, [8 x %struct.phm_odn_performance_level] }
%struct.phm_odn_performance_level = type { i32, i32, i8 }
%struct.smu7_odn_clock_voltage_dependency_table = type { i32, [8 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct.smu7_mclk_latency_table = type { i32, [8 x %struct.smu7_mclk_latency_entries] }
%struct.smu7_mclk_latency_entries = type { i32, i32 }
%struct.smu7_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu7_leakage_voltage = type { i16, [8 x i16], [8 x i16] }
%struct.smu7_vbios_boot_state = type { i16, i16, i16, i16, i32, i32, i16, i16 }
%struct.pp_atomctrl_voltage_table = type { i32, i32, i32, [32 x %struct.pp_atomctrl_voltage_table_entry] }
%struct.pp_atomctrl_voltage_table_entry = type { i16, i32 }
%struct.smu7_display_timing = type { i32, i32, i32 }
%struct.smu7_thermal_temperature_setting = type { i32, i32, i32 }
%struct.smu7_dpmlevel_enable_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.smu7_pcie_perf_range = type { i16, i16 }
%struct.profile_mode_setting = type { i8, i8, i8, i16, i8, i8, i8, i16 }
%struct._AtomCtrl_HiLoLeakageOffsetTable = type { i16, i16, i16 }
%struct._AtomCtrl_EDCLeakgeTable = type { [24 x i32] }
%struct.phm_ppt_v1_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16 }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }

@GCCACConfig_Polaris10 = internal constant { [21 x %struct.gpu_pt_config_reg], [124 x i8] } { [21 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 393235, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 8781843, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17170451, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 25559059, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 33947667, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 42336275, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 50724883, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 59113491, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 67502099, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 917523, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 9306131, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17694739, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 26083347, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 34471955, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 1048595, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 9437203, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17825811, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 26214419, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 34603027, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 42991635, i32 3 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [124 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smu7_enable_didt_config = private unnamed_addr constant [24 x i8] c"smu7_enable_didt_config\00", align 1
@smu7_enable_didt_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c\00", [62 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr = internal global ptr @smu7_enable_didt_config._entry, section ".printk_index", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DIDT Config failed.\00", [44 x i8] zeroinitializer }, align 32
@DIDTConfig_Polaris10 = internal constant { [110 x %struct.gpu_pt_config_reg], [552 x i8] } { [110 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 16, i32 255, i32 0, i32 115, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 65280, i32 8, i32 171, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 16711680, i32 16, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 -16777216, i32 24, i32 90, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 255, i32 0, i32 103, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 65280, i32 8, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 16711680, i32 16, i32 39, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 -16777216, i32 24, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 255, i32 0, i32 170, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 16383, i32 0, i32 14419, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67043328, i32 16, i32 90, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 536862720, i32 13, i32 3771, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 32766, i32 1, i32 14419, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 536838144, i32 15, i32 12627, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 255, i32 0, i32 10, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 65280, i32 8, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 16711680, i32 16, i32 23, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 -16777216, i32 24, i32 47, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 255, i32 0, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 65280, i32 8, i32 93, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 -65536, i32 16, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 16383, i32 0, i32 16383, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67043328, i32 16, i32 15, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 1, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 32766, i32 1, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 536838144, i32 15, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 4032, i32 6, i32 9, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 258048, i32 12, i32 9, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 255, i32 0, i32 4, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 65280, i32 8, i32 55, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 16711680, i32 16, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 -16777216, i32 24, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 255, i32 0, i32 84, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 16383, i32 0, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67043328, i32 16, i32 50, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 32766, i32 1, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 536838144, i32 15, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [552 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.6 = internal global ptr @smu7_enable_didt_config._entry.5, section ".printk_index", align 4
@GCCACConfig_Polaris11 = internal constant { [21 x %struct.gpu_pt_config_reg], [124 x i8] } { [21 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 393233, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 8781841, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17170449, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 25559057, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 33947665, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 42336273, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 50724881, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 59113489, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 67502097, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 917521, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 9306129, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17694737, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 26083345, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 34471953, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 1048593, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 9437201, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17825809, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 26214417, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 34603025, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 42991633, i32 3 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [124 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.9 = internal global ptr @smu7_enable_didt_config._entry.8, section ".printk_index", align 4
@DIDTConfig_Polaris11_Kicker = internal constant { [110 x %struct.gpu_pt_config_reg], [552 x i8] } { [110 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 16, i32 255, i32 0, i32 76, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 65280, i32 8, i32 208, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 16711680, i32 16, i32 105, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 -16777216, i32 24, i32 72, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 255, i32 0, i32 95, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 65280, i32 8, i32 122, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 16711680, i32 16, i32 31, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 -16777216, i32 24, i32 45, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 255, i32 0, i32 136, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 -65536, i32 16, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 16383, i32 0, i32 16383, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67043328, i32 16, i32 15, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 1, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 32766, i32 1, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 536838144, i32 15, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 4032, i32 6, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 258048, i32 12, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 255, i32 0, i32 10, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 65280, i32 8, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 16711680, i32 16, i32 23, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 -16777216, i32 24, i32 47, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 255, i32 0, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 65280, i32 8, i32 93, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 -65536, i32 16, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 16383, i32 0, i32 16383, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67043328, i32 16, i32 15, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 1, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 32766, i32 1, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 536838144, i32 15, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 4032, i32 6, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 258048, i32 12, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 255, i32 0, i32 4, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 65280, i32 8, i32 55, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 16711680, i32 16, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 -16777216, i32 24, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 255, i32 0, i32 84, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 16383, i32 0, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67043328, i32 16, i32 50, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 32766, i32 1, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 536838144, i32 15, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [552 x i8] zeroinitializer }, align 32
@DIDTConfig_Polaris11 = internal constant { [110 x %struct.gpu_pt_config_reg], [552 x i8] } { [110 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 16, i32 255, i32 0, i32 115, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 65280, i32 8, i32 171, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 16711680, i32 16, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 -16777216, i32 24, i32 90, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 255, i32 0, i32 103, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 65280, i32 8, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 16711680, i32 16, i32 39, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 -16777216, i32 24, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 255, i32 0, i32 170, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 16383, i32 0, i32 16383, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67043328, i32 16, i32 15, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 1, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 32766, i32 1, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 536838144, i32 15, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 4032, i32 6, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 258048, i32 12, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 255, i32 0, i32 10, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 65280, i32 8, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 16711680, i32 16, i32 23, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 -16777216, i32 24, i32 47, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 255, i32 0, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 65280, i32 8, i32 93, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 -65536, i32 16, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 16383, i32 0, i32 16383, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67043328, i32 16, i32 15, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 1, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 32766, i32 1, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 536838144, i32 15, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 4032, i32 6, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 258048, i32 12, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 255, i32 0, i32 4, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 65280, i32 8, i32 55, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 16711680, i32 16, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 -16777216, i32 24, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 255, i32 0, i32 84, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 16383, i32 0, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67043328, i32 16, i32 50, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 32766, i32 1, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 536838144, i32 15, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [552 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.12 = internal global ptr @smu7_enable_didt_config._entry.11, section ".printk_index", align 4
@smu7_enable_didt_config._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.15 = internal global ptr @smu7_enable_didt_config._entry.14, section ".printk_index", align 4
@DIDTConfig_Polaris12 = internal constant { [110 x %struct.gpu_pt_config_reg], [552 x i8] } { [110 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 16, i32 255, i32 0, i32 115, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 65280, i32 8, i32 171, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 16711680, i32 16, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 -16777216, i32 24, i32 90, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 255, i32 0, i32 103, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 65280, i32 8, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 16711680, i32 16, i32 39, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 -16777216, i32 24, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 255, i32 0, i32 170, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 16383, i32 0, i32 14419, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67043328, i32 16, i32 90, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 536862720, i32 13, i32 3771, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 32766, i32 1, i32 14419, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 536838144, i32 15, i32 12627, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 255, i32 0, i32 10, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 65280, i32 8, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 16711680, i32 16, i32 23, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 -16777216, i32 24, i32 47, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 255, i32 0, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 65280, i32 8, i32 93, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 -65536, i32 16, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 16383, i32 0, i32 16383, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67043328, i32 16, i32 15, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 1, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 32766, i32 1, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 536838144, i32 15, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 4032, i32 6, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 258048, i32 12, i32 8, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 255, i32 0, i32 4, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 65280, i32 8, i32 55, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 16711680, i32 16, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 -16777216, i32 24, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 255, i32 0, i32 84, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 16383, i32 0, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67043328, i32 16, i32 50, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 32766, i32 1, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 536838144, i32 15, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [552 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.18 = internal global ptr @smu7_enable_didt_config._entry.17, section ".printk_index", align 4
@GCCACConfig_VegaM = internal constant { [21 x %struct.gpu_pt_config_reg], [124 x i8] } { [21 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 393235, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 8781843, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17170451, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 25559059, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 33947667, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 42336275, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 50724883, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 59113491, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 67502099, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 917523, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 9306131, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17694739, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 26083347, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 34471955, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 1048595, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 9437203, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 17825811, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 26214419, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 34603027, i32 3 }, %struct.gpu_pt_config_reg { i32 0, i32 -1, i32 0, i32 42991635, i32 3 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [124 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.21 = internal global ptr @smu7_enable_didt_config._entry.20, section ".printk_index", align 4
@DIDTConfig_VegaM = internal constant { [110 x %struct.gpu_pt_config_reg], [552 x i8] } { [110 x %struct.gpu_pt_config_reg] [%struct.gpu_pt_config_reg { i32 16, i32 255, i32 0, i32 115, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 65280, i32 8, i32 171, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 16711680, i32 16, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 16, i32 -16777216, i32 24, i32 90, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 255, i32 0, i32 103, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 65280, i32 8, i32 132, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 16711680, i32 16, i32 39, i32 2 }, %struct.gpu_pt_config_reg { i32 17, i32 -16777216, i32 24, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 255, i32 0, i32 170, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 18, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 1, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 3, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 16383, i32 0, i32 14419, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67043328, i32 16, i32 90, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 2, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 536862720, i32 13, i32 3771, i32 2 }, %struct.gpu_pt_config_reg { i32 4, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 32766, i32 1, i32 14419, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 536838144, i32 15, i32 12627, i32 2 }, %struct.gpu_pt_config_reg { i32 5, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 0, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 255, i32 0, i32 10, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 65280, i32 8, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 16711680, i32 16, i32 23, i32 2 }, %struct.gpu_pt_config_reg { i32 80, i32 -16777216, i32 24, i32 47, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 255, i32 0, i32 70, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 65280, i32 8, i32 93, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 81, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 65, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 67, i32 -65536, i32 16, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 16383, i32 0, i32 16383, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67043328, i32 16, i32 15, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 66, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 68, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 1, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 32766, i32 1, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 536838144, i32 15, i32 3550, i32 2 }, %struct.gpu_pt_config_reg { i32 69, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 4032, i32 6, i32 9, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 258048, i32 12, i32 9, i32 2 }, %struct.gpu_pt_config_reg { i32 64, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 255, i32 0, i32 4, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 65280, i32 8, i32 55, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 16711680, i32 16, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 112, i32 -16777216, i32 24, i32 255, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 255, i32 0, i32 84, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 65280, i32 8, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 16711680, i32 16, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 113, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 97, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 65535, i32 0, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 99, i32 -65536, i32 16, i32 65535, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 16383, i32 0, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 49152, i32 14, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67043328, i32 16, i32 50, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 67108864, i32 26, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 2013265920, i32 27, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 98, i32 -2147483648, i32 31, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 126, i32 1, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 8064, i32 7, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 536862720, i32 13, i32 426, i32 2 }, %struct.gpu_pt_config_reg { i32 100, i32 -536870912, i32 29, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 32766, i32 1, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 536838144, i32 15, i32 15838, i32 2 }, %struct.gpu_pt_config_reg { i32 101, i32 -1073741824, i32 30, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 1, i32 0, i32 1, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 2, i32 1, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 12, i32 2, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 16, i32 4, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 32, i32 5, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 4032, i32 6, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 258048, i32 12, i32 16, i32 2 }, %struct.gpu_pt_config_reg { i32 96, i32 -262144, i32 18, i32 0, i32 2 }, %struct.gpu_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [552 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.24 = internal global ptr @smu7_enable_didt_config._entry.23, section ".printk_index", align 4
@smu7_enable_didt_config._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.27 = internal global ptr @smu7_enable_didt_config._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EnableDiDt failed.\00", [45 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.31 = internal global ptr @smu7_enable_didt_config._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable DPM DIDT.\00", [37 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.35 = internal global ptr @smu7_enable_didt_config._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to enable workaround for CRC issue.\00", [53 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.39 = internal global ptr @smu7_enable_didt_config._entry.38, section ".printk_index", align 4
@smu7_enable_didt_config._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_didt_config, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_didt_config._entry_ptr.42 = internal global ptr @smu7_enable_didt_config._entry.41, section ".printk_index", align 4
@smu7_disable_didt_config._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_disable_didt_config = private unnamed_addr constant [25 x i8] c"smu7_disable_didt_config\00", align 1
@smu7_disable_didt_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_disable_didt_config, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_disable_didt_config._entry_ptr = internal global ptr @smu7_disable_didt_config._entry, section ".printk_index", align 4
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Post DIDT enable clock gating failed.\00", [58 x i8] zeroinitializer }, align 32
@smu7_disable_didt_config._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_disable_didt_config._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_disable_didt_config, ptr @.str.2, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_disable_didt_config._entry_ptr.46 = internal global ptr @smu7_disable_didt_config._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to disable DPM DIDT.\00", [36 x i8] zeroinitializer }, align 32
@smu7_enable_smc_cac._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_enable_smc_cac = private unnamed_addr constant [20 x i8] c"smu7_enable_smc_cac\00", align 1
@smu7_enable_smc_cac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_smc_cac, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_smc_cac._entry_ptr = internal global ptr @smu7_enable_smc_cac._entry, section ".printk_index", align 4
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable CAC in SMC.\00", [35 x i8] zeroinitializer }, align 32
@smu7_disable_smc_cac._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_disable_smc_cac = private unnamed_addr constant [21 x i8] c"smu7_disable_smc_cac\00", align 1
@smu7_disable_smc_cac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_disable_smc_cac, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_disable_smc_cac._entry_ptr = internal global ptr @smu7_disable_smc_cac._entry, section ".printk_index", align 4
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable CAC in SMC.\00", [34 x i8] zeroinitializer }, align 32
@smu7_enable_power_containment._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_enable_power_containment = private unnamed_addr constant [30 x i8] c"smu7_enable_power_containment\00", align 1
@smu7_enable_power_containment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_power_containment, ptr @.str.2, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_power_containment._entry_ptr = internal global ptr @smu7_enable_power_containment._entry, section ".printk_index", align 4
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable TDCLimit in SMC.\00", [62 x i8] zeroinitializer }, align 32
@smu7_enable_power_containment._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_enable_power_containment._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_enable_power_containment, ptr @.str.2, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_enable_power_containment._entry_ptr.53 = internal global ptr @smu7_enable_power_containment._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable PkgPwrTracking in SMC.\00", [56 x i8] zeroinitializer }, align 32
@smu7_enable_power_containment._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.smu7_enable_power_containment, ptr @.str.2, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013amdgpu: Failed to set Default Power Limit in SMC!\00", [44 x i8] zeroinitializer }, align 32
@smu7_enable_power_containment._entry_ptr.57 = internal global ptr @smu7_enable_power_containment._entry.55, section ".printk_index", align 4
@smu7_disable_power_containment._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_disable_power_containment = private unnamed_addr constant [31 x i8] c"smu7_disable_power_containment\00", align 1
@smu7_disable_power_containment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_disable_power_containment, ptr @.str.2, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_disable_power_containment._entry_ptr = internal global ptr @smu7_disable_power_containment._entry, section ".printk_index", align 4
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to disable TDCLimit in SMC.\00", [61 x i8] zeroinitializer }, align 32
@smu7_disable_power_containment._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_disable_power_containment._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_disable_power_containment, ptr @.str.2, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_disable_power_containment._entry_ptr.61 = internal global ptr @smu7_disable_power_containment._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable DTE in SMC.\00", [34 x i8] zeroinitializer }, align 32
@smu7_disable_power_containment._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_disable_power_containment._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_disable_power_containment, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_disable_power_containment._entry_ptr.65 = internal global ptr @smu7_disable_power_containment._entry.64, section ".printk_index", align 4
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to disable PkgPwrTracking in SMC.\00", [55 x i8] zeroinitializer }, align 32
@smu7_program_pt_config_registers._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_program_pt_config_registers = private unnamed_addr constant [33 x i8] c"smu7_program_pt_config_registers\00", align 1
@smu7_program_pt_config_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_program_pt_config_registers, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_program_pt_config_registers._entry_ptr = internal global ptr @smu7_program_pt_config_registers._entry, section ".printk_index", align 4
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid config register table.\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 26607, i64 26623]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 224, i64 229]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 207, i64 239, i64 255]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 26607, i64 26623]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 224, i64 229]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 207, i64 239, i64 255]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"GCCACConfig_Polaris10\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 36, i32 39 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 988, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"DIDTConfig_Polaris10\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 98, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 990, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"GCCACConfig_Polaris11\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 67, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 993, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"DIDTConfig_Polaris11_Kicker\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 523, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"DIDTConfig_Polaris11\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 240, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1000, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1003, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"DIDTConfig_Polaris12\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 382, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1005, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"GCCACConfig_VegaM\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 669, i32 39 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1008, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"DIDTConfig_VegaM\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 706, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1010, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1016, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1022, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1030, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1038, i32 6 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1044, i32 6 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1074, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1081, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1103, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1120, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1170, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1181, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1190, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1211, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1221, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1231, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 907, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @smu7_disable_didt_config._entry, ptr @smu7_disable_didt_config._entry.45, ptr @smu7_disable_didt_config._entry_ptr, ptr @smu7_disable_didt_config._entry_ptr.46, ptr @smu7_disable_power_containment._entry, ptr @smu7_disable_power_containment._entry.60, ptr @smu7_disable_power_containment._entry.64, ptr @smu7_disable_power_containment._entry_ptr, ptr @smu7_disable_power_containment._entry_ptr.61, ptr @smu7_disable_power_containment._entry_ptr.65, ptr @smu7_disable_smc_cac._entry, ptr @smu7_disable_smc_cac._entry_ptr, ptr @smu7_enable_didt_config._entry, ptr @smu7_enable_didt_config._entry.11, ptr @smu7_enable_didt_config._entry.14, ptr @smu7_enable_didt_config._entry.17, ptr @smu7_enable_didt_config._entry.20, ptr @smu7_enable_didt_config._entry.23, ptr @smu7_enable_didt_config._entry.26, ptr @smu7_enable_didt_config._entry.30, ptr @smu7_enable_didt_config._entry.34, ptr @smu7_enable_didt_config._entry.38, ptr @smu7_enable_didt_config._entry.41, ptr @smu7_enable_didt_config._entry.5, ptr @smu7_enable_didt_config._entry.8, ptr @smu7_enable_didt_config._entry_ptr, ptr @smu7_enable_didt_config._entry_ptr.12, ptr @smu7_enable_didt_config._entry_ptr.15, ptr @smu7_enable_didt_config._entry_ptr.18, ptr @smu7_enable_didt_config._entry_ptr.21, ptr @smu7_enable_didt_config._entry_ptr.24, ptr @smu7_enable_didt_config._entry_ptr.27, ptr @smu7_enable_didt_config._entry_ptr.31, ptr @smu7_enable_didt_config._entry_ptr.35, ptr @smu7_enable_didt_config._entry_ptr.39, ptr @smu7_enable_didt_config._entry_ptr.42, ptr @smu7_enable_didt_config._entry_ptr.6, ptr @smu7_enable_didt_config._entry_ptr.9, ptr @smu7_enable_power_containment._entry, ptr @smu7_enable_power_containment._entry.52, ptr @smu7_enable_power_containment._entry.55, ptr @smu7_enable_power_containment._entry_ptr, ptr @smu7_enable_power_containment._entry_ptr.53, ptr @smu7_enable_power_containment._entry_ptr.57, ptr @smu7_enable_smc_cac._entry, ptr @smu7_enable_smc_cac._entry_ptr, ptr @smu7_program_pt_config_registers._entry, ptr @smu7_program_pt_config_registers._entry_ptr, ptr @GCCACConfig_Polaris10, ptr @smu7_enable_didt_config._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @DIDTConfig_Polaris10, ptr @smu7_enable_didt_config._rs.4, ptr @GCCACConfig_Polaris11, ptr @smu7_enable_didt_config._rs.7, ptr @DIDTConfig_Polaris11_Kicker, ptr @DIDTConfig_Polaris11, ptr @smu7_enable_didt_config._rs.10, ptr @smu7_enable_didt_config._rs.13, ptr @DIDTConfig_Polaris12, ptr @smu7_enable_didt_config._rs.16, ptr @GCCACConfig_VegaM, ptr @smu7_enable_didt_config._rs.19, ptr @DIDTConfig_VegaM, ptr @smu7_enable_didt_config._rs.22, ptr @smu7_enable_didt_config._rs.25, ptr @.str.28, ptr @smu7_enable_didt_config._rs.29, ptr @.str.32, ptr @smu7_enable_didt_config._rs.33, ptr @.str.36, ptr @smu7_enable_didt_config._rs.37, ptr @smu7_enable_didt_config._rs.40, ptr @smu7_disable_didt_config._rs, ptr @.str.43, ptr @smu7_disable_didt_config._rs.44, ptr @.str.47, ptr @smu7_enable_smc_cac._rs, ptr @.str.48, ptr @smu7_disable_smc_cac._rs, ptr @.str.49, ptr @smu7_enable_power_containment._rs, ptr @.str.50, ptr @smu7_enable_power_containment._rs.51, ptr @.str.54, ptr @.str.56, ptr @smu7_disable_power_containment._rs, ptr @.str.58, ptr @smu7_disable_power_containment._rs.59, ptr @.str.62, ptr @smu7_disable_power_containment._rs.63, ptr @.str.66, ptr @smu7_program_pt_config_registers._rs, ptr @.str.67], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GCCACConfig_Polaris10 to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DIDTConfig_Polaris10 to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GCCACConfig_Polaris11 to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DIDTConfig_Polaris11_Kicker to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DIDTConfig_Polaris11 to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DIDTConfig_Polaris12 to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GCCACConfig_VegaM to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DIDTConfig_VegaM to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_didt_config._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_didt_config._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_didt_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_didt_config._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_didt_config._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_smc_cac._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_smc_cac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_smc_cac._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_smc_cac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_power_containment._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_power_containment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_power_containment._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_power_containment._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_enable_power_containment._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_power_containment._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_power_containment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_power_containment._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_power_containment._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_power_containment._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_disable_power_containment._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_program_pt_config_registers._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_program_pt_config_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_enable_didt_config(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %efuse = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %efuse) #4
  %2 = ptrtoint ptr %efuse to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %efuse, align 4, !annotation !149
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config, align 8
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i454 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx.i454 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i454, align 4
  %9 = and i32 %8, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %1) #4
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #4
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call17 = tail call i32 %15(ptr noundef %11, i32 noundef 49664) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp470.not = icmp eq i32 %4, 0
  br i1 %cmp470.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.0471 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl i32 %count.0471, 16
  %or = or i32 %shl, 1610612736
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void %21(ptr noundef %17, i32 noundef 49664, i32 noundef %or) #4
  %22 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_id, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %for.body.for.inc_crit_edge [
    i32 15, label %if.then22
    i32 16, label %if.then51
    i32 17, label %if.then142
    i32 18, label %if.then181
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then22:                                        ; preds = %for.body
  %call23 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull @GCCACConfig_Polaris10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %do.end32, label %if.then25

if.then25:                                        ; preds = %if.then22
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.then25.cleanup.sink.split_crit_edge, label %do.end

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

do.end32:                                         ; preds = %if.then22
  %call33 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull @DIDTConfig_Polaris10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp35 = icmp eq i32 %call33, 0
  br i1 %cmp35, label %do.end32.for.inc_crit_edge, label %if.then36

do.end32.for.inc_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then36:                                        ; preds = %do.end32
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.4, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.cleanup.sink.split_crit_edge, label %do.end42

if.then36.cleanup.sink.split_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

if.then51:                                        ; preds = %for.body
  %call52 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull @GCCACConfig_Polaris11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp54 = icmp eq i32 %call52, 0
  br i1 %cmp54, label %do.end67, label %if.then55

if.then55:                                        ; preds = %if.then51
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.7, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.cleanup.sink.split_crit_edge, label %do.end61

if.then55.cleanup.sink.split_crit_edge:           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

do.end67:                                         ; preds = %if.then51
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %device68 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %device68 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device68, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %28, label %do.end67.if.else119_crit_edge [
    i16 26607, label %land.lhs.true
    i16 26623, label %land.lhs.true87
  ]

do.end67.if.else119_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else119

land.lhs.true:                                    ; preds = %do.end67
  %revision = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 12
  %30 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %revision, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %31, label %land.lhs.true111 [
    i8 -32, label %land.lhs.true.do.body122_crit_edge
    i8 -27, label %land.lhs.true.do.body122_crit_edge492
  ]

land.lhs.true.do.body122_crit_edge492:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body122

land.lhs.true.do.body122_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body122

land.lhs.true87:                                  ; preds = %do.end67
  %revision89 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 12
  %33 = ptrtoint ptr %revision89 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %revision89, align 4
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %34, label %land.lhs.true87.if.else119_crit_edge [
    i8 -49, label %land.lhs.true87.do.body122_crit_edge
    i8 -17, label %land.lhs.true87.do.body122_crit_edge493
    i8 -1, label %land.lhs.true87.do.body122_crit_edge494
  ]

land.lhs.true87.do.body122_crit_edge494:          ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body122

land.lhs.true87.do.body122_crit_edge493:          ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body122

land.lhs.true87.do.body122_crit_edge:             ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body122

land.lhs.true87.if.else119_crit_edge:             ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else119

land.lhs.true111:                                 ; preds = %land.lhs.true
  %36 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -30, i8 %37)
  %cmp115 = icmp eq i8 %37, -30
  br i1 %cmp115, label %land.lhs.true111.do.body122_crit_edge, label %land.lhs.true111.if.else119_crit_edge

land.lhs.true111.if.else119_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else119

land.lhs.true111.do.body122_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body122

if.else119:                                       ; preds = %land.lhs.true111.if.else119_crit_edge, %land.lhs.true87.if.else119_crit_edge, %do.end67.if.else119_crit_edge
  br label %do.body122

do.body122:                                       ; preds = %if.else119, %land.lhs.true111.do.body122_crit_edge, %land.lhs.true87.do.body122_crit_edge, %land.lhs.true87.do.body122_crit_edge493, %land.lhs.true87.do.body122_crit_edge494, %land.lhs.true.do.body122_crit_edge, %land.lhs.true.do.body122_crit_edge492
  %DIDTConfig_Polaris11_Kicker.sink = phi ptr [ @DIDTConfig_Polaris11, %if.else119 ], [ @DIDTConfig_Polaris11_Kicker, %land.lhs.true87.do.body122_crit_edge ], [ @DIDTConfig_Polaris11_Kicker, %land.lhs.true87.do.body122_crit_edge493 ], [ @DIDTConfig_Polaris11_Kicker, %land.lhs.true87.do.body122_crit_edge494 ], [ @DIDTConfig_Polaris11_Kicker, %land.lhs.true.do.body122_crit_edge ], [ @DIDTConfig_Polaris11_Kicker, %land.lhs.true.do.body122_crit_edge492 ], [ @DIDTConfig_Polaris11_Kicker, %land.lhs.true111.do.body122_crit_edge ]
  %call118 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull %DIDTConfig_Polaris11_Kicker.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp123 = icmp eq i32 %call118, 0
  br i1 %cmp123, label %do.body122.for.inc_crit_edge, label %if.then125

do.body122.for.inc_crit_edge:                     ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then125:                                       ; preds = %do.body122
  %call126 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.10, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then125.cleanup.sink.split_crit_edge, label %do.end131

if.then125.cleanup.sink.split_crit_edge:          ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end131:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

if.then142:                                       ; preds = %for.body
  %call143 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull @GCCACConfig_Polaris11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp145 = icmp eq i32 %call143, 0
  br i1 %cmp145, label %do.end159, label %if.then147

if.then147:                                       ; preds = %if.then142
  %call148 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.13, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then147.cleanup.sink.split_crit_edge, label %do.end153

if.then147.cleanup.sink.split_crit_edge:          ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end153:                                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

do.end159:                                        ; preds = %if.then142
  %call160 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull @DIDTConfig_Polaris12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp162 = icmp eq i32 %call160, 0
  br i1 %cmp162, label %do.end159.for.inc_crit_edge, label %if.then164

do.end159.for.inc_crit_edge:                      ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then164:                                       ; preds = %do.end159
  %call165 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.16, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then164.cleanup.sink.split_crit_edge, label %do.end170

if.then164.cleanup.sink.split_crit_edge:          ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end170:                                        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #6
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

if.then181:                                       ; preds = %for.body
  %call182 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull @GCCACConfig_VegaM)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp184 = icmp eq i32 %call182, 0
  br i1 %cmp184, label %do.end198, label %if.then186

if.then186:                                       ; preds = %if.then181
  %call187 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.19, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then186.cleanup.sink.split_crit_edge, label %do.end192

if.then186.cleanup.sink.split_crit_edge:          ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end192:                                        ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

do.end198:                                        ; preds = %if.then181
  %call199 = tail call fastcc i32 @smu7_program_pt_config_registers(ptr noundef %hwmgr, ptr noundef nonnull @DIDTConfig_VegaM)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp201 = icmp eq i32 %call199, 0
  br i1 %cmp201, label %do.end198.for.inc_crit_edge, label %if.then203

do.end198.for.inc_crit_edge:                      ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then203:                                       ; preds = %do.end198
  %call204 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.22, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then203.cleanup.sink.split_crit_edge, label %do.end209

if.then203.cleanup.sink.split_crit_edge:          ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end209:                                        ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #6
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup.sink.split

for.inc:                                          ; preds = %do.end198.for.inc_crit_edge, %do.end159.for.inc_crit_edge, %do.body122.for.inc_crit_edge, %do.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %count.0471, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %write_register222 = getelementptr inbounds %struct.cgs_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_register222 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_register222, align 4
  tail call void %43(ptr noundef %39, i32 noundef 49664, i32 noundef %call17) #4
  %call224 = tail call fastcc i32 @smu7_enable_didt(ptr noundef %hwmgr, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp226 = icmp eq i32 %call224, 0
  br i1 %cmp226, label %do.end240, label %if.then228

if.then228:                                       ; preds = %for.end
  %call229 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.25, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then228.cleanup.sink.split_crit_edge, label %do.end234

if.then228.cleanup.sink.split_crit_edge:          ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end234:                                        ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #6
  %call236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28) #7
  br label %cleanup.sink.split

do.end240:                                        ; preds = %for.end
  %chip_id241 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %44 = ptrtoint ptr %chip_id241 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chip_id241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %45)
  %cmp242 = icmp eq i32 %45, 16
  br i1 %cmp242, label %if.then244, label %do.end240.cleanup.sink.split_crit_edge

do.end240.cleanup.sink.split_crit_edge:           ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then244:                                       ; preds = %do.end240
  %call245 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 777, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp247 = icmp eq i32 %call245, 0
  br i1 %cmp247, label %do.end261, label %if.then249

if.then249:                                       ; preds = %if.then244
  %call250 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.29, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.then249.cleanup.sink.split_crit_edge, label %do.end255

if.then249.cleanup.sink.split_crit_edge:          ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end255:                                        ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #6
  %call257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32) #7
  br label %cleanup.sink.split

do.end261:                                        ; preds = %if.then244
  %pdev262 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %pdev262 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev262, align 4
  %device263 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %device263 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %device263, align 2
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %49, label %do.end261.if.else333_crit_edge [
    i16 26607, label %land.lhs.true267
    i16 26623, label %land.lhs.true285
  ]

do.end261.if.else333_crit_edge:                   ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else333

land.lhs.true267:                                 ; preds = %do.end261
  %revision269 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 12
  %51 = ptrtoint ptr %revision269 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %revision269, align 4
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %52, label %land.lhs.true309 [
    i8 -32, label %land.lhs.true267.if.then315_crit_edge
    i8 -27, label %land.lhs.true267.if.then315_crit_edge495
  ]

land.lhs.true267.if.then315_crit_edge495:         ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315

land.lhs.true267.if.then315_crit_edge:            ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315

land.lhs.true285:                                 ; preds = %do.end261
  %revision287 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 12
  %54 = ptrtoint ptr %revision287 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %revision287, align 4
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %55, label %land.lhs.true285.if.else333_crit_edge [
    i8 -49, label %land.lhs.true285.if.then315_crit_edge
    i8 -17, label %land.lhs.true285.if.then315_crit_edge496
    i8 -1, label %land.lhs.true285.if.then315_crit_edge497
  ]

land.lhs.true285.if.then315_crit_edge497:         ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315

land.lhs.true285.if.then315_crit_edge496:         ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315

land.lhs.true285.if.then315_crit_edge:            ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315

land.lhs.true285.if.else333_crit_edge:            ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else333

land.lhs.true309:                                 ; preds = %land.lhs.true267
  %57 = ptrtoint ptr %revision269 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %revision269, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -30, i8 %58)
  %cmp313 = icmp eq i8 %58, -30
  br i1 %cmp313, label %land.lhs.true309.if.then315_crit_edge, label %land.lhs.true309.if.else333_crit_edge

land.lhs.true309.if.else333_crit_edge:            ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else333

land.lhs.true309.if.then315_crit_edge:            ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315

if.then315:                                       ; preds = %land.lhs.true309.if.then315_crit_edge, %land.lhs.true285.if.then315_crit_edge, %land.lhs.true285.if.then315_crit_edge496, %land.lhs.true285.if.then315_crit_edge497, %land.lhs.true267.if.then315_crit_edge, %land.lhs.true267.if.then315_crit_edge495
  %call316 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 779, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %cmp318 = icmp eq i32 %call316, 0
  br i1 %cmp318, label %if.then315.cleanup.sink.split_crit_edge, label %if.then320

if.then315.cleanup.sink.split_crit_edge:          ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then320:                                       ; preds = %if.then315
  %call321 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.33, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %if.then320.cleanup.sink.split_crit_edge, label %do.end326

if.then320.cleanup.sink.split_crit_edge:          ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end326:                                        ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #6
  %call328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36) #7
  br label %cleanup.sink.split

if.else333:                                       ; preds = %land.lhs.true309.if.else333_crit_edge, %land.lhs.true285.if.else333_crit_edge, %do.end261.if.else333_crit_edge
  %call334 = call i32 @atomctrl_read_efuse(ptr noundef %hwmgr, i16 noundef zeroext 547, i16 noundef zeroext 547, ptr noundef nonnull %efuse) #4
  %59 = ptrtoint ptr %efuse to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %efuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp335 = icmp eq i32 %60, 1
  br i1 %cmp335, label %if.then337, label %if.else355

if.then337:                                       ; preds = %if.else333
  %call338 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 779, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %cmp340 = icmp eq i32 %call338, 0
  br i1 %cmp340, label %if.then337.cleanup.sink.split_crit_edge, label %if.then342

if.then337.cleanup.sink.split_crit_edge:          ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then342:                                       ; preds = %if.then337
  %call343 = call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.37, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %if.then342.cleanup.sink.split_crit_edge, label %do.end348

if.then342.cleanup.sink.split_crit_edge:          ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end348:                                        ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #6
  %call350 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36) #7
  br label %cleanup.sink.split

if.else355:                                       ; preds = %if.else333
  %call356 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 780, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356)
  %cmp358 = icmp eq i32 %call356, 0
  br i1 %cmp358, label %if.else355.cleanup.sink.split_crit_edge, label %if.then360

if.else355.cleanup.sink.split_crit_edge:          ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then360:                                       ; preds = %if.else355
  %call361 = call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_didt_config._rs.40, ptr noundef nonnull @__func__.smu7_enable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %if.then360.cleanup.sink.split_crit_edge, label %do.end366

if.then360.cleanup.sink.split_crit_edge:          ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end366:                                        ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #6
  %call368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end366, %if.then360.cleanup.sink.split_crit_edge, %if.else355.cleanup.sink.split_crit_edge, %do.end348, %if.then342.cleanup.sink.split_crit_edge, %if.then337.cleanup.sink.split_crit_edge, %do.end326, %if.then320.cleanup.sink.split_crit_edge, %if.then315.cleanup.sink.split_crit_edge, %do.end255, %if.then249.cleanup.sink.split_crit_edge, %do.end240.cleanup.sink.split_crit_edge, %do.end234, %if.then228.cleanup.sink.split_crit_edge, %do.end209, %if.then203.cleanup.sink.split_crit_edge, %do.end192, %if.then186.cleanup.sink.split_crit_edge, %do.end170, %if.then164.cleanup.sink.split_crit_edge, %do.end153, %if.then147.cleanup.sink.split_crit_edge, %do.end131, %if.then125.cleanup.sink.split_crit_edge, %do.end61, %if.then55.cleanup.sink.split_crit_edge, %do.end42, %if.then36.cleanup.sink.split_crit_edge, %do.end, %if.then25.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then315.cleanup.sink.split_crit_edge ], [ 0, %if.else355.cleanup.sink.split_crit_edge ], [ 0, %if.then337.cleanup.sink.split_crit_edge ], [ 0, %do.end240.cleanup.sink.split_crit_edge ], [ %call33, %do.end42 ], [ %call33, %if.then36.cleanup.sink.split_crit_edge ], [ %call23, %do.end ], [ %call23, %if.then25.cleanup.sink.split_crit_edge ], [ %call118, %do.end131 ], [ %call118, %if.then125.cleanup.sink.split_crit_edge ], [ %call52, %do.end61 ], [ %call52, %if.then55.cleanup.sink.split_crit_edge ], [ %call160, %do.end170 ], [ %call160, %if.then164.cleanup.sink.split_crit_edge ], [ %call143, %do.end153 ], [ %call143, %if.then147.cleanup.sink.split_crit_edge ], [ %call199, %do.end209 ], [ %call199, %if.then203.cleanup.sink.split_crit_edge ], [ %call182, %do.end192 ], [ %call182, %if.then186.cleanup.sink.split_crit_edge ], [ %call316, %do.end326 ], [ %call316, %if.then320.cleanup.sink.split_crit_edge ], [ %call338, %do.end348 ], [ %call338, %if.then342.cleanup.sink.split_crit_edge ], [ %call356, %do.end366 ], [ %call356, %if.then360.cleanup.sink.split_crit_edge ], [ %call245, %do.end255 ], [ %call245, %if.then249.cleanup.sink.split_crit_edge ], [ %call224, %do.end234 ], [ %call224, %if.then228.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #4
  call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu7_program_pt_config_registers(ptr nocapture noundef readonly %hwmgr, ptr noundef readonly %cac_config_regs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %cac_config_regs, null
  br i1 %cmp.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %cac_config_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cac_config_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp7.not112 = icmp eq i32 %1, -1
  br i1 %cmp7.not112, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %device22 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %while.body

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_program_pt_config_registers._rs, ptr noundef nonnull @__func__.smu7_program_pt_config_registers) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.67) #7
  br label %cleanup

while.body:                                       ; preds = %if.end66.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %78, %if.end66.while.body_crit_edge ]
  %cache.0115 = phi i32 [ 0, %while.body.lr.ph ], [ %cache.1, %if.end66.while.body_crit_edge ]
  %config_regs.0113 = phi ptr [ %cac_config_regs, %while.body.lr.ph ], [ %incdec.ptr, %if.end66.while.body_crit_edge ]
  %type = getelementptr inbounds %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %4, label %sw.default [
    i32 4, label %if.then9
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb21
  ]

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %value = getelementptr inbounds %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %shift = getelementptr inbounds %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 0, i32 2
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift, align 4
  %shl = shl i32 %7, %9
  %mask = getelementptr inbounds %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 0, i32 1
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %and = and i32 %shl, %11
  %or = or i32 %and, %cache.0115
  br label %if.end66

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device22, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_ind_register, align 4
  %call13 = tail call i32 %17(ptr noundef %13, i32 noundef 1, i32 noundef %2) #4
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device22, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %read_ind_register17 = getelementptr inbounds %struct.cgs_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read_ind_register17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_ind_register17, align 4
  %call20 = tail call i32 %23(ptr noundef %19, i32 noundef 3, i32 noundef %2) #4
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device22, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %read_ind_register24 = getelementptr inbounds %struct.cgs_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read_ind_register24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_ind_register24, align 4
  %call27 = tail call i32 %29(ptr noundef %25, i32 noundef 4, i32 noundef %2) #4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device22, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call32 = tail call i32 %35(ptr noundef %31, i32 noundef %2) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb14, %sw.bb
  %data.0 = phi i32 [ %call32, %sw.default ], [ %call27, %sw.bb21 ], [ %call20, %sw.bb14 ], [ %call13, %sw.bb ]
  %mask33 = getelementptr inbounds %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 0, i32 1
  %36 = ptrtoint ptr %mask33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask33, align 4
  %neg = xor i32 %37, -1
  %and34 = and i32 %data.0, %neg
  %value35 = getelementptr inbounds %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 0, i32 3
  %38 = ptrtoint ptr %value35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value35, align 4
  %shift36 = getelementptr inbounds %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 0, i32 2
  %40 = ptrtoint ptr %shift36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %shift36, align 4
  %shl37 = shl i32 %39, %41
  %and39 = and i32 %shl37, %37
  %or40 = or i32 %and34, %cache.0115
  %or41 = or i32 %or40, %and39
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %43, label %sw.default60 [
    i32 1, label %sw.bb43
    i32 2, label %sw.bb48
    i32 3, label %sw.bb54
  ]

sw.bb43:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device22, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_ind_register, align 4
  %51 = ptrtoint ptr %config_regs.0113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config_regs.0113, align 4
  tail call void %50(ptr noundef %46, i32 noundef 1, i32 noundef %52, i32 noundef %or41) #4
  br label %if.end66

sw.bb48:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device22, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %write_ind_register51 = getelementptr inbounds %struct.cgs_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %write_ind_register51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_ind_register51, align 4
  %59 = ptrtoint ptr %config_regs.0113 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %config_regs.0113, align 4
  tail call void %58(ptr noundef %54, i32 noundef 3, i32 noundef %60, i32 noundef %or41) #4
  br label %if.end66

sw.bb54:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device22, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %write_ind_register57 = getelementptr inbounds %struct.cgs_ops, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %write_ind_register57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_ind_register57, align 4
  %67 = ptrtoint ptr %config_regs.0113 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %config_regs.0113, align 4
  tail call void %66(ptr noundef %62, i32 noundef 4, i32 noundef %68, i32 noundef %or41) #4
  br label %if.end66

sw.default60:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device22, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_register, align 4
  %75 = ptrtoint ptr %config_regs.0113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %config_regs.0113, align 4
  tail call void %74(ptr noundef %70, i32 noundef %76, i32 noundef %or41) #4
  br label %if.end66

if.end66:                                         ; preds = %sw.default60, %sw.bb54, %sw.bb48, %sw.bb43, %if.then9
  %cache.1 = phi i32 [ %or, %if.then9 ], [ 0, %sw.default60 ], [ 0, %sw.bb54 ], [ 0, %sw.bb48 ], [ 0, %sw.bb43 ]
  %incdec.ptr = getelementptr %struct.gpu_pt_config_reg, ptr %config_regs.0113, i32 1
  %77 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr, align 4
  %cmp7.not = icmp eq i32 %78, -1
  br i1 %cmp7.not, label %if.end66.cleanup_crit_edge, label %if.end66.while.body_crit_edge

if.end66.while.body_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end66.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu7_enable_didt(ptr noundef %hwmgr, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %enable to i32
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %7)
  %cmp2.not = icmp eq i16 %7, 4203
  br i1 %cmp2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %didt_block.0 = phi i32 [ 262658, %if.else ], [ 262660, %land.lhs.true.if.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %cmp.i.not, i32 0, i32 %cond
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_ind_register, align 4
  %call10 = tail call i32 %17(ptr noundef %11, i32 noundef 3, i32 noundef 0) #4
  %and = and i32 %call10, -2
  %or = or i32 %and, %spec.select
  tail call void %15(ptr noundef %11, i32 noundef 3, i32 noundef 0, i32 noundef %or) #4
  %arrayidx.i131 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i131, align 4
  %and1.i132 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i132)
  %cmp.i133.not = icmp eq i32 %and1.i132, 0
  %cond22 = select i1 %cmp.i133.not, i32 0, i32 %cond
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write_ind_register25 = getelementptr inbounds %struct.cgs_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %write_ind_register25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_ind_register25, align 4
  %read_ind_register29 = getelementptr inbounds %struct.cgs_ops, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %read_ind_register29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_ind_register29, align 4
  %call31 = tail call i32 %27(ptr noundef %21, i32 noundef 3, i32 noundef 32) #4
  %and32 = and i32 %call31, -2
  %or34 = or i32 %and32, %cond22
  tail call void %25(ptr noundef %21, i32 noundef 3, i32 noundef 32, i32 noundef %or34) #4
  %28 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i131, align 4
  %and1.i135 = and i32 %29, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i135)
  %cmp.i136.not = icmp eq i32 %and1.i135, 0
  %cond46 = select i1 %cmp.i136.not, i32 0, i32 %cond
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write_ind_register49 = getelementptr inbounds %struct.cgs_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %write_ind_register49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_ind_register49, align 4
  %read_ind_register53 = getelementptr inbounds %struct.cgs_ops, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %read_ind_register53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_ind_register53, align 4
  %call55 = tail call i32 %37(ptr noundef %31, i32 noundef 3, i32 noundef 64) #4
  %and56 = and i32 %call55, -2
  %or58 = or i32 %and56, %cond46
  tail call void %35(ptr noundef %31, i32 noundef 3, i32 noundef 64, i32 noundef %or58) #4
  %38 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i131, align 4
  %and1.i138 = and i32 %39, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i138)
  %cmp.i139.not = icmp eq i32 %and1.i138, 0
  %cond70 = select i1 %cmp.i139.not, i32 0, i32 %cond
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write_ind_register73 = getelementptr inbounds %struct.cgs_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %write_ind_register73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_ind_register73, align 4
  %read_ind_register77 = getelementptr inbounds %struct.cgs_ops, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %read_ind_register77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_ind_register77, align 4
  %call79 = tail call i32 %47(ptr noundef %41, i32 noundef 3, i32 noundef 96) #4
  %and80 = and i32 %call79, -2
  %or82 = or i32 %and80, %cond70
  tail call void %45(ptr noundef %41, i32 noundef 3, i32 noundef 96, i32 noundef %or82) #4
  br i1 %enable, label %if.then87, label %if.end.if.end89_crit_edge

if.end.if.end89_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

if.then87:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or13 = or i32 %didt_block.0, %spec.select
  %shl36 = shl nuw nsw i32 %cond22, 24
  %or37 = or i32 %shl36, %or13
  %shl60 = shl nuw nsw i32 %cond46, 16
  %or61 = or i32 %shl60, %or37
  %shl84 = shl nuw nsw i32 %cond70, 8
  %or85 = or i32 %shl84, %or61
  %call88 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 769, i32 noundef %or85, ptr noundef null) #4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end.if.end89_crit_edge
  %result.0 = phi i32 [ %call88, %if.then87 ], [ 0, %if.end.if.end89_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_read_efuse(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_disable_didt_config(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i57 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i57, align 4
  %6 = and i32 %5, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %1) #4
  %call16 = tail call fastcc i32 @smu7_enable_didt(ptr noundef %hwmgr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %do.end24, label %if.then17

if.then17:                                        ; preds = %if.then
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_disable_didt_config._rs, ptr noundef nonnull @__func__.smu7_disable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then17.cleanup.sink.split_crit_edge, label %if.then17.error.sink.split_crit_edge

if.then17.error.sink.split_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.sink.split

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

do.end24:                                         ; preds = %if.then
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %7 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp25 = icmp eq i32 %8, 16
  br i1 %cmp25, label %if.then26, label %do.end24.cleanup.sink.split_crit_edge

do.end24.cleanup.sink.split_crit_edge:            ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then26:                                        ; preds = %do.end24
  %call27 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 778, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp eq i32 %call27, 0
  br i1 %cmp29, label %if.then26.cleanup.sink.split_crit_edge, label %if.then30

if.then26.cleanup.sink.split_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then30:                                        ; preds = %if.then26
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_disable_didt_config._rs.44, ptr noundef nonnull @__func__.smu7_disable_didt_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.cleanup.sink.split_crit_edge, label %if.then30.error.sink.split_crit_edge

if.then30.error.sink.split_crit_edge:             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.sink.split

if.then30.cleanup.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

error.sink.split:                                 ; preds = %if.then30.error.sink.split_crit_edge, %if.then17.error.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.43, %if.then17.error.sink.split_crit_edge ], [ @.str.47, %if.then30.error.sink.split_crit_edge ]
  %result.0.ph = phi i32 [ %call16, %if.then17.error.sink.split_crit_edge ], [ %call27, %if.then30.error.sink.split_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.47.sink) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error.sink.split, %if.then30.cleanup.sink.split_crit_edge, %if.then26.cleanup.sink.split_crit_edge, %do.end24.cleanup.sink.split_crit_edge, %if.then17.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then26.cleanup.sink.split_crit_edge ], [ 0, %do.end24.cleanup.sink.split_crit_edge ], [ %call27, %if.then30.cleanup.sink.split_crit_edge ], [ %call16, %if.then17.cleanup.sink.split_crit_edge ], [ %result.0.ph, %error.sink.split ]
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_enable_smc_cac(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 83, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.do.end9_crit_edge, label %if.then2

if.then.do.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_smc_cac._rs, ptr noundef nonnull @__func__.smu7_enable_smc_cac) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then2.do.end9_crit_edge, label %do.end

if.then2.do.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.48) #7
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.then2.do.end9_crit_edge, %if.then.do.end9_crit_edge
  %result.0 = phi i32 [ 0, %if.then.do.end9_crit_edge ], [ -1, %do.end ], [ -1, %if.then2.do.end9_crit_edge ]
  %cac_enabled = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 59
  %frombool = zext i1 %cmp to i8
  %4 = ptrtoint ptr %cac_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %cac_enabled, align 2
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %entry.if.end12_crit_edge
  %result.1 = phi i32 [ %result.0, %do.end9 ], [ 0, %entry.if.end12_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_disable_smc_cac(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %cac_enabled = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 59
  %4 = ptrtoint ptr %cac_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cac_enabled, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %call1 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 84, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.do.end10_crit_edge, label %if.then2

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_disable_smc_cac._rs, ptr noundef nonnull @__func__.smu7_disable_smc_cac) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.do.end10_crit_edge, label %do.end

if.then2.do.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.49) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end, %if.then2.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %result.0 = phi i32 [ 0, %if.then.do.end10_crit_edge ], [ -1, %do.end ], [ -1, %if.then2.do.end10_crit_edge ]
  %6 = ptrtoint ptr %cac_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cac_enabled, align 2
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %result.1 = phi i32 [ %result.0, %do.end10 ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_set_power_limit(ptr noundef %hwmgr, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %power_containment_features = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_containment_features, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 %n, 8
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 391, i32 noundef %shl, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_enable_power_containment(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %2 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pptable, align 4
  %power_containment_features = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power_containment_features, align 4
  %pp_table_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 9
  %5 = ptrtoint ptr %pp_table_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pp_table_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 12
  %cac_dtp_table1 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %cac_table.0.in = select i1 %cmp, ptr %cac_dtp_table, ptr %cac_dtp_table1
  %7 = ptrtoint ptr %cac_table.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cac_table.0 = load ptr, ptr %cac_table.0.in, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end55_crit_edge, label %if.then2

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then2:                                         ; preds = %entry
  %enable_tdc_limit_feature = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 62
  %10 = ptrtoint ptr %enable_tdc_limit_feature to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable_tdc_limit_feature, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then2.if.end20_crit_edge, label %if.then3

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then3:                                         ; preds = %if.then2
  %call4 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 361, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then17, label %if.then6

if.then6:                                         ; preds = %if.then3
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_power_containment._rs, ptr noundef nonnull @__func__.smu7_enable_power_containment) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end20_crit_edge, label %do.end

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.50) #7
  br label %if.end20

if.then17:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_containment_features, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %power_containment_features, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.end, %if.then6.if.end20_crit_edge, %if.then2.if.end20_crit_edge
  %result.1 = phi i32 [ 0, %if.then17 ], [ 0, %if.then2.if.end20_crit_edge ], [ -1, %if.then6.if.end20_crit_edge ], [ -1, %do.end ]
  %enable_pkg_pwr_tracking_feature = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 63
  %14 = ptrtoint ptr %enable_pkg_pwr_tracking_feature to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable_pkg_pwr_tracking_feature, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.end20.if.end55_crit_edge, label %if.then22

if.end20.if.end55_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 389, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp eq i32 %call23, 0
  br i1 %cmp25, label %if.then40, label %if.then26

if.then26:                                        ; preds = %if.then22
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_enable_power_containment._rs.51, ptr noundef nonnull @__func__.smu7_enable_power_containment) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end55_crit_edge, label %do.end32

if.then26.if.end55_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.54) #7
  br label %if.end55

if.then40:                                        ; preds = %if.then22
  %usMaximumPowerDeliveryLimit = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %cac_table.0, i32 0, i32 7
  %16 = ptrtoint ptr %usMaximumPowerDeliveryLimit to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %usMaximumPowerDeliveryLimit, align 2
  %conv = zext i16 %17 to i32
  %power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 54
  %18 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %power_limit, align 4
  %default_power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 55
  %19 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %default_power_limit, align 4
  %20 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %power_containment_features, align 4
  %or42 = or i32 %21, 4
  store i32 %or42, ptr %power_containment_features, align 4
  %22 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %backend, align 4
  %power_containment_features.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %23, i32 0, i32 60
  %24 = ptrtoint ptr %power_containment_features.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %power_containment_features.i, align 4
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then40.if.end55_crit_edge, label %smu7_set_power_limit.exit

if.then40.if.end55_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

smu7_set_power_limit.exit:                        ; preds = %if.then40
  %26 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_limit, align 4
  %shl.i = shl i32 %27, 8
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 391, i32 noundef %shl.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not = icmp eq i32 %call.i, 0
  br i1 %tobool45.not, label %smu7_set_power_limit.exit.if.end55_crit_edge, label %do.end49

smu7_set_power_limit.exit.if.end55_crit_edge:     ; preds = %smu7_set_power_limit.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

do.end49:                                         ; preds = %smu7_set_power_limit.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #7
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %smu7_set_power_limit.exit.if.end55_crit_edge, %if.then40.if.end55_crit_edge, %do.end32, %if.then26.if.end55_crit_edge, %if.end20.if.end55_crit_edge, %entry.if.end55_crit_edge
  %result.3 = phi i32 [ %result.1, %do.end49 ], [ %result.1, %smu7_set_power_limit.exit.if.end55_crit_edge ], [ %result.1, %if.end20.if.end55_crit_edge ], [ 0, %entry.if.end55_crit_edge ], [ -1, %if.then26.if.end55_crit_edge ], [ -1, %do.end32 ], [ %result.1, %if.then40.if.end55_crit_edge ]
  ret i32 %result.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_disable_power_containment(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end58_crit_edge, label %land.lhs.true

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

land.lhs.true:                                    ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %power_containment_features = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_containment_features, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end58_crit_edge, label %if.then

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then:                                          ; preds = %land.lhs.true
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end14_crit_edge, label %if.then3

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 362, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then3.if.end14_crit_edge, label %if.then5

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then5:                                         ; preds = %if.then3
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_disable_power_containment._rs, ptr noundef nonnull @__func__.smu7_disable_power_containment) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end14_crit_edge, label %do.end

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then5.if.end14_crit_edge, %if.then3.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %result.0 = phi i32 [ 0, %if.then3.if.end14_crit_edge ], [ 0, %if.then.if.end14_crit_edge ], [ %call4, %do.end ], [ %call4, %if.then5.if.end14_crit_edge ]
  %6 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_containment_features, align 4
  %and16 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end35_crit_edge, label %if.then18

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then18:                                        ; preds = %if.end14
  %call19 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 136, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp21 = icmp eq i32 %call19, 0
  br i1 %cmp21, label %if.then18.if.end35_crit_edge, label %if.then22

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then22:                                        ; preds = %if.then18
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_disable_power_containment._rs.59, ptr noundef nonnull @__func__.smu7_disable_power_containment) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end35_crit_edge, label %do.end28

if.then22.if.end35_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62) #7
  br label %if.end35

if.end35:                                         ; preds = %do.end28, %if.then22.if.end35_crit_edge, %if.then18.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %result.1 = phi i32 [ %result.0, %if.then18.if.end35_crit_edge ], [ %result.0, %if.end14.if.end35_crit_edge ], [ %call19, %do.end28 ], [ %call19, %if.then22.if.end35_crit_edge ]
  %8 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_containment_features, align 4
  %and37 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end56_crit_edge, label %if.then39

if.end35.if.end56_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then39:                                        ; preds = %if.end35
  %call40 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 390, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp42 = icmp eq i32 %call40, 0
  br i1 %cmp42, label %if.then39.if.end56_crit_edge, label %if.then43

if.then39.if.end56_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then43:                                        ; preds = %if.then39
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_disable_power_containment._rs.63, ptr noundef nonnull @__func__.smu7_disable_power_containment) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end56_crit_edge, label %do.end49

if.then43.if.end56_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

do.end49:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.66) #7
  br label %if.end56

if.end56:                                         ; preds = %do.end49, %if.then43.if.end56_crit_edge, %if.then39.if.end56_crit_edge, %if.end35.if.end56_crit_edge
  %result.2 = phi i32 [ %result.1, %if.then39.if.end56_crit_edge ], [ %result.1, %if.end35.if.end56_crit_edge ], [ %call40, %do.end49 ], [ %call40, %if.then43.if.end56_crit_edge ]
  %10 = ptrtoint ptr %power_containment_features to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %power_containment_features, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end56, %land.lhs.true.if.end58_crit_edge, %entry.if.end58_crit_edge
  %result.3 = phi i32 [ %result.2, %if.end56 ], [ 0, %land.lhs.true.if.end58_crit_edge ], [ 0, %entry.if.end58_crit_edge ]
  ret i32 %result.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_power_control_set_level(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pp_table_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 9
  %0 = ptrtoint ptr %pp_table_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pp_table_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %2 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pptable, align 4
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cac_dtp_table1 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cac_table.0.in = phi ptr [ %cac_dtp_table, %if.then ], [ %cac_dtp_table1, %if.else ]
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end19_crit_edge, label %if.then2

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %cac_table.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cac_table.0 = load ptr, ptr %cac_table.0.in, align 4
  %TDPAdjustmentPolarity = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 18
  %7 = ptrtoint ptr %TDPAdjustmentPolarity to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %TDPAdjustmentPolarity, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %TDPAdjustment6 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 17
  %9 = ptrtoint ptr %TDPAdjustment6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %TDPAdjustment6, align 4
  %mul = sub i32 0, %10
  %cond = select i1 %tobool.not, i32 %mul, i32 %10
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %11 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %12)
  %cmp7 = icmp ugt i32 %12, 11
  %usConfigurableTDP = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %cac_table.0, i32 0, i32 1
  %.sink.in = select i1 %cmp7, ptr %cac_table.0, ptr %usConfigurableTDP
  %13 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %13)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv13 = zext i16 %.sink to i32
  %add12 = shl i32 %cond, 8
  %mul14 = add i32 %add12, 25600
  %mul15 = mul i32 %mul14, %conv13
  %target_tdp.0 = sdiv i32 %mul15, 100
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 392, i32 noundef %target_tdp.0, ptr noundef null) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then2, %if.end.if.end19_crit_edge
  %result.0 = phi i32 [ %call.i, %if.then2 ], [ 0, %if.end.if.end19_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 988, i32 5}
!2 = !{ptr @smu7_enable_didt_config._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.smu7_enable_didt_config, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smu7_enable_didt_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @smu7_enable_didt_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @smu7_enable_didt_config._rs.4, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 990, i32 5}
!11 = !{ptr @smu7_enable_didt_config._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @smu7_enable_didt_config._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @smu7_enable_didt_config._rs.7, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 993, i32 5}
!15 = !{ptr @smu7_enable_didt_config._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @smu7_enable_didt_config._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @smu7_enable_didt_config._rs.10, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1000, i32 5}
!19 = !{ptr @smu7_enable_didt_config._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @smu7_enable_didt_config._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @smu7_enable_didt_config._rs.13, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1003, i32 5}
!23 = !{ptr @smu7_enable_didt_config._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @smu7_enable_didt_config._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @smu7_enable_didt_config._rs.16, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1005, i32 5}
!27 = !{ptr @smu7_enable_didt_config._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @smu7_enable_didt_config._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @smu7_enable_didt_config._rs.19, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1008, i32 5}
!31 = !{ptr @smu7_enable_didt_config._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @smu7_enable_didt_config._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @smu7_enable_didt_config._rs.22, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1010, i32 5}
!35 = !{ptr @smu7_enable_didt_config._entry.23, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @smu7_enable_didt_config._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @smu7_enable_didt_config._rs.25, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1016, i32 3}
!39 = !{ptr @smu7_enable_didt_config._entry.26, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @smu7_enable_didt_config._entry_ptr.27, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @smu7_enable_didt_config._rs.29, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1022, i32 4}
!44 = !{ptr @smu7_enable_didt_config._entry.30, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @smu7_enable_didt_config._entry_ptr.31, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @smu7_enable_didt_config._rs.33, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1030, i32 5}
!49 = !{ptr @smu7_enable_didt_config._entry.34, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @smu7_enable_didt_config._entry_ptr.35, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @smu7_enable_didt_config._rs.37, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1038, i32 6}
!54 = !{ptr @smu7_enable_didt_config._entry.38, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @smu7_enable_didt_config._entry_ptr.39, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @smu7_enable_didt_config._rs.40, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1044, i32 6}
!58 = !{ptr @smu7_enable_didt_config._entry.41, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @smu7_enable_didt_config._entry_ptr.42, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @smu7_disable_didt_config._rs, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1074, i32 3}
!62 = !{ptr @__func__.smu7_disable_didt_config, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @smu7_disable_didt_config._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @smu7_disable_didt_config._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @smu7_disable_didt_config._rs.44, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1081, i32 4}
!68 = !{ptr @smu7_disable_didt_config._entry.45, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @smu7_disable_didt_config._entry_ptr.46, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.47, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @smu7_enable_smc_cac._rs, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1103, i32 3}
!73 = !{ptr @__func__.smu7_enable_smc_cac, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @smu7_enable_smc_cac._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @smu7_enable_smc_cac._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @smu7_disable_smc_cac._rs, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1120, i32 3}
!79 = !{ptr @__func__.smu7_disable_smc_cac, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @smu7_disable_smc_cac._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @smu7_disable_smc_cac._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smu7_enable_power_containment._rs, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1170, i32 4}
!85 = !{ptr @__func__.smu7_enable_power_containment, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @smu7_enable_power_containment._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @smu7_enable_power_containment._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @smu7_enable_power_containment._rs.51, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1181, i32 4}
!91 = !{ptr @smu7_enable_power_containment._entry.52, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @smu7_enable_power_containment._entry_ptr.53, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1190, i32 6}
!96 = !{ptr @smu7_enable_power_containment._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @smu7_enable_power_containment._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @smu7_disable_power_containment._rs, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1211, i32 4}
!100 = !{ptr @__func__.smu7_disable_power_containment, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @smu7_disable_power_containment._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @smu7_disable_power_containment._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @smu7_disable_power_containment._rs.59, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1221, i32 4}
!106 = !{ptr @smu7_disable_power_containment._entry.60, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @smu7_disable_power_containment._entry_ptr.61, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @smu7_disable_power_containment._rs.63, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 1231, i32 4}
!111 = !{ptr @smu7_disable_power_containment._entry.64, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @smu7_disable_power_containment._entry_ptr.65, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @smu7_program_pt_config_registers._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 907, i32 2}
!116 = !{ptr @__func__.smu7_program_pt_config_registers, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @smu7_program_pt_config_registers._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @smu7_program_pt_config_registers._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @GCCACConfig_Polaris10, !121, !"GCCACConfig_Polaris10", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 36, i32 39}
!122 = !{ptr @DIDTConfig_Polaris10, !123, !"DIDTConfig_Polaris10", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 98, i32 39}
!124 = !{ptr @GCCACConfig_Polaris11, !125, !"GCCACConfig_Polaris11", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 67, i32 39}
!126 = !{ptr @DIDTConfig_Polaris11_Kicker, !127, !"DIDTConfig_Polaris11_Kicker", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 523, i32 39}
!128 = !{ptr @DIDTConfig_Polaris11, !129, !"DIDTConfig_Polaris11", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 240, i32 39}
!130 = !{ptr @DIDTConfig_Polaris12, !131, !"DIDTConfig_Polaris12", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 382, i32 39}
!132 = !{ptr @GCCACConfig_VegaM, !133, !"GCCACConfig_VegaM", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 669, i32 39}
!134 = !{ptr @DIDTConfig_VegaM, !135, !"DIDTConfig_VegaM", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 706, i32 39}
!136 = distinct !{null, !137, !"Polaris11_DIDTBlock_Info", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 34, i32 17}
!138 = distinct !{null, !139, !"DIDTBlock_Info", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_powertune.c", i32 32, i32 17}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
!150 = !{i8 0, i8 2}
