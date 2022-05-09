; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/cik.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/cik.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_allowed_register_entry = type { i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_video_codecs = type { i32, ptr }
%struct.amdgpu_video_codec_info = type { i32, i32, i32, i32, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.amdgpu_gfx_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_clock_dividers = type { i32, %union.anon.113, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cik_common_ip_block = internal constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 0, i32 1, i32 0, i32 0, ptr @cik_common_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gmc_v7_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@cik_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gfx_v7_2_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@cik_sdma_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@pp_smu_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_vkms_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dm_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v8_2_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@uvd_v4_2_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vce_v2_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gfx_v7_3_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v8_5_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gfx_v7_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@kv_smu_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v8_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v8_3_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@cik_common_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @cik_common_early_init, ptr null, ptr @cik_common_sw_init, ptr @cik_common_sw_fini, ptr null, ptr @cik_common_hw_init, ptr @cik_common_hw_fini, ptr null, ptr @cik_common_suspend, ptr @cik_common_resume, ptr @cik_common_is_idle, ptr @cik_common_wait_for_idle, ptr null, ptr null, ptr @cik_common_soft_reset, ptr null, ptr @cik_common_set_clockgating_state, ptr @cik_common_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cik_common\00", [21 x i8] zeroinitializer }, align 32
@cik_asic_funcs = internal constant { %struct.amdgpu_asic_funcs, [36 x i8] } { %struct.amdgpu_asic_funcs { ptr @cik_read_disabled_bios, ptr @cik_read_bios_from_rom, ptr @cik_read_register, ptr @cik_vga_set_state, ptr @cik_asic_reset, ptr @cik_asic_reset_method, ptr @cik_get_xclk, ptr @cik_set_uvd_clocks, ptr @cik_set_vce_clocks, ptr null, ptr null, ptr @cik_get_config_memsize, ptr @cik_flush_hdp, ptr @cik_invalidate_hdp, ptr @cik_need_full_reset, ptr @legacy_doorbell_index_init, ptr @cik_get_pcie_usage, ptr @cik_need_reset_on_init, ptr @cik_get_pcie_replay_count, ptr @cik_asic_supports_baco, ptr @cik_pre_asic_init, ptr null, ptr @cik_query_video_codecs }, [36 x i8] zeroinitializer }, align 32
@cik_allowed_read_registers = internal constant { [75 x %struct.amdgpu_allowed_register_entry], [136 x i8] } { [75 x %struct.amdgpu_allowed_register_entry] [%struct.amdgpu_allowed_register_entry { i32 8196, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8194, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8197, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8198, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8206, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8207, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 916, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 915, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 13325, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 13837, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8608, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8605, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8606, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8604, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8328, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8329, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8327, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8325, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8326, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8324, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9790, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 2520, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9796, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9797, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9798, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9799, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9800, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9801, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9802, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9803, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9804, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9805, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9806, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9807, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9808, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9809, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9810, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9811, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9812, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9813, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9814, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9815, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9816, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9817, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9818, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9819, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9820, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9821, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9822, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9823, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9824, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9825, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9826, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9827, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9828, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9829, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9830, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9831, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9832, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9833, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9834, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9835, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9836, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9837, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9838, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9839, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9840, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9841, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9842, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9843, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9789, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 9951, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 9791, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 41172, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 41173, i8 1 }], [136 x i8] zeroinitializer }, align 32
@cik_asic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: BACO reset\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cik_asic_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/amd/amdgpu/cik.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cik_asic_reset._entry_ptr = internal global ptr @cik_asic_reset._entry, section ".printk_index", align 4
@cik_asic_reset._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: PCI CONFIG reset\0A\00", [38 x i8] zeroinitializer }, align 32
@cik_asic_reset._entry_ptr.8 = internal global ptr @cik_asic_reset._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amdgpu_reset_method = external dso_local local_unnamed_addr global i32, align 4
@cik_asic_reset_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1400, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"amdgpu: Specified reset:%d isn't supported, using AUTO instead.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cik_asic_reset_method\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cik_asic_reset_method._entry_ptr = internal global ptr @cik_asic_reset_method._entry, section ".printk_index", align 4
@cik_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 1, ptr @cik_video_codecs_encode_array }, [24 x i8] zeroinitializer }, align 32
@cik_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 4, ptr @cik_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@cik_video_codecs_encode_array = internal constant { [1 x %struct.amdgpu_video_codec_info], [44 x i8] } { [1 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 2048, i32 1152, i32 2359296, i32 0 }], [44 x i8] zeroinitializer }, align 32
@cik_video_codecs_decode_array = internal constant { [4 x %struct.amdgpu_video_codec_info], [48 x i8] } { [4 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 2048, i32 1152, i32 2359296, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 2048, i32 1152, i32 2359296, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 2048, i32 1152, i32 2359296, i32 41 }, %struct.amdgpu_video_codec_info { i32 2, i32 2048, i32 1152, i32 2359296, i32 4 }], [48 x i8] zeroinitializer }, align 32
@bonaire_mgcg_cgcg_init = internal constant { [246 x i32], [232 x i8] } { [246 x i32] [i32 12552, i32 -1, i32 -4, i32 49664, i32 -1, i32 -536870912, i32 61608, i32 -1, i32 256, i32 61570, i32 -1, i32 256, i32 61616, i32 -1, i32 -1073741568, i32 61618, i32 -1, i32 -1073741568, i32 61617, i32 -1, i32 -1073741568, i32 5497, i32 -1, i32 6291712, i32 61600, i32 -1, i32 256, i32 61573, i32 -1, i32 100663552, i32 61576, i32 -1, i32 256, i32 61574, i32 -1, i32 100663552, i32 61569, i32 -1, i32 256, i32 61624, i32 -1, i32 256, i32 61577, i32 -1, i32 256, i32 61568, i32 -1, i32 256, i32 61580, i32 -1, i32 256, i32 61581, i32 -1, i32 256, i32 61588, i32 -1, i32 256, i32 61589, i32 -1, i32 256, i32 61590, i32 -1, i32 256, i32 61591, i32 -1, i32 256, i32 61592, i32 -1, i32 256, i32 61599, i32 -1, i32 256, i32 61598, i32 -1, i32 256, i32 61572, i32 -1, i32 100663552, i32 61604, i32 -1, i32 256, i32 61597, i32 -1, i32 256, i32 61613, i32 -1, i32 256, i32 61612, i32 -1, i32 256, i32 61596, i32 -1, i32 256, i32 49664, i32 -1, i32 -536870912, i32 61448, i32 -1, i32 65536, i32 61449, i32 -1, i32 196610, i32 61450, i32 -1, i32 262151, i32 61451, i32 -1, i32 393221, i32 61452, i32 -1, i32 589832, i32 61453, i32 -1, i32 65536, i32 61454, i32 -1, i32 196610, i32 61455, i32 -1, i32 262151, i32 61456, i32 -1, i32 393221, i32 61457, i32 -1, i32 589832, i32 61458, i32 -1, i32 65536, i32 61459, i32 -1, i32 196610, i32 61460, i32 -1, i32 262151, i32 61461, i32 -1, i32 393221, i32 61462, i32 -1, i32 589832, i32 61463, i32 -1, i32 65536, i32 61464, i32 -1, i32 196610, i32 61465, i32 -1, i32 262151, i32 61466, i32 -1, i32 393221, i32 61467, i32 -1, i32 589832, i32 61468, i32 -1, i32 65536, i32 61469, i32 -1, i32 196610, i32 61470, i32 -1, i32 262151, i32 61471, i32 -1, i32 393221, i32 61472, i32 -1, i32 589832, i32 61473, i32 -1, i32 65536, i32 61474, i32 -1, i32 196610, i32 61475, i32 -1, i32 262151, i32 61476, i32 -1, i32 393221, i32 61477, i32 -1, i32 589832, i32 61478, i32 -1, i32 65536, i32 61479, i32 -1, i32 196610, i32 61480, i32 -1, i32 262151, i32 61481, i32 -1, i32 393221, i32 61482, i32 -1, i32 589832, i32 61440, i32 -1, i32 -1763704320, i32 8642, i32 -1, i32 9437440, i32 12553, i32 -1, i32 2097215, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 983040, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 996, i32 -1, i32 256, i32 998, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [232 x i8] zeroinitializer }, align 32
@bonaire_golden_registers = internal constant { [123 x i32], [116 x i8] } { [123 x i32] [i32 3285, i32 819, i32 819, i32 3284, i32 790464, i32 262656, i32 9860, i32 65536, i32 360968, i32 61440, i32 -57345, i32 1310720, i32 61568, i32 -33812481, i32 256, i32 61581, i32 1073741824, i32 1073742336, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 131612, i32 131584, i32 798, i32 128, i32 0, i32 5868, i32 240, i32 112, i32 5872, i32 -265216001, i32 -2144337920, i32 9790, i32 1937192823, i32 302055425, i32 3395, i32 8454144, i32 1082847232, i32 7180, i32 822083857, i32 17, i32 3026, i32 1937192823, i32 302055425, i32 2179, i32 32694, i32 2204081, i32 2180, i32 32694, i32 2105777, i32 2144, i32 32694, i32 8593, i32 2182, i32 32694, i32 2171313, i32 2183, i32 32694, i32 2105777, i32 2167, i32 32694, i32 8593, i32 2168, i32 32694, i32 8593, i32 3466, i32 63, i32 10, i32 3467, i32 63, i32 10, i32 2745, i32 475134, i32 8866, i32 2307, i32 2047, i32 0, i32 8837, i32 -268435393, i32 7, i32 8956, i32 8193, i32 1, i32 8905, i32 -1, i32 16777215, i32 49793, i32 65295, i32 0, i32 41619, i32 134217727, i32 100663296, i32 310, i32 4095, i32 256, i32 3998, i32 1, i32 2, i32 9280, i32 50331648, i32 56805000, i32 8960, i32 255, i32 1, i32 912, i32 8191, i32 8191, i32 9240, i32 127, i32 32, i32 9538, i32 65536, i32 65536, i32 11013, i32 1023, i32 243, i32 11011, i32 -1, i32 4146], [116 x i8] zeroinitializer }, align 32
@bonaire_golden_common_registers = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 12764, i32 -1, i32 2048, i32 12765, i32 -1, i32 2048, i32 12774, i32 -1, i32 32703, i32 12775, i32 -1, i32 32687], [48 x i8] zeroinitializer }, align 32
@bonaire_golden_spm_registers = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49664, i32 -520093697, i32 -536870912], [20 x i8] zeroinitializer }, align 32
@kalindi_mgcg_cgcg_init = internal constant { [165 x i32], [172 x i8] } { [165 x i32] [i32 12552, i32 -1, i32 -4, i32 49664, i32 -1, i32 -536870912, i32 61608, i32 -1, i32 256, i32 61570, i32 -1, i32 256, i32 61616, i32 -1, i32 256, i32 61618, i32 -1, i32 256, i32 61617, i32 -1, i32 256, i32 5497, i32 -1, i32 6291712, i32 61600, i32 -1, i32 256, i32 61573, i32 -1, i32 100663552, i32 61576, i32 -1, i32 256, i32 61574, i32 -1, i32 100663552, i32 61569, i32 -1, i32 256, i32 61624, i32 -1, i32 256, i32 61577, i32 -1, i32 256, i32 61568, i32 -1, i32 256, i32 61580, i32 -1, i32 256, i32 61581, i32 -1, i32 256, i32 61588, i32 -1, i32 256, i32 61589, i32 -1, i32 256, i32 61590, i32 -1, i32 256, i32 61591, i32 -1, i32 256, i32 61592, i32 -1, i32 256, i32 61599, i32 -1, i32 256, i32 61598, i32 -1, i32 256, i32 61572, i32 -1, i32 100663552, i32 61604, i32 -1, i32 256, i32 61597, i32 -1, i32 256, i32 61613, i32 -1, i32 256, i32 61612, i32 -1, i32 256, i32 61596, i32 -1, i32 256, i32 49664, i32 -1, i32 -536870912, i32 61448, i32 -1, i32 65536, i32 61449, i32 -1, i32 196610, i32 61450, i32 -1, i32 262151, i32 61451, i32 -1, i32 393221, i32 61452, i32 -1, i32 589832, i32 61453, i32 -1, i32 65536, i32 61454, i32 -1, i32 196610, i32 61455, i32 -1, i32 262151, i32 61456, i32 -1, i32 393221, i32 61457, i32 -1, i32 589832, i32 61440, i32 -1, i32 -1763704320, i32 8642, i32 -1, i32 9437440, i32 12553, i32 -1, i32 2097215, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 983040, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 2090, i32 -1, i32 260, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [172 x i8] zeroinitializer }, align 32
@kalindi_golden_registers = internal constant { [90 x i32], [88 x i8] } { [90 x i32] [i32 61440, i32 -8193, i32 1855209536, i32 5497, i32 -10452993, i32 -67108608, i32 61576, i32 -16773121, i32 256, i32 61577, i32 -16773121, i32 256, i32 61568, i32 -258049, i32 256, i32 7094, i32 65793, i32 65536, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 5868, i32 240, i32 112, i32 5872, i32 -265216001, i32 -2144337920, i32 9790, i32 1937192823, i32 302055425, i32 9791, i32 -1, i32 16, i32 9951, i32 16711680, i32 16515072, i32 8204, i32 7951, i32 4106, i32 3026, i32 1937192823, i32 302055425, i32 2306, i32 1048575, i32 786559, i32 8837, i32 -268435393, i32 7, i32 8905, i32 1073692671, i32 16764927, i32 49793, i32 65295, i32 0, i32 41619, i32 134217727, i32 100663296, i32 310, i32 4095, i32 256, i32 3998, i32 1, i32 2, i32 12762, i32 8, i32 8, i32 8960, i32 255, i32 3, i32 34110, i32 33489407, i32 2, i32 34086, i32 8386560, i32 2097152, i32 32855, i32 -1, i32 3904, i32 8753, i32 2046691, i32 130, i32 8757, i32 31, i32 16, i32 49741, i32 -1, i32 0], [88 x i8] zeroinitializer }, align 32
@kalindi_golden_common_registers = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 12764, i32 -1, i32 2048, i32 12765, i32 -1, i32 2048, i32 12774, i32 -1, i32 32703, i32 12775, i32 -1, i32 32687], [48 x i8] zeroinitializer }, align 32
@kalindi_golden_spm_registers = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49664, i32 -520093697, i32 -536870912], [20 x i8] zeroinitializer }, align 32
@godavari_golden_registers = internal constant { [96 x i32], [96 x i8] } { [96 x i32] [i32 5497, i32 -10452993, i32 -67108608, i32 7094, i32 65793, i32 65536, i32 9740, i32 -1, i32 0, i32 155840, i32 -267386881, i32 1024, i32 6220, i32 -1, i32 65536, i32 5868, i32 240, i32 112, i32 5872, i32 -265216001, i32 -2144337920, i32 9790, i32 1937192823, i32 302055425, i32 9791, i32 -1, i32 16, i32 8204, i32 7951, i32 4106, i32 3026, i32 1937192823, i32 302055425, i32 2306, i32 1048575, i32 786559, i32 8837, i32 -268435393, i32 7, i32 8905, i32 -1, i32 16715775, i32 49793, i32 65295, i32 0, i32 41619, i32 134217727, i32 100663296, i32 310, i32 4095, i32 256, i32 13317, i32 65536, i32 8454145, i32 13829, i32 65536, i32 8454145, i32 3998, i32 1, i32 2, i32 12762, i32 8, i32 8, i32 12764, i32 3840, i32 2048, i32 12765, i32 3840, i32 2048, i32 12774, i32 16777215, i32 16744383, i32 12775, i32 16777215, i32 16744367, i32 8960, i32 255, i32 1, i32 34110, i32 33489407, i32 2, i32 34086, i32 8386560, i32 2097152, i32 32855, i32 -1, i32 3904, i32 8753, i32 2046691, i32 130, i32 8757, i32 31, i32 16, i32 49741, i32 -1, i32 0], [96 x i8] zeroinitializer }, align 32
@spectre_mgcg_cgcg_init = internal constant { [261 x i32], [268 x i8] } { [261 x i32] [i32 12552, i32 -1, i32 -4, i32 49664, i32 -1, i32 -536870912, i32 61608, i32 -1, i32 256, i32 61570, i32 -1, i32 256, i32 61616, i32 -1, i32 256, i32 61618, i32 -1, i32 256, i32 61617, i32 -1, i32 256, i32 5497, i32 -1, i32 6291712, i32 61600, i32 -1, i32 256, i32 61573, i32 -1, i32 100663552, i32 61576, i32 -1, i32 256, i32 61574, i32 -1, i32 100663552, i32 61569, i32 -1, i32 256, i32 61624, i32 -1, i32 256, i32 61577, i32 -1, i32 256, i32 61568, i32 -1, i32 256, i32 61580, i32 -1, i32 256, i32 61581, i32 -1, i32 256, i32 61588, i32 -1, i32 256, i32 61589, i32 -1, i32 256, i32 61590, i32 -1, i32 256, i32 61591, i32 -1, i32 256, i32 61592, i32 -1, i32 256, i32 61599, i32 -1, i32 256, i32 61598, i32 -1, i32 256, i32 61572, i32 -1, i32 100663552, i32 61604, i32 -1, i32 256, i32 61597, i32 -1, i32 256, i32 61613, i32 -1, i32 256, i32 61612, i32 -1, i32 256, i32 61596, i32 -1, i32 256, i32 49664, i32 -1, i32 -536870912, i32 61448, i32 -1, i32 65536, i32 61449, i32 -1, i32 196610, i32 61450, i32 -1, i32 262151, i32 61451, i32 -1, i32 393221, i32 61452, i32 -1, i32 589832, i32 61453, i32 -1, i32 65536, i32 61454, i32 -1, i32 196610, i32 61455, i32 -1, i32 262151, i32 61456, i32 -1, i32 393221, i32 61457, i32 -1, i32 589832, i32 61458, i32 -1, i32 65536, i32 61459, i32 -1, i32 196610, i32 61460, i32 -1, i32 262151, i32 61461, i32 -1, i32 393221, i32 61462, i32 -1, i32 589832, i32 61463, i32 -1, i32 65536, i32 61464, i32 -1, i32 196610, i32 61465, i32 -1, i32 262151, i32 61466, i32 -1, i32 393221, i32 61467, i32 -1, i32 589832, i32 61468, i32 -1, i32 65536, i32 61469, i32 -1, i32 196610, i32 61470, i32 -1, i32 262151, i32 61471, i32 -1, i32 393221, i32 61472, i32 -1, i32 589832, i32 61473, i32 -1, i32 65536, i32 61474, i32 -1, i32 196610, i32 61475, i32 -1, i32 262151, i32 61476, i32 -1, i32 393221, i32 61477, i32 -1, i32 589832, i32 61478, i32 -1, i32 65536, i32 61479, i32 -1, i32 196610, i32 61480, i32 -1, i32 262151, i32 61481, i32 -1, i32 393221, i32 61482, i32 -1, i32 589832, i32 61483, i32 -1, i32 65536, i32 61484, i32 -1, i32 196610, i32 61485, i32 -1, i32 262151, i32 61486, i32 -1, i32 393221, i32 61487, i32 -1, i32 589832, i32 61440, i32 -1, i32 -1763704320, i32 8642, i32 -1, i32 9437440, i32 12553, i32 -1, i32 2097215, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 983040, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 996, i32 -1, i32 256, i32 998, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [268 x i8] zeroinitializer }, align 32
@spectre_golden_registers = internal constant { [75 x i32], [84 x i8] } { [75 x i32] [i32 61440, i32 -57345, i32 -1768685056, i32 61443, i32 -65535, i32 -16777216, i32 61568, i32 -258049, i32 256, i32 7094, i32 65793, i32 65536, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 -4, i32 131584, i32 5868, i32 240, i32 112, i32 5872, i32 -265216001, i32 -2144337920, i32 9790, i32 1937192823, i32 302055425, i32 9951, i32 16711680, i32 16515072, i32 3026, i32 1937192823, i32 302055425, i32 8837, i32 -268435393, i32 7, i32 8905, i32 -1, i32 16777215, i32 41172, i32 1061109759, i32 130, i32 41173, i32 63, i32 0, i32 3998, i32 1, i32 2, i32 9295, i32 -64545, i32 4, i32 12762, i32 8, i32 8, i32 8960, i32 2303, i32 2048, i32 9538, i32 65536, i32 65536, i32 11011, i32 -1, i32 1417032208, i32 34110, i32 33489407, i32 2, i32 34086, i32 8386560, i32 2097152, i32 32855, i32 -1, i32 3904, i32 49741, i32 -1, i32 1], [84 x i8] zeroinitializer }, align 32
@spectre_golden_common_registers = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 12764, i32 -1, i32 2048, i32 12765, i32 -1, i32 2048, i32 12774, i32 -1, i32 32703, i32 12775, i32 -1, i32 32687], [48 x i8] zeroinitializer }, align 32
@spectre_golden_spm_registers = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49664, i32 -520093697, i32 -536870912], [20 x i8] zeroinitializer }, align 32
@hawaii_mgcg_cgcg_init = internal constant { [321 x i32], [348 x i8] } { [321 x i32] [i32 12552, i32 -1, i32 -3, i32 49664, i32 -1, i32 -536870912, i32 61608, i32 -1, i32 256, i32 61570, i32 -1, i32 256, i32 61616, i32 -1, i32 256, i32 61618, i32 -1, i32 256, i32 61617, i32 -1, i32 256, i32 5497, i32 -1, i32 2097408, i32 61600, i32 -1, i32 256, i32 61573, i32 -1, i32 100663552, i32 61576, i32 -1, i32 256, i32 61574, i32 -1, i32 100663552, i32 61569, i32 -1, i32 256, i32 61624, i32 -1, i32 256, i32 61577, i32 -1, i32 256, i32 61568, i32 -1, i32 256, i32 61580, i32 -1, i32 256, i32 61581, i32 -1, i32 256, i32 61588, i32 -1, i32 256, i32 61589, i32 -1, i32 256, i32 61590, i32 -1, i32 256, i32 61591, i32 -1, i32 256, i32 61592, i32 -1, i32 256, i32 61599, i32 -1, i32 256, i32 61598, i32 -1, i32 256, i32 61572, i32 -1, i32 100663552, i32 61604, i32 -1, i32 256, i32 61597, i32 -1, i32 256, i32 61613, i32 -1, i32 256, i32 61612, i32 -1, i32 256, i32 61596, i32 -1, i32 256, i32 49664, i32 -1, i32 -536870912, i32 61448, i32 -1, i32 65536, i32 61449, i32 -1, i32 196610, i32 61450, i32 -1, i32 262151, i32 61451, i32 -1, i32 393221, i32 61452, i32 -1, i32 589832, i32 61453, i32 -1, i32 65536, i32 61454, i32 -1, i32 196610, i32 61455, i32 -1, i32 262151, i32 61456, i32 -1, i32 393221, i32 61457, i32 -1, i32 589832, i32 61458, i32 -1, i32 65536, i32 61459, i32 -1, i32 196610, i32 61460, i32 -1, i32 262151, i32 61461, i32 -1, i32 393221, i32 61462, i32 -1, i32 589832, i32 61463, i32 -1, i32 65536, i32 61464, i32 -1, i32 196610, i32 61465, i32 -1, i32 262151, i32 61466, i32 -1, i32 393221, i32 61467, i32 -1, i32 589832, i32 61468, i32 -1, i32 65536, i32 61469, i32 -1, i32 196610, i32 61470, i32 -1, i32 262151, i32 61471, i32 -1, i32 393221, i32 61472, i32 -1, i32 589832, i32 61473, i32 -1, i32 65536, i32 61474, i32 -1, i32 196610, i32 61475, i32 -1, i32 262151, i32 61476, i32 -1, i32 393221, i32 61477, i32 -1, i32 589832, i32 61478, i32 -1, i32 65536, i32 61479, i32 -1, i32 196610, i32 61480, i32 -1, i32 262151, i32 61481, i32 -1, i32 393221, i32 61482, i32 -1, i32 589832, i32 61483, i32 -1, i32 65536, i32 61484, i32 -1, i32 196610, i32 61485, i32 -1, i32 262151, i32 61486, i32 -1, i32 393221, i32 61487, i32 -1, i32 589832, i32 61488, i32 -1, i32 65536, i32 61489, i32 -1, i32 196610, i32 61490, i32 -1, i32 262151, i32 61491, i32 -1, i32 393221, i32 61492, i32 -1, i32 589832, i32 61493, i32 -1, i32 65536, i32 61494, i32 -1, i32 196610, i32 61495, i32 -1, i32 262151, i32 61496, i32 -1, i32 393221, i32 61497, i32 -1, i32 589832, i32 61498, i32 -1, i32 65536, i32 61499, i32 -1, i32 196610, i32 61500, i32 -1, i32 262151, i32 61501, i32 -1, i32 393221, i32 61502, i32 -1, i32 589832, i32 12486, i32 -1, i32 131584, i32 3284, i32 -1, i32 512, i32 1392, i32 -1, i32 1024, i32 5498, i32 -1, i32 0, i32 3028, i32 -1, i32 2306, i32 61440, i32 -1, i32 -1768685056, i32 8642, i32 -1, i32 9437440, i32 12553, i32 -1, i32 2097215, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 983040, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 996, i32 -1, i32 256, i32 998, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [348 x i8] zeroinitializer }, align 32
@hawaii_golden_registers = internal constant { [108 x i32], [112 x i8] } { [108 x i32] [i32 3285, i32 819, i32 819, i32 9860, i32 65536, i32 360968, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 131612, i32 131584, i32 798, i32 128, i32 0, i32 5868, i32 240, i32 112, i32 5872, i32 -265216001, i32 -2144337920, i32 3395, i32 8454144, i32 1082847232, i32 7180, i32 822083857, i32 17, i32 3026, i32 1937192823, i32 302055425, i32 2120, i32 127, i32 27, i32 2167, i32 32694, i32 8593, i32 3466, i32 63, i32 10, i32 3467, i32 63, i32 10, i32 2745, i32 475134, i32 8866, i32 2307, i32 2047, i32 0, i32 8956, i32 8193, i32 1, i32 8905, i32 -1, i32 16777215, i32 49793, i32 65295, i32 0, i32 41619, i32 134217727, i32 100663296, i32 3998, i32 1, i32 2, i32 12762, i32 8, i32 8, i32 12764, i32 3840, i32 2048, i32 12765, i32 3840, i32 2048, i32 12774, i32 16777215, i32 16744383, i32 12775, i32 16777215, i32 16744367, i32 8960, i32 255, i32 2048, i32 912, i32 8191, i32 8191, i32 9240, i32 127, i32 32, i32 9538, i32 65536, i32 65536, i32 11136, i32 1048576, i32 1044604, i32 11013, i32 1023, i32 15, i32 11012, i32 -1, i32 1969552876, i32 11011, i32 -1, i32 824228264, i32 11010, i32 536870912, i32 261881856], [112 x i8] zeroinitializer }, align 32
@hawaii_golden_common_registers = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 49664, i32 -1, i32 -536870912, i32 41172, i32 -1, i32 973084186, i32 41173, i32 -1, i32 46, i32 9860, i32 -1, i32 98824, i32 9790, i32 -1, i32 302059523], [36 x i8] zeroinitializer }, align 32
@hawaii_golden_spm_registers = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49664, i32 -520093697, i32 -536870912], [20 x i8] zeroinitializer }, align 32
@amdgpu_pcie_gen2 = external dso_local local_unnamed_addr global i32, align 4
@cik_pcie_gen3_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016[drm] PCIE gen 3 link speeds already enabled\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cik_pcie_gen3_enable\00", [43 x i8] zeroinitializer }, align 32
@cik_pcie_gen3_enable._entry_ptr = internal global ptr @cik_pcie_gen3_enable._entry, section ".printk_index", align 4
@cik_pcie_gen3_enable._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016[drm] enabling PCIE gen 3 link speeds, disable with amdgpu.pcie_gen2=0\0A\00", [54 x i8] zeroinitializer }, align 32
@cik_pcie_gen3_enable._entry_ptr.16 = internal global ptr @cik_pcie_gen3_enable._entry.14, section ".printk_index", align 4
@cik_pcie_gen3_enable._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016[drm] PCIE gen 2 link speeds already enabled\0A\00", [48 x i8] zeroinitializer }, align 32
@cik_pcie_gen3_enable._entry_ptr.19 = internal global ptr @cik_pcie_gen3_enable._entry.17, section ".printk_index", align 4
@cik_pcie_gen3_enable._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.3, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016[drm] enabling PCIE gen 2 link speeds, disable with amdgpu.pcie_gen2=0\0A\00", [54 x i8] zeroinitializer }, align 32
@cik_pcie_gen3_enable._entry_ptr.22 = internal global ptr @cik_pcie_gen3_enable._entry.20, section ".printk_index", align 4
@amdgpu_aspm = external dso_local local_unnamed_addr global i32, align 4
@switch.table.cik_common_early_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 65, i32 1, i32 1, i32 1, i32 65, i32 65], [40 x i8] zeroinitializer }, align 32
@switch.table.cik_common_early_init.23 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 129, i32 130, i32 133], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 9789, i64 9951, i64 41172, i64 41173]
@__sancov_gen_cov_switch_values.27 = internal global [52 x i64] [i64 50, i64 32, i64 2520, i64 9790, i64 9796, i64 9797, i64 9798, i64 9799, i64 9800, i64 9801, i64 9802, i64 9803, i64 9804, i64 9805, i64 9806, i64 9807, i64 9808, i64 9809, i64 9810, i64 9811, i64 9812, i64 9813, i64 9814, i64 9815, i64 9816, i64 9817, i64 9818, i64 9819, i64 9820, i64 9821, i64 9822, i64 9823, i64 9824, i64 9825, i64 9826, i64 9827, i64 9828, i64 9829, i64 9830, i64 9831, i64 9832, i64 9833, i64 9834, i64 9835, i64 9836, i64 9837, i64 9838, i64 9839, i64 9840, i64 9841, i64 9842, i64 9843]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"cik_common_ip_block\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2246, i32 45 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"cik_common_ip_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2229, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2230, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"cik_asic_funcs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1995, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"cik_allowed_read_registers\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1043, i32 51 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1436, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1439, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1399, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"cik_video_codecs_encode\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 86, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"cik_video_codecs_decode\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 124, i32 41 }
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"cik_video_codecs_encode_array\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 75, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"cik_video_codecs_decode_array\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 92, i32 45 }
@___asan_gen_.96 = private unnamed_addr constant [23 x i8] c"bonaire_mgcg_cgcg_init\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 301, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"bonaire_golden_registers\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 256, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [32 x i8] c"bonaire_golden_common_registers\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 248, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant [29 x i8] c"bonaire_golden_spm_registers\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 243, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"kalindi_mgcg_cgcg_init\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 567, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [25 x i8] c"kalindi_golden_registers\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 533, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [32 x i8] c"kalindi_golden_common_registers\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 525, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant [29 x i8] c"kalindi_golden_spm_registers\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 520, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"godavari_golden_registers\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 791, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"spectre_mgcg_cgcg_init\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 429, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"spectre_golden_registers\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 400, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant [32 x i8] c"spectre_golden_common_registers\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 392, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant [29 x i8] c"spectre_golden_spm_registers\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 387, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"hawaii_mgcg_cgcg_init\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 680, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"hawaii_golden_registers\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 640, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant [31 x i8] c"hawaii_golden_common_registers\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 631, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"hawaii_golden_spm_registers\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 626, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1555, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1558, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1561, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [36 x i8] c"../drivers/gpu/drm/amd/amdgpu/cik.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1564, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [35 x i8] c"switch.table.cik_common_early_init\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [38 x i8] c"switch.table.cik_common_early_init.23\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @cik_asic_reset._entry, ptr @cik_asic_reset._entry.6, ptr @cik_asic_reset._entry_ptr, ptr @cik_asic_reset._entry_ptr.8, ptr @cik_asic_reset_method._entry, ptr @cik_asic_reset_method._entry_ptr, ptr @cik_pcie_gen3_enable._entry, ptr @cik_pcie_gen3_enable._entry.14, ptr @cik_pcie_gen3_enable._entry.17, ptr @cik_pcie_gen3_enable._entry.20, ptr @cik_pcie_gen3_enable._entry_ptr, ptr @cik_pcie_gen3_enable._entry_ptr.16, ptr @cik_pcie_gen3_enable._entry_ptr.19, ptr @cik_pcie_gen3_enable._entry_ptr.22, ptr @cik_common_ip_block, ptr @cik_common_ip_funcs, ptr @.str, ptr @cik_asic_funcs, ptr @cik_allowed_read_registers, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cik_video_codecs_encode, ptr @cik_video_codecs_decode, ptr @cik_video_codecs_encode_array, ptr @cik_video_codecs_decode_array, ptr @bonaire_mgcg_cgcg_init, ptr @bonaire_golden_registers, ptr @bonaire_golden_common_registers, ptr @bonaire_golden_spm_registers, ptr @kalindi_mgcg_cgcg_init, ptr @kalindi_golden_registers, ptr @kalindi_golden_common_registers, ptr @kalindi_golden_spm_registers, ptr @godavari_golden_registers, ptr @spectre_mgcg_cgcg_init, ptr @spectre_golden_registers, ptr @spectre_golden_common_registers, ptr @spectre_golden_spm_registers, ptr @hawaii_mgcg_cgcg_init, ptr @hawaii_golden_registers, ptr @hawaii_golden_common_registers, ptr @hawaii_golden_spm_registers, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @switch.table.cik_common_early_init, ptr @switch.table.cik_common_early_init.23], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_common_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_common_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_asic_funcs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_allowed_read_registers to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_asic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_asic_reset._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_asic_reset_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_video_codecs_encode_array to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_video_codecs_decode_array to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bonaire_mgcg_cgcg_init to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bonaire_golden_registers to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bonaire_golden_common_registers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bonaire_golden_spm_registers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalindi_mgcg_cgcg_init to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalindi_golden_registers to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalindi_golden_common_registers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalindi_golden_spm_registers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @godavari_golden_registers to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_mgcg_cgcg_init to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_golden_registers to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_golden_common_registers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_golden_spm_registers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hawaii_mgcg_cgcg_init to i32), i32 1284, i32 1632, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hawaii_golden_registers to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hawaii_golden_common_registers to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hawaii_golden_spm_registers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_pcie_gen3_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_pcie_gen3_enable._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_pcie_gen3_enable._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_pcie_gen3_enable._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cik_common_early_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cik_common_early_init.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_srbm_select(ptr noundef %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %queue, i32 noundef %vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %pipe, 3
  %shl1 = shl i32 %me, 2
  %and2 = and i32 %shl1, 12
  %or = or i32 %and, %and2
  %shl3 = shl i32 %vmid, 4
  %and4 = and i32 %shl3, 240
  %shl6 = shl i32 %queue, 8
  %and7 = and i32 %shl6, 1792
  %or5 = or i32 %or, %and7
  %or8 = or i32 %or5, %and4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 913, i32 noundef %or8, i32 noundef 0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cik_set_ip_blocks(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 5, label %sw.bb
    i32 8, label %sw.bb15
    i32 6, label %sw.bb36
    i32 7, label %entry.sw.bb57_crit_edge
    i32 9, label %entry.sw.bb57_crit_edge133
  ]

entry.sw.bb57_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb57

entry.sw.bb57_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb57

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_common_ip_block) #6
  %call1 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v7_0_ip_block) #6
  %call2 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_ih_ip_block) #6
  %call3 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v7_2_ip_block) #6
  %call4 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_sdma_ip_block) #6
  %call5 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #6
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %3 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_virtual_display, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.return.sink.split.sink.split_crit_edge, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

