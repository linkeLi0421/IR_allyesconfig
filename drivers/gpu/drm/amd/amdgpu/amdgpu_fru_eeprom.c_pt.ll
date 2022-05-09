; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }

@amdgpu_fru_get_product_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014[drm] Cannot access FRU, EEPROM accessor not initialized\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_fru_get_product_info\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c\00", [49 x i8] zeroinitializer }, align 32
@amdgpu_fru_get_product_info._entry_ptr = internal global ptr @amdgpu_fru_get_product_info._entry, section ".printk_index", align 4
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read FRU Manufacturer, ret:%d\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read FRU product name, ret:%d\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_fru_get_product_info._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014[drm] FRU Product Name is larger than %d characters. This is likely a mistake\00", [48 x i8] zeroinitializer }, align 32
@amdgpu_fru_get_product_info._entry_ptr.7 = internal global ptr @amdgpu_fru_get_product_info._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read FRU product number, ret:%d\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_fru_get_product_info._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014[drm] FRU Product Number is larger than 16 characters. This is likely a mistake\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_fru_get_product_info._entry_ptr.11 = internal global ptr @amdgpu_fru_get_product_info._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to read FRU product version, ret:%d\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read FRU serial number, ret:%d\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_fru_get_product_info._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014[drm] FRU Serial Number is larger than 16 characters. This is likely a mistake\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_fru_get_product_info._entry_ptr.16 = internal global ptr @amdgpu_fru_get_product_info._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"D161\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"D163\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_fru_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014[drm] FRU: Failed to get size field\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_fru_read_eeprom\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_fru_read_eeprom._entry_ptr = internal global ptr @amdgpu_fru_read_eeprom._entry, section ".printk_index", align 4
@amdgpu_fru_read_eeprom._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014[drm] FRU: Failed to get data field\00", [58 x i8] zeroinitializer }, align 32
@amdgpu_fru_read_eeprom._entry_ptr.23 = internal global ptr @amdgpu_fru_read_eeprom._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 25]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 107, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 126, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 136, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 142, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 153, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 162, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 172, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 180, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 189, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 52, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 54, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 74, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [50 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 85, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @amdgpu_fru_get_product_info._entry, ptr @amdgpu_fru_get_product_info._entry.14, ptr @amdgpu_fru_get_product_info._entry.5, ptr @amdgpu_fru_get_product_info._entry.9, ptr @amdgpu_fru_get_product_info._entry_ptr, ptr @amdgpu_fru_get_product_info._entry_ptr.11, ptr @amdgpu_fru_get_product_info._entry_ptr.16, ptr @amdgpu_fru_get_product_info._entry_ptr.7, ptr @amdgpu_fru_read_eeprom._entry, ptr @amdgpu_fru_read_eeprom._entry.21, ptr @amdgpu_fru_read_eeprom._entry_ptr, ptr @amdgpu_fru_read_eeprom._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fru_get_product_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fru_get_product_info._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fru_get_product_info._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fru_get_product_info._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fru_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fru_read_eeprom._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_fru_get_product_info(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %buff = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %buff) #4
  %0 = call ptr @memset(ptr %buff, i32 255, i32 66)
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %1 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_type.i, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb.i
    i32 25, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %mode_info.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %4 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info.i, align 8
  %vbios_version.i = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 17
  %call.i = tail call ptr @strnstr(ptr noundef %vbios_version.i, ptr noundef nonnull @.str.17, i32 noundef 20) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %is_fru_eeprom_supported.exit, label %sw.bb.i.if.end_crit_edge

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

is_fru_eeprom_supported.exit:                     ; preds = %sw.bb.i
  %call3.i = tail call ptr @strnstr(ptr noundef %vbios_version.i, ptr noundef nonnull @.str.18, i32 noundef 20) #4
  %tobool4.not.i.not = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i.not, label %is_fru_eeprom_supported.exit.cleanup_crit_edge, label %is_fru_eeprom_supported.exit.if.end_crit_edge

is_fru_eeprom_supported.exit.if.end_crit_edge:    ; preds = %is_fru_eeprom_supported.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

is_fru_eeprom_supported.exit.cleanup_crit_edge:   ; preds = %is_fru_eeprom_supported.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %is_fru_eeprom_supported.exit.if.end_crit_edge, %sw.bb.i.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %7)
  %cmp = icmp eq i32 %7, 25
  %spec.select = select i1 %cmp, i32 0, i32 2
  %algo = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 25, i32 2
  %8 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %smu_i2c.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 25
  %call.i123 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef 393227, ptr noundef nonnull %buff, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i123)
  %cmp.i = icmp slt i32 %call.i123, 1
  br i1 %cmp.i, label %if.end5.amdgpu_fru_read_eeprom.exit.thread_crit_edge, label %if.end.i