sw.bb.return.sink.split.sink.split_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.sink.split

sw.bb15:                                          ; preds = %entry
  %call16 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_common_ip_block) #6
  %call17 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v7_0_ip_block) #6
  %call18 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_ih_ip_block) #6
  %call19 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v7_3_ip_block) #6
  %call20 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_sdma_ip_block) #6
  %call21 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #6
  %enable_virtual_display22 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %5 = ptrtoint ptr %enable_virtual_display22 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_virtual_display22, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool23.not = icmp eq i8 %6, 0
  br i1 %tobool23.not, label %sw.bb15.return.sink.split.sink.split_crit_edge, label %sw.bb15.return.sink.split_crit_edge

sw.bb15.return.sink.split_crit_edge:              ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

sw.bb15.return.sink.split.sink.split_crit_edge:   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.sink.split

sw.bb36:                                          ; preds = %entry
  %call37 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_common_ip_block) #6
  %call38 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v7_0_ip_block) #6
  %call39 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_ih_ip_block) #6
  %call40 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v7_1_ip_block) #6
  %call41 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_sdma_ip_block) #6
  %call42 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @kv_smu_ip_block) #6
  %enable_virtual_display43 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %7 = ptrtoint ptr %enable_virtual_display43 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_virtual_display43, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool44.not = icmp eq i8 %8, 0
  br i1 %tobool44.not, label %sw.bb36.return.sink.split.sink.split_crit_edge, label %sw.bb36.return.sink.split_crit_edge

sw.bb36.return.sink.split_crit_edge:              ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

sw.bb36.return.sink.split.sink.split_crit_edge:   ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.sink.split

sw.bb57:                                          ; preds = %entry.sw.bb57_crit_edge, %entry.sw.bb57_crit_edge133
  %call58 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_common_ip_block) #6
  %call59 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v7_0_ip_block) #6
  %call60 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_ih_ip_block) #6
  %call61 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v7_2_ip_block) #6
  %call62 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cik_sdma_ip_block) #6
  %call63 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @kv_smu_ip_block) #6
  %enable_virtual_display64 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %9 = ptrtoint ptr %enable_virtual_display64 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_virtual_display64, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool65.not = icmp eq i8 %10, 0
  br i1 %tobool65.not, label %sw.bb57.return.sink.split.sink.split_crit_edge, label %sw.bb57.return.sink.split_crit_edge

sw.bb57.return.sink.split_crit_edge:              ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

sw.bb57.return.sink.split.sink.split_crit_edge:   ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.sink.split

return.sink.split.sink.split:                     ; preds = %sw.bb57.return.sink.split.sink.split_crit_edge, %sw.bb36.return.sink.split.sink.split_crit_edge, %sw.bb15.return.sink.split.sink.split_crit_edge, %sw.bb.return.sink.split.sink.split_crit_edge
  %dce_v8_3_ip_block.sink = phi ptr [ @dce_v8_2_ip_block, %sw.bb.return.sink.split.sink.split_crit_edge ], [ @dce_v8_5_ip_block, %sw.bb15.return.sink.split.sink.split_crit_edge ], [ @dce_v8_1_ip_block, %sw.bb36.return.sink.split.sink.split_crit_edge ], [ @dce_v8_3_ip_block, %sw.bb57.return.sink.split.sink.split_crit_edge ]
  %call69 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #6
  %dm_ip_block.dce_v8_3_ip_block = select i1 %call69, ptr @dm_ip_block, ptr %dce_v8_3_ip_block.sink
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %sw.bb57.return.sink.split_crit_edge, %sw.bb36.return.sink.split_crit_edge, %sw.bb15.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %dm_ip_block.sink.sink = phi ptr [ @amdgpu_vkms_ip_block, %sw.bb.return.sink.split_crit_edge ], [ @amdgpu_vkms_ip_block, %sw.bb15.return.sink.split_crit_edge ], [ @amdgpu_vkms_ip_block, %sw.bb36.return.sink.split_crit_edge ], [ @amdgpu_vkms_ip_block, %sw.bb57.return.sink.split_crit_edge ], [ %dm_ip_block.dce_v8_3_ip_block, %return.sink.split.sink.split ]
  %call9 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %dm_ip_block.sink.sink) #6
  %call13 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @uvd_v4_2_ip_block) #6
  %call14 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vce_v2_0_ip_block) #6
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_block_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_common_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %0 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cik_smc_rreg, ptr %smc_rreg, align 4
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %1 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cik_smc_wreg, ptr %smc_wreg, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cik_pcie_rreg, ptr %pcie_rreg, align 8
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %3 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cik_pcie_wreg, ptr %pcie_wreg, align 4
  %uvd_ctx_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 46
  %4 = ptrtoint ptr %uvd_ctx_rreg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cik_uvd_ctx_rreg, ptr %uvd_ctx_rreg, align 4
  %uvd_ctx_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %5 = ptrtoint ptr %uvd_ctx_wreg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cik_uvd_ctx_wreg, ptr %uvd_ctx_wreg, align 8
  %didt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 49
  %6 = ptrtoint ptr %didt_rreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cik_didt_rreg, ptr %didt_rreg, align 8
  %didt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 50
  %7 = ptrtoint ptr %didt_wreg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cik_didt_wreg, ptr %didt_wreg, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cik_asic_funcs, ptr %asic_funcs, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5465, i32 noundef 0) #6
  %shr.i = lshr i32 %call.i, 28
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 7
  %9 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr.i, ptr %rev_id, align 8
  %external_rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 8
  %10 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %external_rev_id, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %11 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_type, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %12, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 8, label %sw.bb3
    i32 6, label %sw.bb7
    i32 7, label %entry.sw.bb24_crit_edge
    i32 9, label %entry.sw.bb24_crit_edge96
  ]

entry.sw.bb24_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %14 = ptrtoint ptr %cg_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 130939, ptr %cg_flags, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %15 = ptrtoint ptr %pg_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pg_flags, align 4
  %add = add nuw nsw i32 %shr.i, 20
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cg_flags4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %16 = ptrtoint ptr %cg_flags4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 130907, ptr %cg_flags4, align 8
  %pg_flags5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %17 = ptrtoint ptr %pg_flags5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pg_flags5, align 4
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  %cg_flags8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %18 = ptrtoint ptr %cg_flags8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 130171, ptr %cg_flags8, align 8
  %pg_flags9 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %19 = ptrtoint ptr %pg_flags9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 24, ptr %pg_flags9, align 4
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device, align 2
  %switch.tableidx = add i16 %23, -4882
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %24 = icmp ult i16 %switch.tableidx, 6
  br i1 %24, label %switch.lookup, label %sw.bb7.cleanup.sink.split_crit_edge