if.end5.amdgpu_fru_read_eeprom.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit.thread

if.end.i:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buff, align 1
  %conv.i = zext i8 %11 to i32
  %sub.i = add nsw i32 %conv.i, -192
  %conv4.i = trunc i32 %sub.i to i16
  %call5.i = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef 393228, ptr noundef nonnull %buff, i16 noundef zeroext %conv4.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 1
  br i1 %cmp6.i, label %if.end.i.amdgpu_fru_read_eeprom.exit.thread_crit_edge, label %amdgpu_fru_read_eeprom.exit

if.end.i.amdgpu_fru_read_eeprom.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit.thread

amdgpu_fru_read_eeprom.exit.thread:               ; preds = %if.end.i.amdgpu_fru_read_eeprom.exit.thread_crit_edge, %if.end5.amdgpu_fru_read_eeprom.exit.thread_crit_edge
  %.str.22.sink.i = phi ptr [ @.str.19, %if.end5.amdgpu_fru_read_eeprom.exit.thread_crit_edge ], [ @.str.22, %if.end.i.amdgpu_fru_read_eeprom.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i123, %if.end5.amdgpu_fru_read_eeprom.exit.thread_crit_edge ], [ %call5.i, %if.end.i.amdgpu_fru_read_eeprom.exit.thread_crit_edge ]
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink.i) #7
  br label %if.then8

amdgpu_fru_read_eeprom.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %11)
  %cmp7 = icmp ult i8 %11, -63
  br i1 %cmp7, label %amdgpu_fru_read_eeprom.exit.if.then8_crit_edge, label %if.end9

amdgpu_fru_read_eeprom.exit.if.then8_crit_edge:   ; preds = %amdgpu_fru_read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %amdgpu_fru_read_eeprom.exit.if.then8_crit_edge, %amdgpu_fru_read_eeprom.exit.thread
  %retval.0.i124193 = phi i32 [ %retval.0.ph.i, %amdgpu_fru_read_eeprom.exit.thread ], [ %sub.i, %amdgpu_fru_read_eeprom.exit.if.then8_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %retval.0.i124193) #4
  br label %cleanup

if.end9:                                          ; preds = %amdgpu_fru_read_eeprom.exit
  %add10 = add nuw nsw i32 %conv.i, 393036
  %call.i126 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add10, ptr noundef nonnull %buff, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i126)
  %cmp.i127 = icmp slt i32 %call.i126, 1
  br i1 %cmp.i127, label %if.end9.amdgpu_fru_read_eeprom.exit139.thread_crit_edge, label %if.end.i133

if.end9.amdgpu_fru_read_eeprom.exit139.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit139.thread

if.end.i133:                                      ; preds = %if.end9
  %12 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buff, align 1
  %conv.i128 = zext i8 %13 to i32
  %sub.i129 = add nsw i32 %conv.i128, -192
  %add.i = add nuw nsw i32 %conv.i, 393037
  %conv4.i130 = trunc i32 %sub.i129 to i16
  %call5.i131 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add.i, ptr noundef nonnull %buff, i16 noundef zeroext %conv4.i130) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i131)
  %cmp6.i132 = icmp slt i32 %call5.i131, 1
  br i1 %cmp6.i132, label %if.end.i133.amdgpu_fru_read_eeprom.exit139.thread_crit_edge, label %amdgpu_fru_read_eeprom.exit139

if.end.i133.amdgpu_fru_read_eeprom.exit139.thread_crit_edge: ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit139.thread

amdgpu_fru_read_eeprom.exit139.thread:            ; preds = %if.end.i133.amdgpu_fru_read_eeprom.exit139.thread_crit_edge, %if.end9.amdgpu_fru_read_eeprom.exit139.thread_crit_edge
  %.str.22.sink.i134 = phi ptr [ @.str.19, %if.end9.amdgpu_fru_read_eeprom.exit139.thread_crit_edge ], [ @.str.22, %if.end.i133.amdgpu_fru_read_eeprom.exit139.thread_crit_edge ]
  %retval.0.ph.i135 = phi i32 [ %call.i126, %if.end9.amdgpu_fru_read_eeprom.exit139.thread_crit_edge ], [ %call5.i131, %if.end.i133.amdgpu_fru_read_eeprom.exit139.thread_crit_edge ]
  %call13.i136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink.i134) #7
  br label %if.then14