sw.bb7.cleanup.sink.split_crit_edge:              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge96
  %cg_flags25 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %25 = ptrtoint ptr %cg_flags25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 130171, ptr %cg_flags25, align 8
  %pg_flags26 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %26 = ptrtoint ptr %pg_flags26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %pg_flags26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp28 = icmp eq i32 %12, 7
  br i1 %cmp28, label %if.then30, label %if.else51

if.then30:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %call.i)
  %27 = icmp ult i32 %call.i, 805306368
  br i1 %27, label %switch.lookup93, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else51:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  %add53 = add nuw nsw i32 %shr.i, 161
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %28 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.cik_common_early_init, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split

switch.lookup93:                                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep94 = getelementptr inbounds [3 x i32], ptr @switch.table.cik_common_early_init.23, i32 0, i32 %shr.i
  %30 = ptrtoint ptr %switch.gep94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load95 = load i32, ptr %switch.gep94, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup93, %switch.lookup, %if.else51, %sw.bb7.cleanup.sink.split_crit_edge, %sw.bb3, %sw.bb
  %add.sink = phi i32 [ %add, %sw.bb ], [ 40, %sw.bb3 ], [ %add53, %if.else51 ], [ %switch.load, %switch.lookup ], [ 1, %sw.bb7.cleanup.sink.split_crit_edge ], [ %switch.load95, %switch.lookup93 ]
  %31 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.sink, ptr %external_rev_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then30.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_sw_init(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_sw_fini(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_common_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %lnkcap.i = alloca i32, align 4
  %tmp16.i = alloca i16, align 2
  %bridge_cfg.i = alloca i16, align 2
  %gpu_cfg.i = alloca i16, align 2
  %bridge_cfg2.i = alloca i16, align 2
  %gpu_cfg2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #6
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %entry.cik_init_golden_registers.exit_crit_edge [
    i32 5, label %sw.bb.i
    i32 7, label %sw.bb1.i
    i32 9, label %sw.bb2.i
    i32 6, label %sw.bb3.i
    i32 8, label %sw.bb4.i
  ]

entry.cik_init_golden_registers.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_init_golden_registers.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @bonaire_mgcg_cgcg_init, i32 noundef 246) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @bonaire_golden_registers, i32 noundef 123) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @bonaire_golden_common_registers, i32 noundef 12) #6
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @kalindi_mgcg_cgcg_init, i32 noundef 165) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @kalindi_golden_registers, i32 noundef 90) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @kalindi_golden_common_registers, i32 noundef 12) #6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @kalindi_mgcg_cgcg_init, i32 noundef 165) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @godavari_golden_registers, i32 noundef 96) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @kalindi_golden_common_registers, i32 noundef 12) #6
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @spectre_mgcg_cgcg_init, i32 noundef 261) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @spectre_golden_registers, i32 noundef 75) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @spectre_golden_common_registers, i32 noundef 12) #6
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @hawaii_mgcg_cgcg_init, i32 noundef 321) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @hawaii_golden_registers, i32 noundef 108) #6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @hawaii_golden_common_registers, i32 noundef 15) #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %hawaii_golden_spm_registers.sink.i = phi ptr [ @hawaii_golden_spm_registers, %sw.bb4.i ], [ @spectre_golden_spm_registers, %sw.bb3.i ], [ @kalindi_golden_spm_registers, %sw.bb2.i ], [ @kalindi_golden_spm_registers, %sw.bb1.i ], [ @bonaire_golden_spm_registers, %sw.bb.i ]
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull %hawaii_golden_spm_registers.sink.i, i32 noundef 3) #6
  br label %cik_init_golden_registers.exit

cik_init_golden_registers.exit:                   ; preds = %sw.epilog.sink.split.i, %entry.cik_init_golden_registers.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #6
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16.i) #6
  %9 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %tmp16.i, align 2, !annotation !97
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %cik_init_golden_registers.exit.cik_pcie_gen3_enable.exit_crit_edge, label %if.end.i

cik_init_golden_registers.exit.cik_pcie_gen3_enable.exit_crit_edge: ; preds = %cik_init_golden_registers.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end.i:                                         ; preds = %cik_init_golden_registers.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_pcie_gen2 to i32))
  %12 = load i32, ptr @amdgpu_pcie_gen2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.end.i.cik_pcie_gen3_enable.exit_crit_edge, label %if.end4.i

if.end.i.cik_pcie_gen3_enable.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end4.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end4.i.cik_pcie_gen3_enable.exit_crit_edge

if.end4.i.cik_pcie_gen3_enable.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end6.i:                                        ; preds = %if.end4.i
  %pcie_gen_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 18
  %15 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcie_gen_mask.i, align 8
  %and7.i = and i32 %16, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.cik_pcie_gen3_enable.exit_crit_edge, label %if.end10.i

if.end6.i.cik_pcie_gen3_enable.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end10.i:                                       ; preds = %if.end6.i
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %17 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie_rreg.i, align 8
  %call11.i = tail call i32 %18(ptr noundef %handle, i32 noundef 268501156) #6
  %and12.i = lshr i32 %call11.i, 13
  %shr.i = and i32 %and12.i, 3
  %19 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcie_gen_mask.i, align 8
  %and15.i = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp18.i = icmp eq i32 %shr.i, 2
  br i1 %cmp18.i, label %if.then17.i.cleanup.sink.split.i_crit_edge, label %if.then17.i.if.end46.sink.split.i_crit_edge

if.then17.i.if.end46.sink.split.i_crit_edge:      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.sink.split.i

if.then17.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end10.i
  %and29.i = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else.i.if.end46.i_crit_edge, label %if.then31.i

if.else.i.if.end46.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp32.i = icmp eq i32 %shr.i, 1
  br i1 %cmp32.i, label %if.then31.i.cleanup.sink.split.i_crit_edge, label %if.then31.i.if.end46.sink.split.i_crit_edge

if.then31.i.if.end46.sink.split.i_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.sink.split.i

if.then31.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end46.sink.split.i:                            ; preds = %if.then31.i.if.end46.sink.split.i_crit_edge, %if.then17.i.if.end46.sink.split.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.15, %if.then17.i.if.end46.sink.split.i_crit_edge ], [ @.str.21, %if.then31.i.if.end46.sink.split.i_crit_edge ]
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink.i) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.sink.split.i, %if.else.i.if.end46.i_crit_edge
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 19
  %21 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not.i = icmp eq i8 %22, 0
  br i1 %tobool.i.not.i, label %if.end46.i.cik_pcie_gen3_enable.exit_crit_edge, label %lor.lhs.false.i

if.end46.i.cik_pcie_gen3_enable.exit_crit_edge:   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

lor.lhs.false.i:                                  ; preds = %if.end46.i
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %pcie_cap.i.i302.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %pcie_cap.i.i302.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pcie_cap.i.i302.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i303.not.i = icmp eq i8 %26, 0
  br i1 %tobool.i303.not.i, label %lor.lhs.false.i.cik_pcie_gen3_enable.exit_crit_edge, label %if.end51.i

lor.lhs.false.i.cik_pcie_gen3_enable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end51.i:                                       ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pcie_gen_mask.i, align 8
  %and54.i = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp57.not.i = icmp eq i32 %shr.i, 2
  %or.cond.i = select i1 %tobool55.not.i, i1 true, i1 %cmp57.not.i
  br i1 %or.cond.i, label %if.end51.i.if.end161.i_crit_edge, label %if.then58.i

if.end51.i.if.end161.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161.i

if.then58.i:                                      ; preds = %if.end51.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bridge_cfg.i) #6
  %29 = ptrtoint ptr %bridge_cfg.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %bridge_cfg.i, align 2, !annotation !97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gpu_cfg.i) #6
  %30 = ptrtoint ptr %gpu_cfg.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %gpu_cfg.i, align 2, !annotation !97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bridge_cfg2.i) #6
  %31 = ptrtoint ptr %bridge_cfg2.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %bridge_cfg2.i, align 2, !annotation !97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gpu_cfg2.i) #6
  %32 = ptrtoint ptr %gpu_cfg2.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %gpu_cfg2.i, align 2, !annotation !97
  %call60.i = call i32 @pcie_capability_read_word(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %bridge_cfg.i) #6
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 4
  %call62.i = call i32 @pcie_capability_read_word(ptr noundef %34, i32 noundef 16, ptr noundef nonnull %gpu_cfg.i) #6
  %35 = ptrtoint ptr %bridge_cfg.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bridge_cfg.i, align 2
  %37 = or i16 %36, 512
  %38 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %tmp16.i, align 2
  %call64.i = call i32 @pcie_capability_write_word(ptr noundef %8, i32 noundef 16, i16 noundef zeroext %37) #6
  %39 = ptrtoint ptr %gpu_cfg.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gpu_cfg.i, align 2
  %41 = or i16 %40, 512
  %42 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %tmp16.i, align 2
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 4
  %call69.i = call i32 @pcie_capability_write_word(ptr noundef %44, i32 noundef 16, i16 noundef zeroext %41) #6
  %45 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcie_rreg.i, align 8
  %call71.i = call i32 %46(ptr noundef %handle, i32 noundef 20971560) #6
  %and72.i = lshr i32 %call71.i, 5
  %shr73.i = and i32 %and72.i, 7
  %and74.i = lshr i32 %call71.i, 2
  %shr75.i = and i32 %and74.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr75.i, i32 %shr73.i)
  %cmp76.i = icmp ult i32 %shr75.i, %shr73.i
  br i1 %cmp76.i, label %if.then78.i, label %if.then58.i.if.end88.i_crit_edge

if.then58.i.if.end88.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i

if.then78.i:                                      ; preds = %if.then58.i
  %47 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcie_rreg.i, align 8
  %call80.i = call i32 %48(ptr noundef %handle, i32 noundef 268501154) #6
  %and81.i = and i32 %call80.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.then78.i.if.end88.i_crit_edge, label %if.then83.i

if.then78.i.if.end88.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i

if.then83.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  %and84.i = and i32 %call80.i, -13576
  %or85.i = or i32 %shr73.i, %and84.i
  %or86.i = or i32 %or85.i, 5376
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %49 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcie_wreg.i, align 4
  call void %50(ptr noundef %handle, i32 noundef 268501154, i32 noundef %or86.i) #6
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then83.i, %if.then78.i.if.end88.i_crit_edge, %if.then58.i.if.end88.i_crit_edge
  %pcie_wreg107.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  br label %for.body.i

for.body.i:                                       ; preds = %if.end97.i.for.body.i_crit_edge, %if.end88.i
  %i.0304.i = phi i32 [ 0, %if.end88.i ], [ %inc.i, %if.end97.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i, align 4
  %call92.i = call i32 @pcie_capability_read_word(ptr noundef %52, i32 noundef 10, ptr noundef nonnull %tmp16.i) #6
  %53 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tmp16.i, align 2
  %55 = and i16 %54, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool95.not.i = icmp eq i16 %55, 0
  br i1 %tobool95.not.i, label %if.end97.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end97.i:                                       ; preds = %for.body.i
  %call98.i = call i32 @pcie_capability_read_word(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %bridge_cfg.i) #6
  %56 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i, align 4
  %call100.i = call i32 @pcie_capability_read_word(ptr noundef %57, i32 noundef 16, ptr noundef nonnull %gpu_cfg.i) #6
  %call101.i = call i32 @pcie_capability_read_word(ptr noundef %8, i32 noundef 48, ptr noundef nonnull %bridge_cfg2.i) #6
  %58 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i, align 4
  %call103.i = call i32 @pcie_capability_read_word(ptr noundef %59, i32 noundef 48, ptr noundef nonnull %gpu_cfg2.i) #6
  %60 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcie_rreg.i, align 8
  %call105.i = call i32 %61(ptr noundef %handle, i32 noundef 268501174) #6
  %or106.i = or i32 %call105.i, 8192
  %62 = ptrtoint ptr %pcie_wreg107.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcie_wreg107.i, align 4
  call void %63(ptr noundef %handle, i32 noundef 268501174, i32 noundef %or106.i) #6
  %64 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcie_rreg.i, align 8
  %call109.i = call i32 %65(ptr noundef %handle, i32 noundef 268501174) #6
  %or110.i = or i32 %call109.i, 32
  %66 = ptrtoint ptr %pcie_wreg107.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcie_wreg107.i, align 4
  call void %67(ptr noundef %handle, i32 noundef 268501174, i32 noundef %or110.i) #6
  call void @msleep(i32 noundef 100) #6
  %call112.i = call i32 @pcie_capability_read_word(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %tmp16.i) #6
  %68 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tmp16.i, align 2
  %70 = and i16 %69, -513
  %71 = ptrtoint ptr %bridge_cfg.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bridge_cfg.i, align 2
  %73 = and i16 %72, 512
  %or119298.i = or i16 %73, %70
  store i16 %or119298.i, ptr %tmp16.i, align 2
  %call121.i = call i32 @pcie_capability_write_word(ptr noundef %8, i32 noundef 16, i16 noundef zeroext %or119298.i) #6
  %74 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev.i, align 4
  %call123.i = call i32 @pcie_capability_read_word(ptr noundef %75, i32 noundef 16, ptr noundef nonnull %tmp16.i) #6
  %76 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tmp16.i, align 2
  %78 = and i16 %77, -513
  %79 = ptrtoint ptr %gpu_cfg.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %gpu_cfg.i, align 2
  %81 = and i16 %80, 512
  %or130299.i = or i16 %81, %78
  store i16 %or130299.i, ptr %tmp16.i, align 2
  %82 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev.i, align 4
  %call133.i = call i32 @pcie_capability_write_word(ptr noundef %83, i32 noundef 16, i16 noundef zeroext %or130299.i) #6
  %call134.i = call i32 @pcie_capability_read_word(ptr noundef %8, i32 noundef 48, ptr noundef nonnull %tmp16.i) #6
  %84 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %tmp16.i, align 2
  %86 = and i16 %85, -913
  %87 = ptrtoint ptr %bridge_cfg2.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %bridge_cfg2.i, align 2
  %89 = and i16 %88, 912
  %or141300.i = or i16 %89, %86
  store i16 %or141300.i, ptr %tmp16.i, align 2
  %call143.i = call i32 @pcie_capability_write_word(ptr noundef %8, i32 noundef 48, i16 noundef zeroext %or141300.i) #6
  %90 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev.i, align 4
  %call145.i = call i32 @pcie_capability_read_word(ptr noundef %91, i32 noundef 48, ptr noundef nonnull %tmp16.i) #6
  %92 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tmp16.i, align 2
  %94 = and i16 %93, -913
  %95 = ptrtoint ptr %gpu_cfg2.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %gpu_cfg2.i, align 2
  %97 = and i16 %96, 912
  %or152301.i = or i16 %97, %94
  store i16 %or152301.i, ptr %tmp16.i, align 2
  %98 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i, align 4
  %call155.i = call i32 @pcie_capability_write_word(ptr noundef %99, i32 noundef 48, i16 noundef zeroext %or152301.i) #6
  %100 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcie_rreg.i, align 8
  %call157.i = call i32 %101(ptr noundef %handle, i32 noundef 268501174) #6
  %and158.i = and i32 %call157.i, -8193
  %102 = ptrtoint ptr %pcie_wreg107.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcie_wreg107.i, align 4
  call void %103(ptr noundef %handle, i32 noundef 268501174, i32 noundef %and158.i) #6
  %inc.i = add nuw nsw i32 %i.0304.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end97.i.for.end.i_crit_edge, label %if.end97.i.for.body.i_crit_edge

if.end97.i.for.body.i_crit_edge:                  ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end97.i.for.end.i_crit_edge:                   ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end97.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gpu_cfg2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bridge_cfg2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gpu_cfg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bridge_cfg.i) #6
  br label %if.end161.i

if.end161.i:                                      ; preds = %for.end.i, %if.end51.i.if.end161.i_crit_edge
  %or162.i = and i32 %call11.i, -353
  %and163.i = or i32 %or162.i, 288
  %pcie_wreg164.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %104 = ptrtoint ptr %pcie_wreg164.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcie_wreg164.i, align 4
  call void %105(ptr noundef %handle, i32 noundef 268501156, i32 noundef %and163.i) #6
  %106 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i, align 4
  %call166.i = call i32 @pcie_capability_read_word(ptr noundef %107, i32 noundef 48, ptr noundef nonnull %tmp16.i) #6
  %108 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %tmp16.i, align 2
  %110 = and i16 %109, -16
  %111 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pcie_gen_mask.i, align 8
  %and172.i = and i32 %112, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.i)
  %tobool173.not.i = icmp eq i32 %and172.i, 0
  br i1 %tobool173.not.i, label %if.else178.i, label %if.then174.i

if.then174.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = or i16 %110, 3
  %114 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %tmp16.i, align 2
  br label %if.end192.i

if.else178.i:                                     ; preds = %if.end161.i
  %and181.i = and i32 %112, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  br i1 %tobool182.not.i, label %if.else187.i, label %if.then183.i

if.then183.i:                                     ; preds = %if.else178.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = or i16 %110, 2
  %116 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %tmp16.i, align 2
  br label %if.end192.i

if.else187.i:                                     ; preds = %if.else178.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = or i16 %110, 1
  %118 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %tmp16.i, align 2
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else187.i, %if.then183.i, %if.then174.i
  %119 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev.i, align 4
  %121 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %tmp16.i, align 2
  %call194.i = call i32 @pcie_capability_write_word(ptr noundef %120, i32 noundef 48, i16 noundef zeroext %122) #6
  %123 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pcie_rreg.i, align 8
  %call196.i = call i32 %124(ptr noundef %handle, i32 noundef 268501156) #6
  %or197.i = or i32 %call196.i, 512
  %125 = ptrtoint ptr %pcie_wreg164.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pcie_wreg164.i, align 4
  call void %126(ptr noundef %handle, i32 noundef 268501156, i32 noundef %or197.i) #6
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %127 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp200305.i = icmp sgt i32 %128, 0
  br i1 %cmp200305.i, label %if.end192.i.for.body202.i_crit_edge, label %if.end192.i.cik_pcie_gen3_enable.exit_crit_edge

if.end192.i.cik_pcie_gen3_enable.exit_crit_edge:  ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end192.i.for.body202.i_crit_edge:              ; preds = %if.end192.i
  br label %for.body202.i

for.body202.i:                                    ; preds = %if.end209.i.for.body202.i_crit_edge, %if.end192.i.for.body202.i_crit_edge
  %i.1306.i = phi i32 [ %inc211.i, %if.end209.i.for.body202.i_crit_edge ], [ 0, %if.end192.i.for.body202.i_crit_edge ]
  %129 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pcie_rreg.i, align 8
  %call204.i = call i32 %130(ptr noundef %handle, i32 noundef 268501156) #6
  %and205.i = and i32 %call204.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205.i)
  %cmp206.i = icmp eq i32 %and205.i, 0
  br i1 %cmp206.i, label %for.body202.i.cik_pcie_gen3_enable.exit_crit_edge, label %if.end209.i

for.body202.i.cik_pcie_gen3_enable.exit_crit_edge: ; preds = %for.body202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end209.i:                                      ; preds = %for.body202.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 214748) #6
  %inc211.i = add nuw nsw i32 %i.1306.i, 1
  %132 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %usec_timeout.i, align 8
  %cmp200.i = icmp slt i32 %inc211.i, %133
  br i1 %cmp200.i, label %if.end209.i.for.body202.i_crit_edge, label %if.end209.i.cik_pcie_gen3_enable.exit_crit_edge

if.end209.i.cik_pcie_gen3_enable.exit_crit_edge:  ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_pcie_gen3_enable.exit

if.end209.i.for.body202.i_crit_edge:              ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body202.i

cleanup.sink.split.i:                             ; preds = %if.then31.i.cleanup.sink.split.i_crit_edge, %if.then17.i.cleanup.sink.split.i_crit_edge
  %.str.18.sink.i = phi ptr [ @.str.12, %if.then17.i.cleanup.sink.split.i_crit_edge ], [ @.str.18, %if.then31.i.cleanup.sink.split.i_crit_edge ]
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink.i) #9
  br label %cik_pcie_gen3_enable.exit

cik_pcie_gen3_enable.exit:                        ; preds = %cleanup.sink.split.i, %if.end209.i.cik_pcie_gen3_enable.exit_crit_edge, %for.body202.i.cik_pcie_gen3_enable.exit_crit_edge, %if.end192.i.cik_pcie_gen3_enable.exit_crit_edge, %lor.lhs.false.i.cik_pcie_gen3_enable.exit_crit_edge, %if.end46.i.cik_pcie_gen3_enable.exit_crit_edge, %if.end6.i.cik_pcie_gen3_enable.exit_crit_edge, %if.end4.i.cik_pcie_gen3_enable.exit_crit_edge, %if.end.i.cik_pcie_gen3_enable.exit_crit_edge, %cik_init_golden_registers.exit.cik_pcie_gen3_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_aspm to i32))
  %134 = load i32, ptr @amdgpu_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i3 = icmp eq i32 %134, 0
  br i1 %cmp.i3, label %cik_pcie_gen3_enable.exit.cik_program_aspm.exit_crit_edge, label %if.end.i8

cik_pcie_gen3_enable.exit.cik_program_aspm.exit_crit_edge: ; preds = %cik_pcie_gen3_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_program_aspm.exit

if.end.i8:                                        ; preds = %cik_pcie_gen3_enable.exit
  %135 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev.i, align 4
  %bus.i5 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %bus.i5 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bus.i5, align 8
  %parent.i.i6 = getelementptr inbounds %struct.pci_bus, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %parent.i.i6 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %parent.i.i6, align 8
  %tobool.not.i.i7 = icmp eq ptr %140, null
  br i1 %tobool.not.i.i7, label %if.end.i8.cik_program_aspm.exit_crit_edge, label %if.end2.i

if.end.i8.cik_program_aspm.exit_crit_edge:        ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_program_aspm.exit

if.end2.i:                                        ; preds = %if.end.i8
  %flags.i9 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %141 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags.i9, align 8
  %and.i10 = and i32 %142, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %if.end4.i13, label %if.end2.i.cik_program_aspm.exit_crit_edge

if.end2.i.cik_program_aspm.exit_crit_edge:        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_program_aspm.exit

if.end4.i13:                                      ; preds = %if.end2.i
  %pcie_rreg.i12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %143 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pcie_rreg.i12, align 8
  %call5.i = call i32 %144(ptr noundef %handle, i32 noundef 268501155) #6
  %and6.i = and i32 %call5.i, -512
  %or.i = or i32 %and6.i, 292
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %or.i)
  %cmp7.not.i = icmp eq i32 %call5.i, %or.i
  br i1 %cmp7.not.i, label %if.end4.i13.if.end9.i_crit_edge, label %if.then8.i

if.end4.i13.if.end9.i_crit_edge:                  ; preds = %if.end4.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end4.i13
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg.i14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %145 = ptrtoint ptr %pcie_wreg.i14 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pcie_wreg.i14, align 4
  call void %146(ptr noundef %handle, i32 noundef 268501155, i32 noundef %or.i) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end4.i13.if.end9.i_crit_edge
  %147 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pcie_rreg.i12, align 8
  %call11.i15 = call i32 %148(ptr noundef %handle, i32 noundef 268501173) #6
  %or12.i = or i32 %call11.i15, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i15, i32 %or12.i)
  %cmp13.not.i = icmp eq i32 %call11.i15, %or12.i
  br i1 %cmp13.not.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then14.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg15.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %149 = ptrtoint ptr %pcie_wreg15.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pcie_wreg15.i, align 4
  call void %150(ptr noundef %handle, i32 noundef 268501173, i32 noundef %or12.i) #6
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end9.i.if.end16.i_crit_edge
  %151 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pcie_rreg.i12, align 8
  %call18.i = call i32 %152(ptr noundef %handle, i32 noundef 20971584) #6
  %or19.i = or i32 %call18.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %or19.i)
  %cmp20.not.i = icmp eq i32 %call18.i, %or19.i
  br i1 %cmp20.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then21.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg22.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %153 = ptrtoint ptr %pcie_wreg22.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pcie_wreg22.i, align 4
  call void %154(ptr noundef %handle, i32 noundef 20971584, i32 noundef %or19.i) #6
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end16.i.if.end23.i_crit_edge
  %155 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pcie_rreg.i12, align 8
  %call25.i = call i32 %156(ptr noundef %handle, i32 noundef 268501152) #6
  %and26.i = and i32 %call25.i, -130817
  %or34.i = or i32 %and26.i, 30464
  call void @__sanitizer_cov_trace_cmp4(i32 %call25.i, i32 %or34.i)
  %cmp36.not.i = icmp eq i32 %call25.i, %or34.i
  br i1 %cmp36.not.i, label %if.end23.i.if.then41.i_crit_edge, label %if.then37.i

if.end23.i.if.then41.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41.i

if.then37.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg38.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %157 = ptrtoint ptr %pcie_wreg38.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pcie_wreg38.i, align 4
  call void %158(ptr noundef %handle, i32 noundef 268501152, i32 noundef %or34.i) #6
  br label %if.then41.i

if.then41.i:                                      ; preds = %if.then37.i, %if.end23.i.if.then41.i_crit_edge
  %159 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pcie_rreg.i12, align 8
  %call43.i = call i32 %160(ptr noundef %handle, i32 noundef 17825810) #6
  %or45.i = or i32 %call43.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call43.i, i32 %or45.i)
  %cmp46.not.i = icmp eq i32 %call43.i, %or45.i
  br i1 %cmp46.not.i, label %if.then41.i.if.end49.i_crit_edge, label %if.then47.i

if.then41.i.if.end49.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then47.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg48.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %161 = ptrtoint ptr %pcie_wreg48.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pcie_wreg48.i, align 4
  call void %162(ptr noundef %handle, i32 noundef 17825810, i32 noundef %or45.i) #6
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then47.i, %if.then41.i.if.end49.i_crit_edge
  %163 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pcie_rreg.i12, align 8
  %call51.i = call i32 %164(ptr noundef %handle, i32 noundef 17825811) #6
  %or53.i = or i32 %call51.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call51.i, i32 %or53.i)
  %cmp54.not.i = icmp eq i32 %call51.i, %or53.i
  br i1 %cmp54.not.i, label %if.end49.i.if.end57.i_crit_edge, label %if.then55.i

if.end49.i.if.end57.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.then55.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg56.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %165 = ptrtoint ptr %pcie_wreg56.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pcie_wreg56.i, align 4
  call void %166(ptr noundef %handle, i32 noundef 17825811, i32 noundef %or53.i) #6
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %if.end49.i.if.end57.i_crit_edge
  %167 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pcie_rreg.i12, align 8
  %call59.i = call i32 %168(ptr noundef %handle, i32 noundef 34603026) #6
  %or61.i = or i32 %call59.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call59.i, i32 %or61.i)
  %cmp62.not.i = icmp eq i32 %call59.i, %or61.i
  br i1 %cmp62.not.i, label %if.end57.i.if.end65.i_crit_edge, label %if.then63.i

if.end57.i.if.end65.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.then63.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg64.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %169 = ptrtoint ptr %pcie_wreg64.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pcie_wreg64.i, align 4
  call void %170(ptr noundef %handle, i32 noundef 34603026, i32 noundef %or61.i) #6
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then63.i, %if.end57.i.if.end65.i_crit_edge
  %171 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pcie_rreg.i12, align 8
  %call67.i = call i32 %172(ptr noundef %handle, i32 noundef 34603027) #6
  %or69.i = or i32 %call67.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call67.i, i32 %or69.i)
  %cmp70.not.i = icmp eq i32 %call67.i, %or69.i
  br i1 %cmp70.not.i, label %if.end65.i.if.end73.i_crit_edge, label %if.then71.i

if.end65.i.if.end73.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg72.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %173 = ptrtoint ptr %pcie_wreg72.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pcie_wreg72.i, align 4
  call void %174(ptr noundef %handle, i32 noundef 34603027, i32 noundef %or69.i) #6
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %if.end65.i.if.end73.i_crit_edge
  %175 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pcie_rreg.i12, align 8
  %call75.i = call i32 %176(ptr noundef %handle, i32 noundef 268501154) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6291457, i32 %call75.i)
  %cmp78.not.i = icmp eq i32 %call75.i, -6291457
  br i1 %cmp78.not.i, label %if.end73.i.if.then83.i17_crit_edge, label %if.then79.i