amdgpu_fru_read_eeprom.exit139:                   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %13)
  %cmp13 = icmp ult i8 %13, -63
  br i1 %cmp13, label %amdgpu_fru_read_eeprom.exit139.if.then14_crit_edge, label %if.end23

amdgpu_fru_read_eeprom.exit139.if.then14_crit_edge: ; preds = %amdgpu_fru_read_eeprom.exit139
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %amdgpu_fru_read_eeprom.exit139.if.then14_crit_edge, %amdgpu_fru_read_eeprom.exit139.thread
  %retval.0.i138196 = phi i32 [ %retval.0.ph.i135, %amdgpu_fru_read_eeprom.exit139.thread ], [ %sub.i129, %amdgpu_fru_read_eeprom.exit139.if.then14_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i138196) #4
  br label %cleanup

if.end23:                                         ; preds = %amdgpu_fru_read_eeprom.exit139
  %product_name = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 162
  %arrayidx = getelementptr [66 x i8], ptr %buff, i32 0, i32 %spec.select
  %14 = call ptr @memcpy(ptr %product_name, ptr %arrayidx, i32 %sub.i129)
  %arrayidx26 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 162, i32 %sub.i129
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx26, align 1
  %add27 = add nuw nsw i32 %conv.i, 392845
  %add28 = add nuw nsw i32 %add27, %conv.i128
  %call.i141 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add28, ptr noundef nonnull %buff, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141)
  %cmp.i142 = icmp slt i32 %call.i141, 1
  br i1 %cmp.i142, label %if.end23.amdgpu_fru_read_eeprom.exit155.thread_crit_edge, label %if.end.i149

if.end23.amdgpu_fru_read_eeprom.exit155.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit155.thread

if.end.i149:                                      ; preds = %if.end23
  %16 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buff, align 1
  %conv.i143 = zext i8 %17 to i32
  %sub.i144 = add nsw i32 %conv.i143, -192
  %add.i145 = add nuw nsw i32 %add28, 1
  %conv4.i146 = trunc i32 %sub.i144 to i16
  %call5.i147 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add.i145, ptr noundef nonnull %buff, i16 noundef zeroext %conv4.i146) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i147)
  %cmp6.i148 = icmp slt i32 %call5.i147, 1
  br i1 %cmp6.i148, label %if.end.i149.amdgpu_fru_read_eeprom.exit155.thread_crit_edge, label %amdgpu_fru_read_eeprom.exit155

if.end.i149.amdgpu_fru_read_eeprom.exit155.thread_crit_edge: ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit155.thread

amdgpu_fru_read_eeprom.exit155.thread:            ; preds = %if.end.i149.amdgpu_fru_read_eeprom.exit155.thread_crit_edge, %if.end23.amdgpu_fru_read_eeprom.exit155.thread_crit_edge
  %.str.22.sink.i150 = phi ptr [ @.str.19, %if.end23.amdgpu_fru_read_eeprom.exit155.thread_crit_edge ], [ @.str.22, %if.end.i149.amdgpu_fru_read_eeprom.exit155.thread_crit_edge ]
  %retval.0.ph.i151 = phi i32 [ %call.i141, %if.end23.amdgpu_fru_read_eeprom.exit155.thread_crit_edge ], [ %call5.i147, %if.end.i149.amdgpu_fru_read_eeprom.exit155.thread_crit_edge ]
  %call13.i152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink.i150) #7
  br label %if.then32

amdgpu_fru_read_eeprom.exit155:                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %17)
  %cmp31 = icmp ult i8 %17, -63
  br i1 %cmp31, label %amdgpu_fru_read_eeprom.exit155.if.then32_crit_edge, label %if.end33

amdgpu_fru_read_eeprom.exit155.if.then32_crit_edge: ; preds = %amdgpu_fru_read_eeprom.exit155
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %amdgpu_fru_read_eeprom.exit155.if.then32_crit_edge, %amdgpu_fru_read_eeprom.exit155.thread
  %retval.0.i154199 = phi i32 [ %retval.0.ph.i151, %amdgpu_fru_read_eeprom.exit155.thread ], [ %sub.i144, %amdgpu_fru_read_eeprom.exit155.if.then32_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %retval.0.i154199) #4
  br label %cleanup