if.end73.i.if.then83.i17_crit_edge:               ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83.i17

if.then79.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg80.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %177 = ptrtoint ptr %pcie_wreg80.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pcie_wreg80.i, align 4
  call void %178(ptr noundef %handle, i32 noundef 268501154, i32 noundef -6291457) #6
  br label %if.then83.i17

if.then83.i17:                                    ; preds = %if.then79.i, %if.end73.i.if.then83.i17_crit_edge
  %179 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pdev.i, align 4
  %bus85.i = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %bus85.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %bus85.i, align 8
  %self.i16 = getelementptr inbounds %struct.pci_bus, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %self.i16 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %self.i16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnkcap.i) #6
  %185 = ptrtoint ptr %lnkcap.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %lnkcap.i, align 4, !annotation !97
  %call86.i = call i32 @pcie_capability_read_dword(ptr noundef %184, i32 noundef 12, ptr noundef nonnull %lnkcap.i) #6
  %186 = ptrtoint ptr %lnkcap.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %lnkcap.i, align 4
  %and87.i = and i32 %187, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnkcap.i) #6
  br i1 %tobool88.not.i, label %if.then83.i17.if.end144.i_crit_edge, label %if.then93.i

if.then83.i17.if.end144.i_crit_edge:              ; preds = %if.then83.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144.i

if.then93.i:                                      ; preds = %if.then83.i17
  %188 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pcie_rreg.i12, align 8
  %call95.i = call i32 %189(ptr noundef %handle, i32 noundef 268501169) #6
  %or96.i = or i32 %call95.i, 393216
  call void @__sanitizer_cov_trace_cmp4(i32 %call95.i, i32 %or96.i)
  %cmp97.not.i = icmp eq i32 %call95.i, %or96.i
  br i1 %cmp97.not.i, label %if.then93.i.if.end100.i_crit_edge, label %if.then98.i

if.then93.i.if.end100.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100.i

if.then98.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg99.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %190 = ptrtoint ptr %pcie_wreg99.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pcie_wreg99.i, align 4
  call void %191(ptr noundef %handle, i32 noundef 268501169, i32 noundef %or96.i) #6
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then98.i, %if.then93.i.if.end100.i_crit_edge
  %smc_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %192 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %smc_rreg.i, align 4
  %call101.i18 = call i32 %193(ptr noundef %handle, i32 noundef -1068498520) #6
  %and102.i = and i32 %call101.i18, -65536
  %or103.i = or i32 %and102.i, 257
  call void @__sanitizer_cov_trace_cmp4(i32 %call101.i18, i32 %or103.i)
  %cmp104.not.i = icmp eq i32 %call101.i18, %or103.i
  br i1 %cmp104.not.i, label %if.end100.i.if.end106.i_crit_edge, label %if.then105.i

if.end100.i.if.end106.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.i

if.then105.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  %smc_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %194 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %smc_wreg.i, align 8
  call void %195(ptr noundef %handle, i32 noundef -1068498520, i32 noundef %or103.i) #6
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then105.i, %if.end100.i.if.end106.i_crit_edge
  %196 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %smc_rreg.i, align 4
  %call108.i = call i32 %197(ptr noundef %handle, i32 noundef -1068498516) #6
  %and109.i = and i32 %call108.i, -65536
  %or110.i19 = or i32 %and109.i, 257
  call void @__sanitizer_cov_trace_cmp4(i32 %call108.i, i32 %or110.i19)
  %cmp111.not.i = icmp eq i32 %call108.i, %or110.i19
  br i1 %cmp111.not.i, label %if.end106.i.if.end114.i_crit_edge, label %if.then112.i

if.end106.i.if.end114.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114.i

if.then112.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  %smc_wreg113.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %198 = ptrtoint ptr %smc_wreg113.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %smc_wreg113.i, align 8
  call void %199(ptr noundef %handle, i32 noundef -1068498516, i32 noundef %or110.i19) #6
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then112.i, %if.end106.i.if.end114.i_crit_edge
  %200 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %smc_rreg.i, align 4
  %call116.i = call i32 %201(ptr noundef %handle, i32 noundef -1068498528) #6
  %and117.i = and i32 %call116.i, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %call116.i, i32 %and117.i)
  %cmp118.not.i = icmp eq i32 %call116.i, %and117.i
  br i1 %cmp118.not.i, label %if.end114.i.if.end121.i_crit_edge, label %if.then119.i

if.end114.i.if.end121.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121.i

if.then119.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #8
  %smc_wreg120.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %202 = ptrtoint ptr %smc_wreg120.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %smc_wreg120.i, align 8
  call void %203(ptr noundef %handle, i32 noundef -1068498528, i32 noundef %and117.i) #6
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then119.i, %if.end114.i.if.end121.i_crit_edge
  %204 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %smc_rreg.i, align 4
  %call123.i20 = call i32 %205(ptr noundef %handle, i32 noundef -1068498524) #6
  %and124.i = and i32 %call123.i20, -9
  call void @__sanitizer_cov_trace_cmp4(i32 %call123.i20, i32 %and124.i)
  %cmp125.not.i = icmp eq i32 %call123.i20, %and124.i
  br i1 %cmp125.not.i, label %if.end121.i.if.end128.i_crit_edge, label %if.then126.i

if.end121.i.if.end128.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128.i

if.then126.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  %smc_wreg127.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %206 = ptrtoint ptr %smc_wreg127.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %smc_wreg127.i, align 8
  call void %207(ptr noundef %handle, i32 noundef -1068498524, i32 noundef %and124.i) #6
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then126.i, %if.end121.i.if.end128.i_crit_edge
  %208 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %smc_rreg.i, align 4
  %call130.i = call i32 %209(ptr noundef %handle, i32 noundef -1068498532) #6
  %and131.i = and i32 %call130.i, -65281
  %or132.i = or i32 %and131.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %call130.i, i32 %or132.i)
  %cmp133.not.i = icmp eq i32 %call130.i, %or132.i
  br i1 %cmp133.not.i, label %if.end128.i.if.end144.i_crit_edge, label %if.then134.i

if.end128.i.if.end144.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144.i

if.then134.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  %smc_wreg135.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %210 = ptrtoint ptr %smc_wreg135.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %smc_wreg135.i, align 8
  call void %211(ptr noundef %handle, i32 noundef -1068498532, i32 noundef %or132.i) #6
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then134.i, %if.end128.i.if.end144.i_crit_edge, %if.then83.i17.if.end144.i_crit_edge
  %212 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pcie_rreg.i12, align 8
  %call146.i = call i32 %213(ptr noundef %handle, i32 noundef 20971548) #6
  %or147.i = or i32 %call146.i, 851968
  call void @__sanitizer_cov_trace_cmp4(i32 %call146.i, i32 %or147.i)
  %cmp148.not.i = icmp eq i32 %call146.i, %or147.i
  br i1 %cmp148.not.i, label %if.end144.i.if.then153.i_crit_edge, label %if.then149.i

if.end144.i.if.then153.i_crit_edge:               ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then153.i

if.then149.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg150.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %214 = ptrtoint ptr %pcie_wreg150.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pcie_wreg150.i, align 4
  call void %215(ptr noundef %handle, i32 noundef 20971548, i32 noundef %or147.i) #6
  br label %if.then153.i

if.then153.i:                                     ; preds = %if.then149.i, %if.end144.i.if.then153.i_crit_edge
  %216 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pcie_rreg.i12, align 8
  %call155.i21 = call i32 %217(ptr noundef %handle, i32 noundef 268501155) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %call155.i21)
  %cmp157.i = icmp ugt i32 %call155.i21, -16777217
  br i1 %cmp157.i, label %if.then158.i, label %if.then153.i.cik_program_aspm.exit_crit_edge

if.then153.i.cik_program_aspm.exit_crit_edge:     ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_program_aspm.exit

if.then158.i:                                     ; preds = %if.then153.i
  %218 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pcie_rreg.i12, align 8
  %call160.i = call i32 %219(ptr noundef %handle, i32 noundef 20971560) #6
  %220 = and i32 %call160.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %220)
  %.not.i = icmp eq i32 %220, 3
  br i1 %.not.i, label %if.then165.i, label %if.then158.i.cik_program_aspm.exit_crit_edge

if.then158.i.cik_program_aspm.exit_crit_edge:     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_program_aspm.exit

if.then165.i:                                     ; preds = %if.then158.i
  %221 = ptrtoint ptr %pcie_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pcie_rreg.i12, align 8
  %call167.i = call i32 %222(ptr noundef %handle, i32 noundef 268501152) #6
  %and168.i = and i32 %call167.i, -3841
  call void @__sanitizer_cov_trace_cmp4(i32 %call167.i, i32 %and168.i)
  %cmp169.not.i = icmp eq i32 %call167.i, %and168.i
  br i1 %cmp169.not.i, label %if.then165.i.cik_program_aspm.exit_crit_edge, label %if.then170.i

if.then165.i.cik_program_aspm.exit_crit_edge:     ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_program_aspm.exit

if.then170.i:                                     ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg171.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %223 = ptrtoint ptr %pcie_wreg171.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pcie_wreg171.i, align 4
  call void %224(ptr noundef %handle, i32 noundef 268501152, i32 noundef %and168.i) #6
  br label %cik_program_aspm.exit

cik_program_aspm.exit:                            ; preds = %if.then170.i, %if.then165.i.cik_program_aspm.exit_crit_edge, %if.then158.i.cik_program_aspm.exit_crit_edge, %if.then153.i.cik_program_aspm.exit_crit_edge, %if.end2.i.cik_program_aspm.exit_crit_edge, %if.end.i8.cik_program_aspm.exit_crit_edge, %cik_pcie_gen3_enable.exit.cik_program_aspm.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_hw_fini(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_suspend(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_common_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cik_common_hw_init(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cik_common_is_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_wait_for_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_soft_reset(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_common_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_smc_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %reg, i32 noundef 0) #6
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 129, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #6
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_smc_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %reg, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 129, i32 noundef %v, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_pcie_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 14, i32 noundef %reg, i32 noundef 0) #6
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 14, i32 noundef 0) #6
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_pcie_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 14, i32 noundef %reg, i32 noundef 0) #6
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 14, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15, i32 noundef %v, i32 noundef 0) #6
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_uvd_ctx_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %uvd_ctx_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 45
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uvd_ctx_idx_lock) #6
  %and = and i32 %reg, 511
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15656, i32 noundef %and, i32 noundef 0) #6
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15657, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uvd_ctx_idx_lock, i32 noundef %call2) #6
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_uvd_ctx_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %uvd_ctx_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 45
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uvd_ctx_idx_lock) #6
  %and = and i32 %reg, 511
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15656, i32 noundef %and, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15657, i32 noundef %v, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uvd_ctx_idx_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_didt_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12928, i32 noundef %reg, i32 noundef 0) #6
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12929, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call2) #6
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_didt_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12928, i32 noundef %reg, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12929, i32 noundef %v, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cik_read_disabled_bios(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5384, i32 noundef 0) #6
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 204, i32 noundef 0) #6
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 206, i32 noundef 0) #6
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 192, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %d1vga_control.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %d2vga_control.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %vga_render_control.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg, align 4
  %call4 = tail call i32 %3(ptr noundef %adev, i32 noundef -1067450368) #6
  %and = and i32 %call, -3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5384, i32 noundef %and, i32 noundef 0) #6
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %d1vga_control.0, -258
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 204, i32 noundef %and9, i32 noundef 0) #6
  %and10 = and i32 %d2vga_control.0, -258
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 206, i32 noundef %and10, i32 noundef 0) #6
  %and11 = and i32 %vga_render_control.0, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 192, i32 noundef %and11, i32 noundef 0) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %6 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smc_wreg, align 8
  %or = or i32 %call4, 2
  tail call void %7(ptr noundef %adev, i32 noundef -1067450368, i32 noundef %or) #6
  %call13 = tail call zeroext i1 @amdgpu_read_bios(ptr noundef %adev) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5384, i32 noundef %call, i32 noundef 0) #6
  %8 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %if.end12.if.end18_crit_edge, label %if.then17

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 204, i32 noundef %d1vga_control.0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 206, i32 noundef %d2vga_control.0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 192, i32 noundef %vga_render_control.0, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  %10 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smc_wreg, align 8
  tail call void %11(ptr noundef %adev, i32 noundef -1067450368, i32 noundef %call4) #6
  ret i1 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cik_read_bios_from_rom(ptr noundef %adev, ptr noundef writeonly %bios, i32 noundef %length_bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %bios, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length_bytes)
  %cmp1 = icmp eq i32 %length_bytes, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %flags4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags4, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add = add i32 %length_bytes, 3
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef -1067450352, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 129, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef -1067450348, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp1331.not = icmp ult i32 %add, 4
  br i1 %cmp1331.not, label %if.end6.for.end_crit_edge, label %for.body.preheader

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end6
  %div30 = lshr i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call15 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 129, i32 noundef 0) #6
  %arrayidx = getelementptr i32, ptr %bios, i32 %i.032
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call15, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %div30
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %for.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_read_register(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef %reg_offset, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr [75 x %struct.amdgpu_allowed_register_entry], ptr @cik_allowed_read_registers, i32 0, i32 %i.012
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %reg_offset)
  %cmp3.not = icmp eq i32 %2, %reg_offset
  br i1 %cmp3.not, label %if.end, label %for.inc.critedge