if.end33:                                         ; preds = %amdgpu_fru_read_eeprom.exit155
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i144)
  %cmp34 = icmp ugt i32 %sub.i144, 15
  br i1 %cmp34, label %do.end38, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.end33.if.end41_crit_edge
  %len.1 = phi i32 [ 15, %do.end38 ], [ %sub.i144, %if.end33.if.end41_crit_edge ]
  %product_number = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 161
  %18 = call ptr @memcpy(ptr %product_number, ptr %arrayidx, i32 %len.1)
  %arrayidx45 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 161, i32 %len.1
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx45, align 1
  %add46 = add nsw i32 %add28, -191
  %add47 = add nuw nsw i32 %add46, %conv.i143
  %call.i157 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add47, ptr noundef nonnull %buff, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i157)
  %cmp.i158 = icmp slt i32 %call.i157, 1
  br i1 %cmp.i158, label %if.end41.amdgpu_fru_read_eeprom.exit171.thread_crit_edge, label %if.end.i165

if.end41.amdgpu_fru_read_eeprom.exit171.thread_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit171.thread

if.end.i165:                                      ; preds = %if.end41
  %20 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buff, align 1
  %conv.i159 = zext i8 %21 to i32
  %sub.i160 = add nsw i32 %conv.i159, -192
  %add.i161 = add nuw nsw i32 %add47, 1
  %conv4.i162 = trunc i32 %sub.i160 to i16
  %call5.i163 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add.i161, ptr noundef nonnull %buff, i16 noundef zeroext %conv4.i162) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i163)
  %cmp6.i164 = icmp slt i32 %call5.i163, 1
  br i1 %cmp6.i164, label %if.end.i165.amdgpu_fru_read_eeprom.exit171.thread_crit_edge, label %amdgpu_fru_read_eeprom.exit171

if.end.i165.amdgpu_fru_read_eeprom.exit171.thread_crit_edge: ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit171.thread

amdgpu_fru_read_eeprom.exit171.thread:            ; preds = %if.end.i165.amdgpu_fru_read_eeprom.exit171.thread_crit_edge, %if.end41.amdgpu_fru_read_eeprom.exit171.thread_crit_edge
  %.str.22.sink.i166 = phi ptr [ @.str.19, %if.end41.amdgpu_fru_read_eeprom.exit171.thread_crit_edge ], [ @.str.22, %if.end.i165.amdgpu_fru_read_eeprom.exit171.thread_crit_edge ]
  %retval.0.ph.i167 = phi i32 [ %call.i157, %if.end41.amdgpu_fru_read_eeprom.exit171.thread_crit_edge ], [ %call5.i163, %if.end.i165.amdgpu_fru_read_eeprom.exit171.thread_crit_edge ]
  %call13.i168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink.i166) #7
  br label %if.then51

amdgpu_fru_read_eeprom.exit171:                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %21)
  %cmp50 = icmp ult i8 %21, -63
  br i1 %cmp50, label %amdgpu_fru_read_eeprom.exit171.if.then51_crit_edge, label %if.end52

amdgpu_fru_read_eeprom.exit171.if.then51_crit_edge: ; preds = %amdgpu_fru_read_eeprom.exit171
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

if.then51:                                        ; preds = %amdgpu_fru_read_eeprom.exit171.if.then51_crit_edge, %amdgpu_fru_read_eeprom.exit171.thread
  %retval.0.i170202 = phi i32 [ %retval.0.ph.i167, %amdgpu_fru_read_eeprom.exit171.thread ], [ %sub.i160, %amdgpu_fru_read_eeprom.exit171.if.then51_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %retval.0.i170202) #4
  br label %cleanup

if.end52:                                         ; preds = %amdgpu_fru_read_eeprom.exit171
  %add53 = add nsw i32 %add47, -191
  %add54 = add nuw nsw i32 %add53, %conv.i159
  %call.i173 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add54, ptr noundef nonnull %buff, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i173)
  %cmp.i174 = icmp slt i32 %call.i173, 1
  br i1 %cmp.i174, label %if.end52.amdgpu_fru_read_eeprom.exit187.thread_crit_edge, label %if.end.i181

if.end52.amdgpu_fru_read_eeprom.exit187.thread_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit187.thread