if.end:                                           ; preds = %for.body
  %grbm_indexed = getelementptr [75 x %struct.amdgpu_allowed_register_entry], ptr @cik_allowed_read_registers, i32 0, i32 %i.012, i32 1
  %3 = ptrtoint ptr %grbm_indexed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %grbm_indexed, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %se_num)
  %cmp.i = icmp eq i32 %se_num, -1
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %se_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sh_num)
  %cmp1.i = icmp eq i32 %sh_num, -1
  %cond5.i = select i1 %cmp1.i, i32 0, i32 %sh_num
  %5 = zext i32 %reg_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %reg_offset, label %sw.epilog.i [
    i32 9789, label %sw.bb.i
    i32 9951, label %sw.bb7.i
    i32 41172, label %sw.bb13.i
    i32 41173, label %sw.bb19.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  br label %cik_get_register_value.exit

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_rb_backend_disable.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 1
  %8 = ptrtoint ptr %user_rb_backend_disable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %user_rb_backend_disable.i, align 4
  br label %cik_get_register_value.exit

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %raster_config.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 2
  %10 = ptrtoint ptr %raster_config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raster_config.i, align 4
  br label %cik_get_register_value.exit

sw.bb19.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %raster_config_1.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 3
  %12 = ptrtoint ptr %raster_config_1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raster_config_1.i, align 4
  br label %cik_get_register_value.exit

sw.epilog.i:                                      ; preds = %if.then.i
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #6
  %14 = and i32 %sh_num, %se_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %if.end.thread.i, label %if.then32.i

if.end.thread.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %call93.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #6
  br label %if.end36.i

if.then32.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 49
  %16 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs.i, align 4
  %select_se_sh.i = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %select_se_sh.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %select_se_sh.i, align 4
  tail call void %19(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef -1) #6
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #6
  %20 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i, align 4
  %select_se_sh35.i = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %select_se_sh35.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %select_se_sh35.i, align 4
  tail call void %23(ptr noundef %adev, i32 noundef -1, i32 noundef -1, i32 noundef -1) #6
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end.thread.i
  %call94.i = phi i32 [ %call93.i, %if.end.thread.i ], [ %call.i, %if.then32.i ]
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #6
  br label %cik_get_register_value.exit

if.else.i:                                        ; preds = %if.end
  %24 = zext i32 %reg_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %reg_offset, label %sw.default.i [
    i32 9790, label %sw.bb40.i
    i32 2520, label %sw.bb43.i
    i32 9796, label %if.else.i.sw.bb46.i_crit_edge
    i32 9797, label %if.else.i.sw.bb46.i_crit_edge18
    i32 9798, label %if.else.i.sw.bb46.i_crit_edge19
    i32 9799, label %if.else.i.sw.bb46.i_crit_edge20
    i32 9800, label %if.else.i.sw.bb46.i_crit_edge21
    i32 9801, label %if.else.i.sw.bb46.i_crit_edge22
    i32 9802, label %if.else.i.sw.bb46.i_crit_edge23
    i32 9803, label %if.else.i.sw.bb46.i_crit_edge24
    i32 9804, label %if.else.i.sw.bb46.i_crit_edge25
    i32 9805, label %if.else.i.sw.bb46.i_crit_edge26
    i32 9806, label %if.else.i.sw.bb46.i_crit_edge27
    i32 9807, label %if.else.i.sw.bb46.i_crit_edge28
    i32 9808, label %if.else.i.sw.bb46.i_crit_edge29
    i32 9809, label %if.else.i.sw.bb46.i_crit_edge30
    i32 9810, label %if.else.i.sw.bb46.i_crit_edge31
    i32 9811, label %if.else.i.sw.bb46.i_crit_edge32
    i32 9812, label %if.else.i.sw.bb46.i_crit_edge33
    i32 9813, label %if.else.i.sw.bb46.i_crit_edge34
    i32 9814, label %if.else.i.sw.bb46.i_crit_edge35
    i32 9815, label %if.else.i.sw.bb46.i_crit_edge36
    i32 9816, label %if.else.i.sw.bb46.i_crit_edge37
    i32 9817, label %if.else.i.sw.bb46.i_crit_edge38
    i32 9818, label %if.else.i.sw.bb46.i_crit_edge39
    i32 9819, label %if.else.i.sw.bb46.i_crit_edge40
    i32 9820, label %if.else.i.sw.bb46.i_crit_edge41
    i32 9821, label %if.else.i.sw.bb46.i_crit_edge42
    i32 9822, label %if.else.i.sw.bb46.i_crit_edge43
    i32 9823, label %if.else.i.sw.bb46.i_crit_edge44
    i32 9824, label %if.else.i.sw.bb46.i_crit_edge45
    i32 9825, label %if.else.i.sw.bb46.i_crit_edge46
    i32 9826, label %if.else.i.sw.bb46.i_crit_edge47
    i32 9827, label %if.else.i.sw.bb46.i_crit_edge48
    i32 9828, label %if.else.i.sw.bb50.i_crit_edge
    i32 9829, label %if.else.i.sw.bb50.i_crit_edge49
    i32 9830, label %if.else.i.sw.bb50.i_crit_edge50
    i32 9831, label %if.else.i.sw.bb50.i_crit_edge51
    i32 9832, label %if.else.i.sw.bb50.i_crit_edge52
    i32 9833, label %if.else.i.sw.bb50.i_crit_edge53
    i32 9834, label %if.else.i.sw.bb50.i_crit_edge54
    i32 9835, label %if.else.i.sw.bb50.i_crit_edge55
    i32 9836, label %if.else.i.sw.bb50.i_crit_edge56
    i32 9837, label %if.else.i.sw.bb50.i_crit_edge57
    i32 9838, label %if.else.i.sw.bb50.i_crit_edge58
    i32 9839, label %if.else.i.sw.bb50.i_crit_edge59
    i32 9840, label %if.else.i.sw.bb50.i_crit_edge60
    i32 9841, label %if.else.i.sw.bb50.i_crit_edge61
    i32 9842, label %if.else.i.sw.bb50.i_crit_edge62
    i32 9843, label %if.else.i.sw.bb50.i_crit_edge63
  ]

if.else.i.sw.bb50.i_crit_edge63:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge62:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge61:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge60:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge59:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge58:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge57:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge56:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge55:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge54:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge53:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge52:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge51:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge50:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge49:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb50.i

if.else.i.sw.bb46.i_crit_edge48:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge47:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge46:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge45:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge44:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge43:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge42:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge41:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge40:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge39:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge38:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge37:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge36:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge35:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge34:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge33:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge32:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge31:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge30:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge29:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge28:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge27:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge26:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge25:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge24:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge23:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge22:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge21:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge20:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge19:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge18:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46.i

sw.bb40.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %25 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gb_addr_config.i, align 4
  br label %cik_get_register_value.exit

sw.bb43.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %mc_arb_ramcfg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 20
  %27 = ptrtoint ptr %mc_arb_ramcfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mc_arb_ramcfg.i, align 8
  br label %cik_get_register_value.exit

sw.bb46.i:                                        ; preds = %if.else.i.sw.bb46.i_crit_edge, %if.else.i.sw.bb46.i_crit_edge18, %if.else.i.sw.bb46.i_crit_edge19, %if.else.i.sw.bb46.i_crit_edge20, %if.else.i.sw.bb46.i_crit_edge21, %if.else.i.sw.bb46.i_crit_edge22, %if.else.i.sw.bb46.i_crit_edge23, %if.else.i.sw.bb46.i_crit_edge24, %if.else.i.sw.bb46.i_crit_edge25, %if.else.i.sw.bb46.i_crit_edge26, %if.else.i.sw.bb46.i_crit_edge27, %if.else.i.sw.bb46.i_crit_edge28, %if.else.i.sw.bb46.i_crit_edge29, %if.else.i.sw.bb46.i_crit_edge30, %if.else.i.sw.bb46.i_crit_edge31, %if.else.i.sw.bb46.i_crit_edge32, %if.else.i.sw.bb46.i_crit_edge33, %if.else.i.sw.bb46.i_crit_edge34, %if.else.i.sw.bb46.i_crit_edge35, %if.else.i.sw.bb46.i_crit_edge36, %if.else.i.sw.bb46.i_crit_edge37, %if.else.i.sw.bb46.i_crit_edge38, %if.else.i.sw.bb46.i_crit_edge39, %if.else.i.sw.bb46.i_crit_edge40, %if.else.i.sw.bb46.i_crit_edge41, %if.else.i.sw.bb46.i_crit_edge42, %if.else.i.sw.bb46.i_crit_edge43, %if.else.i.sw.bb46.i_crit_edge44, %if.else.i.sw.bb46.i_crit_edge45, %if.else.i.sw.bb46.i_crit_edge46, %if.else.i.sw.bb46.i_crit_edge47, %if.else.i.sw.bb46.i_crit_edge48
  %sub.i = add nsw i32 %reg_offset, -9796
  %arrayidx49.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 27, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx49.i, align 4
  br label %cik_get_register_value.exit

sw.bb50.i:                                        ; preds = %if.else.i.sw.bb50.i_crit_edge, %if.else.i.sw.bb50.i_crit_edge49, %if.else.i.sw.bb50.i_crit_edge50, %if.else.i.sw.bb50.i_crit_edge51, %if.else.i.sw.bb50.i_crit_edge52, %if.else.i.sw.bb50.i_crit_edge53, %if.else.i.sw.bb50.i_crit_edge54, %if.else.i.sw.bb50.i_crit_edge55, %if.else.i.sw.bb50.i_crit_edge56, %if.else.i.sw.bb50.i_crit_edge57, %if.else.i.sw.bb50.i_crit_edge58, %if.else.i.sw.bb50.i_crit_edge59, %if.else.i.sw.bb50.i_crit_edge60, %if.else.i.sw.bb50.i_crit_edge61, %if.else.i.sw.bb50.i_crit_edge62, %if.else.i.sw.bb50.i_crit_edge63
  %sub51.i = add nsw i32 %reg_offset, -9828
  %arrayidx54.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 28, i32 %sub51.i
  %31 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx54.i, align 4
  br label %cik_get_register_value.exit

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call55.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #6
  br label %cik_get_register_value.exit

cik_get_register_value.exit:                      ; preds = %sw.default.i, %sw.bb50.i, %sw.bb46.i, %sw.bb43.i, %sw.bb40.i, %if.end36.i, %sw.bb19.i, %sw.bb13.i, %sw.bb7.i, %sw.bb.i
  %retval.2.i = phi i32 [ %call94.i, %if.end36.i ], [ %13, %sw.bb19.i ], [ %11, %sw.bb13.i ], [ %9, %sw.bb7.i ], [ %7, %sw.bb.i ], [ %call55.i, %sw.default.i ], [ %32, %sw.bb50.i ], [ %30, %sw.bb46.i ], [ %28, %sw.bb43.i ], [ %26, %sw.bb40.i ]
  %33 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.2.i, ptr %value, align 4
  br label %cleanup5

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 75
  br i1 %exitcond.not, label %for.inc.critedge.cleanup5_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.critedge.cleanup5_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup5

cleanup5:                                         ; preds = %for.inc.critedge.cleanup5_crit_edge, %cik_get_register_value.exit
  %retval.2 = phi i32 [ 0, %cik_get_register_value.exit ], [ -22, %for.inc.critedge.cleanup5_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_vga_set_state(ptr noundef %adev, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5385, i32 noundef 0) #6
  %and = and i32 %call, -3
  %masksel = select i1 %state, i32 0, i32 2
  %tmp.0 = or i32 %and, %masksel
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5385, i32 noundef %tmp.0, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_asic_reset(ptr noundef %adev) #0 align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %2 = load i32, ptr @amdgpu_reset_method, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %2, label %do.end.i [
    i32 -1, label %if.end.if.end4.i_crit_edge
    i32 4, label %if.end.do.end_crit_edge
    i32 0, label %if.end.do.end5_crit_edge
  ]

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %2) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.if.end4.i_crit_edge
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %7, label %if.end4.i.do.end5_crit_edge [
    i32 5, label %if.end4.i.sw.epilog.i_crit_edge
    i32 8, label %if.end4.i.sw.epilog.i_crit_edge21
  ]

if.end4.i.sw.epilog.i_crit_edge21:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end4.i.do.end5_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

sw.epilog.i:                                      ; preds = %if.end4.i.sw.epilog.i_crit_edge, %if.end4.i.sw.epilog.i_crit_edge21
  %call.i.i = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #6
  br i1 %call.i.i, label %sw.epilog.i.do.end_crit_edge, label %sw.epilog.i.do.end5_crit_edge

sw.epilog.i.do.end5_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sw.epilog.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.1) #9
  %call2 = tail call i32 @amdgpu_dpm_baco_reset(ptr noundef %adev) #6
  br label %cleanup

do.end5:                                          ; preds = %sw.epilog.i.do.end5_crit_edge, %if.end4.i.do.end5_crit_edge, %if.end.do.end5_crit_edge
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.7) #9
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext true) #6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and.i = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end5.if.end.i_crit_edge, label %if.then.i

do.end5.if.end.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i14 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3394, i32 noundef 0) #6
  %call1.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3395, i32 noundef 0) #6
  %call2.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3409, i32 noundef 0) #6
  %and.i.i = and i32 %call.i.i14, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3394, i32 noundef %and.i.i, i32 noundef 0) #6
  %and5.i.i = and i32 %call1.i.i, -67585
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3395, i32 noundef %and5.i.i, i32 noundef 0) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end5.if.end.i_crit_edge
  %kv_save.sroa.0.0.i = phi i32 [ 0, %do.end5.if.end.i_crit_edge ], [ %call.i.i14, %if.then.i ]
  %kv_save.sroa.6.0.i = phi i32 [ 0, %do.end5.if.end.i_crit_edge ], [ %call1.i.i, %if.then.i ]
  %kv_save.sroa.9.0.i = phi i32 [ 0, %do.end5.if.end.i_crit_edge ], [ %call2.i.i, %if.then.i ]
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_clear_master(ptr noundef %16) #6
  tail call void @amdgpu_device_pci_config_reset(ptr noundef %adev) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #6
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %18 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp28.not.i = icmp eq i32 %19, 0
  br i1 %cmp28.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %if.end4.i15.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %if.end4.i15.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5386, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp1.not.i, label %if.end4.i15, label %if.then2.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_set_master(ptr noundef %21) #6
  %has_hw_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 135
  %22 = ptrtoint ptr %has_hw_reset.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %has_hw_reset.i, align 4
  br label %for.end.i

if.end4.i15:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #6
  %inc.i = add nuw i32 %i.029.i, 1
  %24 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %if.end4.i15.for.body.i_crit_edge, label %if.end4.i15.for.end.i_crit_edge

if.end4.i15.for.end.i_crit_edge:                  ; preds = %if.end4.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end4.i15.for.body.i_crit_edge:                 ; preds = %if.end4.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end4.i15.for.end.i_crit_edge, %if.then2.i, %if.end.i.for.end.i_crit_edge
  %r.0.i = phi i32 [ 0, %if.then2.i ], [ -22, %if.end.i.for.end.i_crit_edge ], [ -22, %if.end4.i15.for.end.i_crit_edge ]
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and6.i = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %for.end.i.cik_asic_pci_config_reset.exit_crit_edge, label %if.then8.i