if.end.i181:                                      ; preds = %if.end52
  %22 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buff, align 1
  %conv.i175 = zext i8 %23 to i32
  %sub.i176 = add nsw i32 %conv.i175, -192
  %add.i177 = add nuw nsw i32 %add54, 1
  %conv4.i178 = trunc i32 %sub.i176 to i16
  %call5.i179 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add.i177, ptr noundef nonnull %buff, i16 noundef zeroext %conv4.i178) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i179)
  %cmp6.i180 = icmp slt i32 %call5.i179, 1
  br i1 %cmp6.i180, label %if.end.i181.amdgpu_fru_read_eeprom.exit187.thread_crit_edge, label %amdgpu_fru_read_eeprom.exit187

if.end.i181.amdgpu_fru_read_eeprom.exit187.thread_crit_edge: ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_fru_read_eeprom.exit187.thread

amdgpu_fru_read_eeprom.exit187.thread:            ; preds = %if.end.i181.amdgpu_fru_read_eeprom.exit187.thread_crit_edge, %if.end52.amdgpu_fru_read_eeprom.exit187.thread_crit_edge
  %.str.22.sink.i182 = phi ptr [ @.str.19, %if.end52.amdgpu_fru_read_eeprom.exit187.thread_crit_edge ], [ @.str.22, %if.end.i181.amdgpu_fru_read_eeprom.exit187.thread_crit_edge ]
  %retval.0.ph.i183 = phi i32 [ %call.i173, %if.end52.amdgpu_fru_read_eeprom.exit187.thread_crit_edge ], [ %call5.i179, %if.end.i181.amdgpu_fru_read_eeprom.exit187.thread_crit_edge ]
  %call13.i184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink.i182) #7
  br label %if.then58

amdgpu_fru_read_eeprom.exit187:                   ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %23)
  %cmp57 = icmp ult i8 %23, -63
  br i1 %cmp57, label %amdgpu_fru_read_eeprom.exit187.if.then58_crit_edge, label %if.end59

amdgpu_fru_read_eeprom.exit187.if.then58_crit_edge: ; preds = %amdgpu_fru_read_eeprom.exit187
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

if.then58:                                        ; preds = %amdgpu_fru_read_eeprom.exit187.if.then58_crit_edge, %amdgpu_fru_read_eeprom.exit187.thread
  %retval.0.i186205 = phi i32 [ %retval.0.ph.i183, %amdgpu_fru_read_eeprom.exit187.thread ], [ %sub.i176, %amdgpu_fru_read_eeprom.exit187.if.then58_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %retval.0.i186205) #4
  br label %cleanup

if.end59:                                         ; preds = %amdgpu_fru_read_eeprom.exit187
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i176)
  %cmp60 = icmp ugt i32 %sub.i176, 19
  br i1 %cmp60, label %do.end64, label %if.end59.if.end67_crit_edge

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #7
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.end59.if.end67_crit_edge
  %len.2 = phi i32 [ 19, %do.end64 ], [ %sub.i176, %if.end59.if.end67_crit_edge ]
  %serial = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 163
  %24 = call ptr @memcpy(ptr %serial, ptr %arrayidx, i32 %len.2)
  %arrayidx71 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 163, i32 %len.2
  %25 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx71, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then58, %if.then51, %if.then32, %if.then14, %if.then8, %do.end, %is_fru_eeprom_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then14 ], [ -22, %if.then32 ], [ -22, %if.then51 ], [ -22, %if.then58 ], [ 0, %if.end67 ], [ -19, %do.end ], [ 0, %is_fru_eeprom_supported.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %buff) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_eeprom_read(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 107, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @amdgpu_fru_get_product_info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @amdgpu_fru_get_product_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 126, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 136, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 142, i32 3}
!12 = !{ptr @amdgpu_fru_get_product_info._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @amdgpu_fru_get_product_info._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 153, i32 3}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 162, i32 3}
!18 = !{ptr @amdgpu_fru_get_product_info._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @amdgpu_fru_get_product_info._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 172, i32 3}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 180, i32 3}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 189, i32 3}
!26 = !{ptr @amdgpu_fru_get_product_info._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @amdgpu_fru_get_product_info._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 52, i32 40}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 54, i32 40}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 74, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @amdgpu_fru_read_eeprom._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @amdgpu_fru_read_eeprom._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_fru_eeprom.c", i32 85, i32 3}
!39 = !{ptr @amdgpu_fru_read_eeprom._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @amdgpu_fru_read_eeprom._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