for.end.i.cik_asic_pci_config_reset.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cik_asic_pci_config_reset.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef 536875263, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef 805310719, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 2162688, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef -1610608385, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 135171, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef -1342172929, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 11008, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef -1073737473, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef -805302017, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 4325376, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef 268439807, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 1180162, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef 1342181631, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 4079158, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef 1610617087, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 3620670, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef 1879052543, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3407, i32 noundef 4068146, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3406, i32 noundef -536866561, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3409, i32 noundef %kv_save.sroa.9.0.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3395, i32 noundef %kv_save.sroa.6.0.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3394, i32 noundef %kv_save.sroa.0.0.i, i32 noundef 0) #6
  br label %cik_asic_pci_config_reset.exit

cik_asic_pci_config_reset.exit:                   ; preds = %if.then8.i, %for.end.i.cik_asic_pci_config_reset.exit_crit_edge
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %cik_asic_pci_config_reset.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ %r.0.i, %cik_asic_pci_config_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_asic_reset_method(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %0 = load i32, ptr @amdgpu_reset_method, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %0, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 4, label %entry.cleanup_crit_edge9
    i32 -1, label %entry.if.end4_crit_edge
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %0) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %5, label %if.end4.cleanup_crit_edge [
    i32 5, label %if.end4.sw.epilog_crit_edge
    i32 8, label %if.end4.sw.epilog_crit_edge10
  ]

if.end4.sw.epilog_crit_edge10:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end4.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge10
  %call.i = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #6
  %spec.select = select i1 %call.i, i32 4, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge9
  %retval.0 = phi i32 [ %0, %entry.cleanup_crit_edge ], [ %0, %entry.cleanup_crit_edge9 ], [ 0, %if.end4.cleanup_crit_edge ], [ %spec.select, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_get_xclk(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %smc_rreg4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %4 = ptrtoint ptr %smc_rreg4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smc_rreg4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef -1071644672) #6
  %and1 = lshr i32 %call, 15
  %and1.lobit = and i32 %and1, 1
  %spec.select = lshr i32 %1, %and1.lobit
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 %5(ptr noundef %adev, i32 noundef -1068498528) #6
  %and6 = and i32 %call5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %div919 = lshr i32 %1, 2
  %spec.select21 = select i1 %tobool7.not, i32 %1, i32 %div919
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select21, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_set_uvd_clocks(ptr noundef %adev, i32 noundef %vclk, i32 noundef %dclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cik_set_uvd_clock(ptr noundef %adev, i32 noundef %vclk, i32 noundef -1068498780, i32 noundef -1068498776)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @cik_set_uvd_clock(ptr noundef %adev, i32 noundef %dclk, i32 noundef -1068498788, i32 noundef -1068498784)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_set_vce_clocks(ptr noundef %adev, i32 noundef %evclk, i32 noundef %ecclk) #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #6
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 0, i32 noundef %ecclk, i1 noundef zeroext false, ptr noundef nonnull %dividers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %while.body.preheader.for.body_crit_edge, %for.cond.preheader
  %i.055 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %while.body.preheader.for.body_crit_edge ]
  %1 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smc_rreg, align 4
  %call1 = call i32 %2(ptr noundef %adev, i32 noundef -1068498768) #6
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.body.preheader, label %if.end8

while.body.preheader:                             ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #6
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %while.body.preheader.cleanup_crit_edge, label %while.body.preheader.for.body_crit_edge

while.body.preheader.for.body_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %13 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc_rreg, align 4
  %call10 = call i32 %14(ptr noundef %adev, i32 noundef -1068498772) #6
  %and11 = and i32 %call10, -384
  %post_divider = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %15 = ptrtoint ptr %post_divider to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %post_divider, align 4
  %or = or i32 %and11, %16
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %17 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smc_wreg, align 8
  call void %18(ptr noundef %adev, i32 noundef -1068498772, i32 noundef %or) #6
  br label %for.body14

for.body14:                                       ; preds = %while.body25.preheader.for.body14_crit_edge, %if.end8
  %i.157 = phi i32 [ 0, %if.end8 ], [ %inc28, %while.body25.preheader.for.body14_crit_edge ]
  %19 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smc_rreg, align 4
  %call16 = call i32 %20(ptr noundef %adev, i32 noundef -1068498768) #6
  %and17 = and i32 %call16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %while.body25.preheader, label %for.end29

while.body25.preheader:                           ; preds = %for.body14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #6
  %inc28 = add nuw nsw i32 %i.157, 1
  %exitcond58.not = icmp eq i32 %inc28, 100
  br i1 %exitcond58.not, label %while.body25.preheader.for.end29.thread_crit_edge, label %while.body25.preheader.for.body14_crit_edge

while.body25.preheader.for.body14_crit_edge:      ; preds = %while.body25.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

while.body25.preheader.for.end29.thread_crit_edge: ; preds = %while.body25.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.thread

for.end29:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.157)
  %cmp30 = icmp eq i32 %i.157, 100
  br i1 %cmp30, label %for.end29.for.end29.thread_crit_edge, label %for.end29.cleanup_crit_edge

for.end29.cleanup_crit_edge:                      ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end29.for.end29.thread_crit_edge:             ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.thread

for.end29.thread:                                 ; preds = %for.end29.for.end29.thread_crit_edge, %while.body25.preheader.for.end29.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end29.thread, %for.end29.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %for.end29.thread ], [ 0, %for.end29.cleanup_crit_edge ], [ -110, %while.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cik_get_config_memsize(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5386, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_flush_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5408, i32 noundef 1, i32 noundef 0) #6
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5408, i32 noundef 0) #6
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %ring, i32 noundef 5408, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_invalidate_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3020, i32 noundef 1, i32 noundef 0) #6
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3020, i32 noundef 0) #6
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %ring, i32 noundef 3020, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cik_need_full_reset(ptr nocapture noundef readnone %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @legacy_doorbell_index_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cik_get_pcie_usage(ptr noundef %adev, ptr nocapture noundef writeonly %count0, ptr nocapture noundef writeonly %count1) #0 align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %2 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_wreg, align 4
  tail call void %3(ptr noundef %adev, i32 noundef 20971649, i32 noundef 26664) #6
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 20971648, i32 noundef 5) #6
  tail call void @msleep(i32 noundef 1000) #6
  %6 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_wreg, align 4
  tail call void %7(ptr noundef %adev, i32 noundef 20971648, i32 noundef 2) #6
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %8 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %9(ptr noundef %adev, i32 noundef 20971649) #6
  %and6 = lshr i32 %call, 16
  %10 = and i32 %and6, 255
  %11 = zext i32 %10 to i64
  %shr8 = lshr i32 %call, 24
  %conv9 = zext i32 %shr8 to i64
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %call11 = tail call i32 %13(ptr noundef %adev, i32 noundef 20971650) #6
  %conv12 = zext i32 %call11 to i64
  %shl = shl nuw nsw i64 %11, 32
  %or13 = or i64 %shl, %conv12
  %14 = ptrtoint ptr %count0 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or13, ptr %count0, align 8
  %15 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_rreg, align 8
  %call15 = tail call i32 %16(ptr noundef %adev, i32 noundef 20971651) #6
  %conv16 = zext i32 %call15 to i64
  %shl17 = shl nuw nsw i64 %conv9, 32
  %or18 = or i64 %shl17, %conv16
  %17 = ptrtoint ptr %count1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or18, ptr %count1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cik_need_reset_on_init(ptr noundef %adev) #0 align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef -2147483644) #6
  %4 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smc_rreg, align 4
  %call2 = tail call i32 %5(ptr noundef %adev, i32 noundef -2147482768) #6
  %and3 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131327, i32 %call2)
  %cmp4 = icmp ugt i32 %call2, 131327
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %or.cond, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cik_get_pcie_replay_count(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 20971534) #6
  %conv = zext i32 %call to i64
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call2 = tail call i32 %3(ptr noundef %adev, i32 noundef 20971535) #6
  %conv3 = zext i32 %call2 to i64
  %add = add nuw nsw i64 %conv3, %conv
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cik_asic_supports_baco(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %1, label %entry.return_crit_edge [
    i32 5, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge2
  ]

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2
  %call = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #6
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %sw.bb ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cik_pre_asic_init(ptr nocapture noundef %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cik_query_video_codecs(ptr nocapture noundef readonly %adev, i1 noundef zeroext %encode, ptr nocapture noundef writeonly %codecs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cik_video_codecs_encode.cik_video_codecs_decode = select i1 %encode, ptr @cik_video_codecs_encode, ptr @cik_video_codecs_decode
  %2 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cik_video_codecs_encode.cik_video_codecs_decode, ptr %codecs, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_read_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_baco_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_pci_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cik_set_uvd_clock(ptr noundef %adev, i32 noundef %clock, i32 noundef %cntl_reg, i32 noundef %status_reg) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #6
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 0, i32 noundef %clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %1 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smc_rreg, align 4
  %call1 = call i32 %2(ptr noundef %adev, i32 noundef %cntl_reg) #6
  %and = and i32 %call1, -384
  %post_divider = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %3 = ptrtoint ptr %post_divider to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %post_divider, align 4
  %or = or i32 %and, %4
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %5 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smc_wreg, align 8
  call void %6(ptr noundef %adev, i32 noundef %cntl_reg, i32 noundef %or) #6
  br label %for.body

for.body:                                         ; preds = %while.body.preheader.for.body_crit_edge, %if.end
  %i.028 = phi i32 [ 0, %if.end ], [ %inc, %while.body.preheader.for.body_crit_edge ]
  %7 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smc_rreg, align 4
  %call3 = call i32 %8(ptr noundef %adev, i32 noundef %status_reg) #6
  %and4 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %while.body.preheader, label %for.end

while.body.preheader:                             ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #6
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %while.body.preheader.for.end.thread_crit_edge, label %while.body.preheader.for.body_crit_edge

while.body.preheader.for.body_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

while.body.preheader.for.end.thread_crit_edge:    ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.028)
  %cmp9 = icmp eq i32 %i.028, 100
  br i1 %cmp9, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %while.body.preheader.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %for.end.thread ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @cik_common_ip_block, !1, !"cik_common_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 2246, i32 45}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 2230, i32 10}
!4 = !{ptr @cik_common_ip_funcs, !5, !"cik_common_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 2229, i32 34}
!6 = !{ptr @cik_asic_funcs, !7, !"cik_asic_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1995, i32 39}
!8 = !{ptr @cik_allowed_read_registers, !9, !"cik_allowed_read_registers", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1043, i32 51}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1436, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cik_asic_reset._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @cik_asic_reset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1439, i32 3}
!20 = !{ptr @cik_asic_reset._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cik_asic_reset._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1399, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cik_asic_reset_method._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @cik_asic_reset_method._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cik_video_codecs_encode, !29, !"cik_video_codecs_encode", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 86, i32 41}
!30 = !{ptr @cik_video_codecs_encode_array, !31, !"cik_video_codecs_encode_array", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 75, i32 45}
!32 = !{ptr @cik_video_codecs_decode, !33, !"cik_video_codecs_decode", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 124, i32 41}
!34 = !{ptr @cik_video_codecs_decode_array, !35, !"cik_video_codecs_decode_array", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 92, i32 45}
!36 = !{ptr @bonaire_mgcg_cgcg_init, !37, !"bonaire_mgcg_cgcg_init", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 301, i32 18}
!38 = !{ptr @bonaire_golden_registers, !39, !"bonaire_golden_registers", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 256, i32 18}
!40 = !{ptr @bonaire_golden_common_registers, !41, !"bonaire_golden_common_registers", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 248, i32 18}
!42 = !{ptr @bonaire_golden_spm_registers, !43, !"bonaire_golden_spm_registers", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 243, i32 18}
!44 = !{ptr @kalindi_mgcg_cgcg_init, !45, !"kalindi_mgcg_cgcg_init", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 567, i32 18}
!46 = !{ptr @kalindi_golden_registers, !47, !"kalindi_golden_registers", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 533, i32 18}
!48 = !{ptr @kalindi_golden_common_registers, !49, !"kalindi_golden_common_registers", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 525, i32 18}
!50 = !{ptr @kalindi_golden_spm_registers, !51, !"kalindi_golden_spm_registers", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 520, i32 18}
!52 = !{ptr @godavari_golden_registers, !53, !"godavari_golden_registers", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 791, i32 18}
!54 = !{ptr @spectre_mgcg_cgcg_init, !55, !"spectre_mgcg_cgcg_init", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 429, i32 18}
!56 = !{ptr @spectre_golden_registers, !57, !"spectre_golden_registers", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 400, i32 18}
!58 = !{ptr @spectre_golden_common_registers, !59, !"spectre_golden_common_registers", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 392, i32 18}
!60 = !{ptr @spectre_golden_spm_registers, !61, !"spectre_golden_spm_registers", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 387, i32 18}
!62 = !{ptr @hawaii_mgcg_cgcg_init, !63, !"hawaii_mgcg_cgcg_init", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 680, i32 18}
!64 = !{ptr @hawaii_golden_registers, !65, !"hawaii_golden_registers", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 640, i32 18}
!66 = !{ptr @hawaii_golden_common_registers, !67, !"hawaii_golden_common_registers", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 631, i32 18}
!68 = !{ptr @hawaii_golden_spm_registers, !69, !"hawaii_golden_spm_registers", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 626, i32 18}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1555, i32 4}
!72 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cik_pcie_gen3_enable._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cik_pcie_gen3_enable._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1558, i32 3}
!77 = !{ptr @cik_pcie_gen3_enable._entry.14, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cik_pcie_gen3_enable._entry_ptr.16, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1561, i32 4}
!81 = !{ptr @cik_pcie_gen3_enable._entry.17, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cik_pcie_gen3_enable._entry_ptr.19, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/cik.c", i32 1564, i32 3}
!85 = !{ptr @cik_pcie_gen3_enable._entry.20, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @cik_pcie_gen3_enable._entry_ptr.22, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i8 0, i8 2}
!97 = !{!"auto-init"}
