; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/soc15.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/soc15.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_virt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc15_allowed_register_entry = type { i32, i32, i32, i32, i8 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc15_reg_golden = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_df_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_smuio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@soc15_common_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str.4, ptr @soc15_common_early_init, ptr @soc15_common_late_init, ptr @soc15_common_sw_init, ptr @soc15_common_sw_fini, ptr null, ptr @soc15_common_hw_init, ptr @soc15_common_hw_fini, ptr null, ptr @soc15_common_suspend, ptr @soc15_common_resume, ptr @soc15_common_is_idle, ptr @soc15_common_wait_for_idle, ptr null, ptr null, ptr @soc15_common_soft_reset, ptr null, ptr @soc15_common_set_clockgating_state, ptr @soc15_common_set_powergating_state, ptr @soc15_common_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@vega10_common_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 0, i32 2, i32 0, i32 0, ptr @soc15_common_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@xgpu_ai_virt_ops = external dso_local constant %struct.amdgpu_virt_ops, align 4
@amdgpu_discovery = external dso_local local_unnamed_addr global i32, align 4
@soc15_reg_base_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014[drm] failed to init reg base from ip discovery table, fallback to legacy init method\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"soc15_reg_base_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/amd/amdgpu/soc15.c\00", [61 x i8] zeroinitializer }, align 32
@soc15_reg_base_init._entry_ptr = internal global ptr @soc15_reg_base_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported asic type: %d!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"soc15_common\00", [19 x i8] zeroinitializer }, align 32
@soc15_asic_funcs = internal constant { %struct.amdgpu_asic_funcs, [36 x i8] } { %struct.amdgpu_asic_funcs { ptr @soc15_read_disabled_bios, ptr @soc15_read_bios_from_rom, ptr @soc15_read_register, ptr @soc15_vga_set_state, ptr @soc15_asic_reset, ptr @soc15_asic_reset_method, ptr @soc15_get_xclk, ptr @soc15_set_uvd_clocks, ptr @soc15_set_vce_clocks, ptr null, ptr null, ptr @soc15_get_config_memsize, ptr null, ptr null, ptr @soc15_need_full_reset, ptr @vega10_doorbell_index_init, ptr @soc15_get_pcie_usage, ptr @soc15_need_reset_on_init, ptr @soc15_get_pcie_replay_count, ptr @soc15_supports_baco, ptr @soc15_pre_asic_init, ptr null, ptr @soc15_query_video_codecs }, [36 x i8] zeroinitializer }, align 32
@vega20_asic_funcs = internal constant { %struct.amdgpu_asic_funcs, [36 x i8] } { %struct.amdgpu_asic_funcs { ptr @soc15_read_disabled_bios, ptr @soc15_read_bios_from_rom, ptr @soc15_read_register, ptr @soc15_vga_set_state, ptr @soc15_asic_reset, ptr @soc15_asic_reset_method, ptr @soc15_get_xclk, ptr @soc15_set_uvd_clocks, ptr @soc15_set_vce_clocks, ptr null, ptr null, ptr @soc15_get_config_memsize, ptr null, ptr null, ptr @soc15_need_full_reset, ptr @vega20_doorbell_index_init, ptr @vega20_get_pcie_usage, ptr @soc15_need_reset_on_init, ptr @soc15_get_pcie_replay_count, ptr @soc15_supports_baco, ptr @soc15_pre_asic_init, ptr null, ptr @soc15_query_video_codecs }, [36 x i8] zeroinitializer }, align 32
@soc15_allowed_read_registers = internal constant { [20 x %struct.soc15_allowed_register_entry], [112 x i8] } { [20 x %struct.soc15_allowed_register_entry] [%struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 4, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 2, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 5, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 6, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 14, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 15, i8 0 }, %struct.soc15_allowed_register_entry { i32 3, i32 0, i32 0, i32 37, i8 0 }, %struct.soc15_allowed_register_entry { i32 4, i32 0, i32 0, i32 37, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 416, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 413, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 414, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 412, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 136, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 137, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 135, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 133, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 134, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 132, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 1598, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 1549, i8 0 }], [112 x i8] zeroinitializer }, align 32
@soc15_asic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 628, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu: PCI reset\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"soc15_asic_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@soc15_asic_reset._entry_ptr = internal global ptr @soc15_asic_reset._entry, section ".printk_index", align 4
@soc15_asic_reset._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 631, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: BACO reset\0A\00", [44 x i8] zeroinitializer }, align 32
@soc15_asic_reset._entry_ptr.11 = internal global ptr @soc15_asic_reset._entry.9, section ".printk_index", align 4
@soc15_asic_reset._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 634, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu: MODE2 reset\0A\00", [43 x i8] zeroinitializer }, align 32
@soc15_asic_reset._entry_ptr.14 = internal global ptr @soc15_asic_reset._entry.12, section ".printk_index", align 4
@soc15_asic_reset._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 637, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu: MODE1 reset\0A\00", [43 x i8] zeroinitializer }, align 32
@soc15_asic_reset._entry_ptr.17 = internal global ptr @soc15_asic_reset._entry.15, section ".printk_index", align 4
@amdgpu_reset_method = external dso_local local_unnamed_addr global i32, align 4
@soc15_asic_reset_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 577, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"amdgpu: Specified reset method:%d isn't supported, using AUTO instead.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"soc15_asic_reset_method\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@soc15_asic_reset_method._entry_ptr = internal global ptr @soc15_asic_reset_method._entry, section ".printk_index", align 4
@vega_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 2, ptr @vega_video_codecs_encode_array }, [24 x i8] zeroinitializer }, align 32
@vega_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 6, ptr @vega_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@rv_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 7, ptr @rv_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@rn_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 7, ptr @rn_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@vega_video_codecs_encode_array = internal constant { [2 x %struct.amdgpu_video_codec_info], [56 x i8] } { [2 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 2304, i32 9437184, i32 0 }, %struct.amdgpu_video_codec_info { i32 4, i32 4096, i32 2304, i32 9437184, i32 0 }], [56 x i8] zeroinitializer }, align 32
@vega_video_codecs_decode_array = internal constant { [6 x %struct.amdgpu_video_codec_info], [40 x i8] } { [6 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4906, i32 20094976, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4906, i32 20094976, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4906, i32 20094976, i32 4 }, %struct.amdgpu_video_codec_info { i32 4, i32 4096, i32 4096, i32 16777216, i32 186 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }], [40 x i8] zeroinitializer }, align 32
@rv_video_codecs_decode_array = internal constant { [7 x %struct.amdgpu_video_codec_info], [52 x i8] } { [7 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4906, i32 20094976, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4906, i32 20094976, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4906, i32 20094976, i32 4 }, %struct.amdgpu_video_codec_info { i32 4, i32 4096, i32 4096, i32 16777216, i32 186 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }, %struct.amdgpu_video_codec_info { i32 6, i32 4096, i32 4096, i32 16777216, i32 0 }], [52 x i8] zeroinitializer }, align 32
@rn_video_codecs_decode_array = internal constant { [7 x %struct.amdgpu_video_codec_info], [52 x i8] } { [7 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4906, i32 20094976, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4906, i32 20094976, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4906, i32 20094976, i32 4 }, %struct.amdgpu_video_codec_info { i32 4, i32 8192, i32 4352, i32 35651584, i32 186 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }, %struct.amdgpu_video_codec_info { i32 6, i32 8192, i32 4352, i32 35651584, i32 0 }], [52 x i8] zeroinitializer }, align 32
@amdgpu_aspm = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 589825, i64 590080, i64 590337, i64 590338, i64 590592, i64 590848, i64 590849, i64 590850]
@__sancov_gen_cov_switch_values.22 = internal global [10 x i64] [i64 8, i64 32, i64 132352, i64 393472, i64 393728, i64 458752, i64 458753, i64 459776, i64 459777, i64 459780]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.25 = internal global [9 x i64] [i64 7, i64 32, i64 589824, i64 655360, i64 655361, i64 720898, i64 786432, i64 786433, i64 851970]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 655360, i64 655361, i64 786432, i64 786433]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 589824, i64 720898]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 262144, i64 262400]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 65536, i64 65537, i64 131584, i64 132352, i64 132608]
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"soc15_common_ip_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1498, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"vega10_common_ip_block\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 721, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 753, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 768, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1499, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"soc15_asic_funcs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 925, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"vega20_asic_funcs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 947, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"soc15_allowed_read_registers\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 411, i32 44 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 628, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 631, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 634, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 637, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 576, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"vega_video_codecs_encode\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 97, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [25 x i8] c"vega_video_codecs_decode\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 114, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"rv_video_codecs_decode\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 132, i32 41 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"rn_video_codecs_decode\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 150, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant [31 x i8] c"vega_video_codecs_encode_array\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 91, i32 45 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"vega_video_codecs_decode_array\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 104, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant [29 x i8] c"rv_video_codecs_decode_array\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 121, i32 45 }
@___asan_gen_.129 = private unnamed_addr constant [29 x i8] c"rn_video_codecs_decode_array\00", align 1
@___asan_gen_.130 = private constant [38 x i8] c"../drivers/gpu/drm/amd/amdgpu/soc15.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 139, i32 45 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @soc15_asic_reset._entry, ptr @soc15_asic_reset._entry.12, ptr @soc15_asic_reset._entry.15, ptr @soc15_asic_reset._entry.9, ptr @soc15_asic_reset._entry_ptr, ptr @soc15_asic_reset._entry_ptr.11, ptr @soc15_asic_reset._entry_ptr.14, ptr @soc15_asic_reset._entry_ptr.17, ptr @soc15_asic_reset_method._entry, ptr @soc15_asic_reset_method._entry_ptr, ptr @soc15_reg_base_init._entry, ptr @soc15_reg_base_init._entry_ptr, ptr @soc15_common_ip_funcs, ptr @vega10_common_ip_block, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @soc15_asic_funcs, ptr @vega20_asic_funcs, ptr @soc15_allowed_read_registers, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @vega_video_codecs_encode, ptr @vega_video_codecs_decode, ptr @rv_video_codecs_decode, ptr @rn_video_codecs_decode, ptr @vega_video_codecs_encode_array, ptr @vega_video_codecs_decode_array, ptr @rv_video_codecs_decode_array, ptr @rn_video_codecs_decode_array], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_common_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_common_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_reg_base_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_asic_funcs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_asic_funcs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_allowed_read_registers to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_asic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_asic_reset._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_asic_reset._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_asic_reset._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_asic_reset_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega_video_codecs_encode_array to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega_video_codecs_decode_array to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv_video_codecs_decode_array to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn_video_codecs_decode_array to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @soc15_grbm_select(ptr noundef %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %queue, i32 noundef %vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %pipe, 3
  %shl3 = shl i32 %me, 2
  %and4 = and i32 %shl3, 12
  %or5 = or i32 %and1, %and4
  %shl7 = shl i32 %vmid, 4
  %and8 = and i32 %shl7, 240
  %shl11 = shl i32 %queue, 8
  %and12 = and i32 %shl11, 1792
  %or9 = or i32 %or5, %and12
  %or13 = or i32 %or9, %and8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and14 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true16

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true16:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %land.lhs.true16.cond.false_crit_edge, label %cond.true

land.lhs.true16.cond.false_crit_edge:             ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 34
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %or13, i32 noundef 4, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true16.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx28 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx28, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add31 = add i32 %13, 34
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add31, i32 noundef %or13, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @soc15_program_register_sequence(ptr noundef %adev, ptr nocapture noundef readonly %regs, i32 noundef %array_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %array_size)
  %cmp167.not = icmp eq i32 %array_size, 0
  br i1 %cmp167.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx31 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0168 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.soc15_reg_golden, ptr %regs, i32 %i.0168
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %instance = getelementptr %struct.soc15_reg_golden, ptr %regs, i32 %i.0168, i32 1
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %instance, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %1, i32 %3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %segment = getelementptr %struct.soc15_reg_golden, ptr %regs, i32 %i.0168, i32 2
  %6 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %segment, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %reg5 = getelementptr %struct.soc15_reg_golden, ptr %regs, i32 %i.0168, i32 3
  %10 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg5, align 4
  %add = add i32 %11, %9
  %and_mask = getelementptr %struct.soc15_reg_golden, ptr %regs, i32 %i.0168, i32 4
  %12 = ptrtoint ptr %and_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %and_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp6 = icmp eq i32 %13, -1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or_mask = getelementptr %struct.soc15_reg_golden, ptr %regs, i32 %i.0168, i32 5
  %14 = ptrtoint ptr %or_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %or_mask, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp8 = icmp eq i32 %1, 1
  br i1 %cmp8, label %cond.true, label %cond.false21

cond.true:                                        ; preds = %if.else
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.true.cond.false_crit_edge, label %land.lhs.true

cond.true.cond.false_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true10

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %land.lhs.true10.cond.false_crit_edge, label %cond.true15

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true15:                                      ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %21(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end23

cond.false:                                       ; preds = %land.lhs.true10.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %cond.true.cond.false_crit_edge
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #6
  br label %cond.end23

cond.false21:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #6
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.false, %cond.true15
  %cond24 = phi i32 [ %call22, %cond.false21 ], [ %call, %cond.true15 ], [ %call20, %cond.false ]
  %22 = ptrtoint ptr %and_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %and_mask, align 4
  %neg = xor i32 %23, -1
  %and26 = and i32 %cond24, %neg
  %or_mask27 = getelementptr %struct.soc15_reg_golden, ptr %regs, i32 %i.0168, i32 5
  %24 = ptrtoint ptr %or_mask27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %or_mask27, align 4
  %and29 = and i32 %25, %23
  %or = or i32 %and29, %and26
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %tmp.0 = phi i32 [ %15, %if.then ], [ %or, %cond.end23 ]
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx31, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add34 = add i32 %29, 719
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add34)
  %cmp35 = icmp eq i32 %add, %add34
  %add40 = add i32 %29, 764
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add40)
  %cmp41 = icmp eq i32 %add, %add40
  %or.cond = or i1 %cmp35, %cmp41
  %add47 = add i32 %29, 765
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add47)
  %cmp48 = icmp eq i32 %add, %add47
  %or.cond165 = select i1 %or.cond, i1 true, i1 %cmp48
  %add54 = add i32 %29, 781
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add54)
  %cmp55 = icmp eq i32 %add, %add54
  %or.cond166 = select i1 %or.cond165, i1 true, i1 %cmp55
  br i1 %or.cond166, label %if.then56, label %if.else78

if.then56:                                        ; preds = %if.end
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt, align 8
  %and59 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then56.cond.false76_crit_edge, label %land.lhs.true61

if.then56.cond.false76_crit_edge:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false76

land.lhs.true61:                                  ; preds = %if.then56
  %32 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs, align 4
  %tobool65.not = icmp eq ptr %33, null
  br i1 %tobool65.not, label %land.lhs.true61.cond.false76_crit_edge, label %land.lhs.true66

land.lhs.true61.cond.false76_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false76

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg, align 4
  %tobool70.not = icmp eq ptr %35, null
  br i1 %tobool70.not, label %land.lhs.true66.cond.false76_crit_edge, label %cond.true71

land.lhs.true66.cond.false76_crit_edge:           ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false76

cond.true71:                                      ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %35(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 4, i32 noundef 1) #6
  br label %for.inc

cond.false76:                                     ; preds = %land.lhs.true66.cond.false76_crit_edge, %land.lhs.true61.cond.false76_crit_edge, %if.then56.cond.false76_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #6
  br label %for.inc

if.else78:                                        ; preds = %if.end
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp80 = icmp eq i32 %37, 1
  br i1 %cmp80, label %cond.true81, label %cond.false104

cond.true81:                                      ; preds = %if.else78
  %38 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt, align 8
  %and84 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %cond.true81.cond.false102_crit_edge, label %land.lhs.true86

cond.true81.cond.false102_crit_edge:              ; preds = %cond.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false102

land.lhs.true86:                                  ; preds = %cond.true81
  %40 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs, align 4
  %tobool90.not = icmp eq ptr %41, null
  br i1 %tobool90.not, label %land.lhs.true86.cond.false102_crit_edge, label %land.lhs.true91

land.lhs.true86.cond.false102_crit_edge:          ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false102

land.lhs.true91:                                  ; preds = %land.lhs.true86
  %sriov_wreg95 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sriov_wreg95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_wreg95, align 4
  %tobool96.not = icmp eq ptr %43, null
  br i1 %tobool96.not, label %land.lhs.true91.cond.false102_crit_edge, label %cond.true97

land.lhs.true91.cond.false102_crit_edge:          ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false102

cond.true97:                                      ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %43(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 1) #6
  br label %for.inc

cond.false102:                                    ; preds = %land.lhs.true91.cond.false102_crit_edge, %land.lhs.true86.cond.false102_crit_edge, %cond.true81.cond.false102_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #6
  br label %for.inc

cond.false104:                                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %cond.false104, %cond.false102, %cond.true97, %cond.false76, %cond.true71
  %inc = add nuw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc, %array_size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @soc15_set_virt_ops(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgpu_ai_virt_ops, ptr %ops, align 8
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %1 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_type.i, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %sw.default.i [
    i32 19, label %entry.sw.bb.i_crit_edge
    i32 20, label %entry.sw.bb.i_crit_edge2
    i32 22, label %entry.sw.bb.i_crit_edge3
    i32 24, label %sw.bb1.i
    i32 21, label %sw.bb7.i
    i32 23, label %sw.bb9.i
    i32 25, label %sw.bb11.i
  ]

entry.sw.bb.i_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge2, %entry.sw.bb.i_crit_edge3
  %call.i = tail call i32 @vega10_reg_base_init(ptr noundef %adev) #6
  br label %soc15_reg_base_init.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_discovery to i32))
  %4 = load i32, ptr @amdgpu_discovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %sw.bb1.i.if.end5.i_crit_edge, label %if.then.i

sw.bb1.i.if.end5.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %sw.bb1.i
  %call2.i = tail call i32 @amdgpu_discovery_reg_base_init(ptr noundef %adev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i.soc15_reg_base_init.exit_crit_edge, label %do.end.i

if.then.i.soc15_reg_base_init.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_reg_base_init.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %sw.bb1.i.if.end5.i_crit_edge
  %call6.i = tail call i32 @vega10_reg_base_init(ptr noundef %adev) #6
  br label %soc15_reg_base_init.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @vega20_reg_base_init(ptr noundef %adev) #6
  br label %soc15_reg_base_init.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call i32 @arct_reg_base_init(ptr noundef %adev) #6
  br label %soc15_reg_base_init.exit

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 @aldebaran_reg_base_init(ptr noundef %adev) #6
  br label %soc15_reg_base_init.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %2) #6
  br label %soc15_reg_base_init.exit

soc15_reg_base_init.exit:                         ; preds = %sw.default.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %if.end5.i, %if.then.i.soc15_reg_base_init.exit_crit_edge, %sw.bb.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega10_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_discovery_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega20_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arct_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aldebaran_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio_remap = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 34
  %2 = ptrtoint ptr %rmmio_remap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 520192, ptr %rmmio_remap, align 8
  %rmmio_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 30
  %3 = ptrtoint ptr %rmmio_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rmmio_base, align 8
  %add = add i32 %4, 520192
  %bus_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 34, i32 1
  %5 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %bus_addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %6 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %smc_rreg, align 4
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %7 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %smc_wreg, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %8 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @soc15_pcie_rreg, ptr %pcie_rreg, align 8
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %9 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @soc15_pcie_wreg, ptr %pcie_wreg, align 4
  %pcie_rreg64 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 43
  %10 = ptrtoint ptr %pcie_rreg64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @soc15_pcie_rreg64, ptr %pcie_rreg64, align 8
  %pcie_wreg64 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 44
  %11 = ptrtoint ptr %pcie_wreg64 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @soc15_pcie_wreg64, ptr %pcie_wreg64, align 4
  %uvd_ctx_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 46
  %12 = ptrtoint ptr %uvd_ctx_rreg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @soc15_uvd_ctx_rreg, ptr %uvd_ctx_rreg, align 4
  %uvd_ctx_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %13 = ptrtoint ptr %uvd_ctx_wreg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @soc15_uvd_ctx_wreg, ptr %uvd_ctx_wreg, align 8
  %didt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 49
  %14 = ptrtoint ptr %didt_rreg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @soc15_didt_rreg, ptr %didt_rreg, align 8
  %didt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 50
  %15 = ptrtoint ptr %didt_wreg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @soc15_didt_wreg, ptr %didt_wreg, align 4
  %gc_cac_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 52
  %16 = ptrtoint ptr %gc_cac_rreg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @soc15_gc_cac_rreg, ptr %gc_cac_rreg, align 4
  %gc_cac_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 53
  %17 = ptrtoint ptr %gc_cac_wreg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @soc15_gc_cac_wreg, ptr %gc_cac_wreg, align 8
  %se_cac_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 55
  %18 = ptrtoint ptr %se_cac_rreg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @soc15_se_cac_rreg, ptr %se_cac_rreg, align 8
  %se_cac_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 56
  %19 = ptrtoint ptr %se_cac_wreg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @soc15_se_cac_wreg, ptr %se_cac_wreg, align 4
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %20 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i, align 8
  %get_rev_id.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %get_rev_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_rev_id.i, align 4
  %call.i = tail call i32 %23(ptr noundef %handle) #6
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 7
  %24 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i, ptr %rev_id, align 8
  %external_rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 8
  %25 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 255, ptr %external_rev_id, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %27, label %if.end.cleanup_crit_edge [
    i32 589825, label %sw.bb
    i32 590337, label %sw.bb4
    i32 590848, label %sw.bb11
    i32 590080, label %if.end.sw.bb18_crit_edge
    i32 590338, label %if.end.sw.bb18_crit_edge183
    i32 590849, label %sw.bb69
    i32 590592, label %sw.bb76
    i32 590850, label %sw.bb92
  ]

if.end.sw.bb18_crit_edge183:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

if.end.sw.bb18_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %29 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @soc15_asic_funcs, ptr %asic_funcs, align 4
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %30 = ptrtoint ptr %cg_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16687055, ptr %cg_flags, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %31 = ptrtoint ptr %pg_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %pg_flags, align 4
  %32 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %external_rev_id, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %asic_funcs5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %33 = ptrtoint ptr %asic_funcs5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @soc15_asic_funcs, ptr %asic_funcs5, align 4
  %cg_flags6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %34 = ptrtoint ptr %cg_flags6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3931983, ptr %cg_flags6, align 8
  %pg_flags7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %35 = ptrtoint ptr %pg_flags7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %pg_flags7, align 4
  %add9 = add i32 %call.i, 20
  %36 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add9, ptr %external_rev_id, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %asic_funcs12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %37 = ptrtoint ptr %asic_funcs12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @vega20_asic_funcs, ptr %asic_funcs12, align 4
  %cg_flags13 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %38 = ptrtoint ptr %cg_flags13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3931983, ptr %cg_flags13, align 8
  %pg_flags14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %39 = ptrtoint ptr %pg_flags14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pg_flags14, align 4
  %add16 = add i32 %call.i, 40
  %40 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add16, ptr %external_rev_id, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end.sw.bb18_crit_edge, %if.end.sw.bb18_crit_edge183
  %asic_funcs19 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %41 = ptrtoint ptr %asic_funcs19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @soc15_asic_funcs, ptr %asic_funcs19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp = icmp ugt i32 %call.i, 7
  br i1 %cmp, label %if.then21, label %sw.bb18.if.end22_crit_edge

sw.bb18.if.end22_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %42 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %apu_flags, align 4
  %or = or i32 %43, 2
  store i32 %or, ptr %apu_flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %sw.bb18.if.end22_crit_edge
  %apu_flags23 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %44 = ptrtoint ptr %apu_flags23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %apu_flags23, align 4
  %and24 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then54

if.else:                                          ; preds = %if.end22
  %and31 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else37, label %if.then61

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp39 = icmp eq i32 %call.i, 1
  %add46 = add i32 %call.i, 1
  %add46.sink = select i1 %cmp39, i32 33, i32 %add46
  %46 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add46.sink, ptr %external_rev_id, align 4
  %cg_flags65 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %47 = ptrtoint ptr %cg_flags65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 23961551, ptr %cg_flags65, align 8
  %pg_flags66 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %48 = ptrtoint ptr %pg_flags66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16640, ptr %pg_flags66, align 4
  br label %sw.epilog

if.then54:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %add28 = add i32 %call.i, 121
  %49 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add28, ptr %external_rev_id, align 4
  %cg_flags55 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %50 = ptrtoint ptr %cg_flags55 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 19963727, ptr %cg_flags55, align 8
  %pg_flags56 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %51 = ptrtoint ptr %pg_flags56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16640, ptr %pg_flags56, align 4
  br label %sw.epilog

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add35 = add i32 %call.i, 65
  %52 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add35, ptr %external_rev_id, align 4
  %cg_flags62 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %53 = ptrtoint ptr %cg_flags62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 18915151, ptr %cg_flags62, align 8
  %pg_flags63 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %54 = ptrtoint ptr %pg_flags63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16640, ptr %pg_flags63, align 4
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %asic_funcs70 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %55 = ptrtoint ptr %asic_funcs70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @vega20_asic_funcs, ptr %asic_funcs70, align 4
  %cg_flags71 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %56 = ptrtoint ptr %cg_flags71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1224838991, ptr %cg_flags71, align 8
  %pg_flags72 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %57 = ptrtoint ptr %pg_flags72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 49152, ptr %pg_flags72, align 4
  %add74 = add i32 %call.i, 50
  %58 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add74, ptr %external_rev_id, align 4
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %asic_funcs77 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %59 = ptrtoint ptr %asic_funcs77 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @soc15_asic_funcs, ptr %asic_funcs77, align 4
  %apu_flags78 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %60 = ptrtoint ptr %apu_flags78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %apu_flags78, align 4
  %and79 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %storemerge.v = select i1 %tobool80.not, i32 161, i32 145
  %storemerge = add i32 %storemerge.v, %call.i
  %62 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %storemerge, ptr %external_rev_id, align 4
  %cg_flags90 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %63 = ptrtoint ptr %cg_flags90 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2041618255, ptr %cg_flags90, align 8
  %pg_flags91 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %64 = ptrtoint ptr %pg_flags91 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 180480, ptr %pg_flags91, align 4
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %asic_funcs93 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %65 = ptrtoint ptr %asic_funcs93 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @vega20_asic_funcs, ptr %asic_funcs93, align 4
  %cg_flags94 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %66 = ptrtoint ptr %cg_flags94 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1224772675, ptr %cg_flags94, align 8
  %pg_flags95 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %67 = ptrtoint ptr %pg_flags95 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 32768, ptr %pg_flags95, align 4
  %add97 = add i32 %call.i, 60
  %68 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add97, ptr %external_rev_id, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb92, %sw.bb76, %sw.bb69, %if.then61, %if.then54, %if.else37, %sw.bb11, %sw.bb4, %sw.bb
  %69 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt, align 8
  %and101 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %sw.epilog.cleanup_crit_edge, label %if.then103

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_virt_init_setting(ptr noundef %handle) #6
  tail call void @xgpu_ai_mailbox_set_irq_funcs(ptr noundef %handle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then103 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_late_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @xgpu_ai_mailbox_get_irq(ptr noundef %handle) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 5
  %2 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras_funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %ras_late_init = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ras_late_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras_late_init, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end10_crit_edge, label %if.then5

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 %5(ptr noundef %handle) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %r.0 = phi i32 [ %call9, %if.then5 ], [ 0, %land.lhs.true.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @xgpu_ai_mailbox_add_irq_id(ptr noundef %handle) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 120, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %handle) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 5
  %0 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras_funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ras_fini = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ras_fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras_fini, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %handle) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 120, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %land.lhs.true8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true8:                                   ; preds = %if.end
  %sw_fini = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sw_fini to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_fini, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true8.if.end16_crit_edge, label %if.then12

land.lhs.true8.if.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %handle) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true8.if.end16_crit_edge, %if.end.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_aspm to i32))
  %0 = load i32, ptr @amdgpu_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.soc15_program_aspm.exit_crit_edge, label %if.end.i

entry.soc15_program_aspm.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_program_aspm.exit

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.soc15_program_aspm.exit_crit_edge

if.end.i.soc15_program_aspm.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_program_aspm.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %3 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs.i, align 8
  %program_aspm.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %program_aspm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %program_aspm.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.soc15_program_aspm.exit_crit_edge, label %if.then3.i

land.lhs.true.i.soc15_program_aspm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_program_aspm.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6(ptr noundef %handle) #6
  br label %soc15_program_aspm.exit

soc15_program_aspm.exit:                          ; preds = %if.then3.i, %land.lhs.true.i.soc15_program_aspm.exit_crit_edge, %if.end.i.soc15_program_aspm.exit_crit_edge, %entry.soc15_program_aspm.exit_crit_edge
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %7 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs, align 8
  %init_registers = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %init_registers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_registers, align 4
  tail call void %10(ptr noundef %handle) #6
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs, align 8
  %remap_hdp_registers = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %remap_hdp_registers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_hdp_registers, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %soc15_program_aspm.exit.if.end_crit_edge, label %land.lhs.true

soc15_program_aspm.exit.if.end_crit_edge:         ; preds = %soc15_program_aspm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %soc15_program_aspm.exit
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %14(ptr noundef %handle) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %soc15_program_aspm.exit.if.end_crit_edge
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 8
  %enable_doorbell_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %enable_doorbell_aperture.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enable_doorbell_aperture.i, align 4
  tail call void %20(ptr noundef %handle, i1 noundef zeroext true) #6
  %21 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs, align 8
  %enable_doorbell_selfring_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %enable_doorbell_selfring_aperture.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enable_doorbell_selfring_aperture.i, align 4
  tail call void %24(ptr noundef %handle, i1 noundef zeroext true) #6
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %25 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt.i, align 8
  %and.i17 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %for.cond.preheader.i, label %if.end.soc15_doorbell_range_init.exit_crit_edge

if.end.soc15_doorbell_range_init.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_doorbell_range_init.exit

for.cond.preheader.i:                             ; preds = %if.end
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %27 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26.i = icmp sgt i32 %28, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %sdma_doorbell_range5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs, align 8
  %sdma_doorbell_range.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %sdma_doorbell_range.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdma_doorbell_range.i, align 4
  %use_doorbell.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.027.i, i32 3, i32 24
  %33 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_doorbell.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool3.i = icmp ne i8 %34, 0
  %doorbell_index.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.027.i, i32 3, i32 23
  %35 = ptrtoint ptr %doorbell_index.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %doorbell_index.i, align 8
  %37 = ptrtoint ptr %sdma_doorbell_range5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sdma_doorbell_range5.i, align 4
  tail call void %32(ptr noundef %handle, i32 noundef %i.027.i, i1 noundef zeroext %tobool3.i, i32 noundef %36, i32 noundef %38) #6
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %39 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %40
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %41 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs, align 8
  %ih_doorbell_range.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %ih_doorbell_range.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ih_doorbell_range.i, align 4
  %use_doorbell8.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 3
  %45 = ptrtoint ptr %use_doorbell8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %use_doorbell8.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool9.i = icmp ne i8 %46, 0
  %doorbell_index12.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 2
  %47 = ptrtoint ptr %doorbell_index12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %doorbell_index12.i, align 8
  tail call void %44(ptr noundef %handle, i1 noundef zeroext %tobool9.i, i32 noundef %48) #6
  br label %soc15_doorbell_range_init.exit

soc15_doorbell_range_init.exit:                   ; preds = %for.end.i, %if.end.soc15_doorbell_range_init.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i, align 8
  %enable_doorbell_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable_doorbell_aperture.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_doorbell_aperture.i, align 4
  tail call void %3(ptr noundef %handle, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 8
  %enable_doorbell_selfring_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %enable_doorbell_selfring_aperture.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_doorbell_selfring_aperture.i, align 4
  tail call void %7(ptr noundef %handle, i1 noundef zeroext false) #6
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xgpu_ai_mailbox_put_irq(ptr noundef %handle) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 3
  %10 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ras_if, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end27_crit_edge, label %land.lhs.true

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %13)
  %cmp.i = icmp ugt i32 %13, 14
  br i1 %cmp.i, label %land.lhs.true.if.end27_crit_edge, label %if.end.i

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end.i:                                         ; preds = %land.lhs.true
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 1
  %14 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.if.end27_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 167
  %16 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ras_enabled.i, align 8
  %18 = shl nuw nsw i32 1, %13
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %amdgpu_ras_is_supported.exit.if.end27_crit_edge, label %if.then5

amdgpu_ras_is_supported.exit.if.end27_crit_edge:  ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then5:                                         ; preds = %amdgpu_ras_is_supported.exit
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 5
  %20 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ras_funcs, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %if.then5.if.end27_crit_edge, label %land.lhs.true8

if.then5.if.end27_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true8:                                   ; preds = %if.then5
  %init_ras_controller_interrupt = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %init_ras_controller_interrupt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_ras_controller_interrupt, align 4
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %land.lhs.true8.if.end15_crit_edge, label %if.then12

land.lhs.true8.if.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  %ras_controller_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 1
  %call14 = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ras_controller_irq, i32 noundef 0) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true8.if.end15_crit_edge
  %24 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %ras_funcs, align 4
  %tobool18.not = icmp eq ptr %.pr, null
  br i1 %tobool18.not, label %if.end15.if.end27_crit_edge, label %land.lhs.true19

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true19:                                  ; preds = %if.end15
  %init_ras_err_event_athub_interrupt = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %.pr, i32 0, i32 3
  %25 = ptrtoint ptr %init_ras_err_event_athub_interrupt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_ras_err_event_athub_interrupt, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %land.lhs.true19.if.end27_crit_edge, label %if.then23

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  %ras_err_event_athub_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 2
  %call25 = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ras_err_event_athub_irq, i32 noundef 0) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true19.if.end27_crit_edge, %if.end15.if.end27_crit_edge, %if.then5.if.end27_crit_edge, %amdgpu_ras_is_supported.exit.if.end27_crit_edge, %if.end.i.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @soc15_common_hw_fini(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @soc15_common_hw_init(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @soc15_common_is_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc15_common_wait_for_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc15_common_soft_reset(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_common_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 393472, label %if.end.sw.bb_crit_edge
    i32 393728, label %if.end.sw.bb_crit_edge119
    i32 459776, label %if.end.sw.bb_crit_edge120
    i32 458752, label %if.end.sw.bb14_crit_edge
    i32 458753, label %if.end.sw.bb14_crit_edge121
    i32 132352, label %if.end.sw.bb14_crit_edge122
    i32 459777, label %if.end.sw.bb29_crit_edge
    i32 459780, label %if.end.sw.bb29_crit_edge123
  ]

if.end.sw.bb29_crit_edge123:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29

if.end.sw.bb29_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29

if.end.sw.bb14_crit_edge122:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end.sw.bb14_crit_edge121:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end.sw.bb_crit_edge120:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge119:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge119, %if.end.sw.bb_crit_edge120
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 8
  %update_medium_grain_clock_gating = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %update_medium_grain_clock_gating to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %update_medium_grain_clock_gating, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  tail call void %8(ptr noundef %handle, i1 noundef zeroext %cmp) #6
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 8
  %update_medium_grain_light_sleep = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %update_medium_grain_light_sleep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %update_medium_grain_light_sleep, align 4
  tail call void %12(ptr noundef %handle, i1 noundef zeroext %cmp) #6
  %funcs5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %13 = ptrtoint ptr %funcs5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs5, align 4
  %update_clock_gating = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %update_clock_gating to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update_clock_gating, align 4
  tail call void %16(ptr noundef %handle, i1 noundef zeroext %cmp) #6
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add.i = add i32 %20, 441
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #6
  br i1 %cmp, label %land.lhs.true.i, label %sw.bb.if.else.i_crit_edge

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %21 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %22, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i = and i32 %call.i, 16777215
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  %or.i = or i32 %call.i, -16777216
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %and4.i, %if.then.i ], [ %or.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %data.0.i)
  %cmp.not.i = icmp eq i32 %call.i, %data.0.i
  br i1 %cmp.not.i, label %if.end.i.soc15_update_drm_clock_gating.exit_crit_edge, label %if.then5.i

if.end.i.soc15_update_drm_clock_gating.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_update_drm_clock_gating.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add10.i = add i32 %26, 441
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i, i32 noundef %data.0.i, i32 noundef 0) #6
  br label %soc15_update_drm_clock_gating.exit

soc15_update_drm_clock_gating.exit:               ; preds = %if.then5.i, %if.end.i.soc15_update_drm_clock_gating.exit_crit_edge
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add.i70 = add i32 %30, 442
  %call.i71 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i70, i32 noundef 0) #6
  br i1 %cmp, label %land.lhs.true.i75, label %soc15_update_drm_clock_gating.exit.if.else.i79_crit_edge

soc15_update_drm_clock_gating.exit.if.else.i79_crit_edge: ; preds = %soc15_update_drm_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i79

land.lhs.true.i75:                                ; preds = %soc15_update_drm_clock_gating.exit
  %cg_flags.i72 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %31 = ptrtoint ptr %cg_flags.i72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cg_flags.i72, align 8
  %and.i73 = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool3.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool3.not.i74, label %land.lhs.true.i75.if.else.i79_crit_edge, label %if.then.i77

land.lhs.true.i75.if.else.i79_crit_edge:          ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i79

if.then.i77:                                      ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #8
  %or.i76 = or i32 %call.i71, 1
  br label %if.end.i82

if.else.i79:                                      ; preds = %land.lhs.true.i75.if.else.i79_crit_edge, %soc15_update_drm_clock_gating.exit.if.else.i79_crit_edge
  %and4.i78 = and i32 %call.i71, -2
  br label %if.end.i82

if.end.i82:                                       ; preds = %if.else.i79, %if.then.i77
  %data.0.i80 = phi i32 [ %or.i76, %if.then.i77 ], [ %and4.i78, %if.else.i79 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i71, i32 %data.0.i80)
  %cmp.not.i81 = icmp eq i32 %call.i71, %data.0.i80
  br i1 %cmp.not.i81, label %if.end.i82.soc15_update_drm_light_sleep.exit_crit_edge, label %if.then5.i84

if.end.i82.soc15_update_drm_light_sleep.exit_crit_edge: ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_update_drm_light_sleep.exit

if.then5.i84:                                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add10.i83 = add i32 %36, 442
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i83, i32 noundef %data.0.i80, i32 noundef 0) #6
  br label %soc15_update_drm_light_sleep.exit

soc15_update_drm_light_sleep.exit:                ; preds = %if.then5.i84, %if.end.i82.soc15_update_drm_light_sleep.exit_crit_edge
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 103
  %37 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smuio, align 4
  %update_rom_clock_gating = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %update_rom_clock_gating to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %update_rom_clock_gating, align 4
  tail call void %40(ptr noundef %handle, i1 noundef zeroext %cmp) #6
  %funcs11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 120, i32 1
  %41 = ptrtoint ptr %funcs11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs11, align 4
  %update_medium_grain_clock_gating12 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %update_medium_grain_clock_gating12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %update_medium_grain_clock_gating12, align 4
  tail call void %44(ptr noundef %handle, i1 noundef zeroext %cmp) #6
  br label %cleanup

sw.bb14:                                          ; preds = %if.end.sw.bb14_crit_edge, %if.end.sw.bb14_crit_edge121, %if.end.sw.bb14_crit_edge122
  %funcs16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %45 = ptrtoint ptr %funcs16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs16, align 8
  %update_medium_grain_clock_gating17 = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %update_medium_grain_clock_gating17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %update_medium_grain_clock_gating17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp18 = icmp eq i32 %state, 0
  tail call void %48(ptr noundef %handle, i1 noundef zeroext %cmp18) #6
  %49 = ptrtoint ptr %funcs16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs16, align 8
  %update_medium_grain_light_sleep21 = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %update_medium_grain_light_sleep21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %update_medium_grain_light_sleep21, align 4
  tail call void %52(ptr noundef %handle, i1 noundef zeroext %cmp18) #6
  %funcs24 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %53 = ptrtoint ptr %funcs24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %funcs24, align 4
  %update_clock_gating25 = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %update_clock_gating25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %update_clock_gating25, align 4
  tail call void %56(ptr noundef %handle, i1 noundef zeroext %cmp18) #6
  %arrayidx.i85 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 14
  %57 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i85, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add.i86 = add i32 %60, 441
  %call.i87 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i86, i32 noundef 0) #6
  br i1 %cmp18, label %land.lhs.true.i91, label %sw.bb14.if.else.i95_crit_edge

sw.bb14.if.else.i95_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i95

land.lhs.true.i91:                                ; preds = %sw.bb14
  %cg_flags.i88 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %61 = ptrtoint ptr %cg_flags.i88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cg_flags.i88, align 8
  %and.i89 = and i32 %62, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool3.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool3.not.i90, label %land.lhs.true.i91.if.else.i95_crit_edge, label %if.then.i93

land.lhs.true.i91.if.else.i95_crit_edge:          ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i95

if.then.i93:                                      ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i92 = and i32 %call.i87, 16777215
  br label %if.end.i98

if.else.i95:                                      ; preds = %land.lhs.true.i91.if.else.i95_crit_edge, %sw.bb14.if.else.i95_crit_edge
  %or.i94 = or i32 %call.i87, -16777216
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.else.i95, %if.then.i93
  %data.0.i96 = phi i32 [ %and4.i92, %if.then.i93 ], [ %or.i94, %if.else.i95 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i87, i32 %data.0.i96)
  %cmp.not.i97 = icmp eq i32 %call.i87, %data.0.i96
  br i1 %cmp.not.i97, label %if.end.i98.soc15_update_drm_clock_gating.exit101_crit_edge, label %if.then5.i100

if.end.i98.soc15_update_drm_clock_gating.exit101_crit_edge: ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %soc15_update_drm_clock_gating.exit101

if.then5.i100:                                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i85, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add10.i99 = add i32 %66, 441
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i99, i32 noundef %data.0.i96, i32 noundef 0) #6
  br label %soc15_update_drm_clock_gating.exit101

soc15_update_drm_clock_gating.exit101:            ; preds = %if.then5.i100, %if.end.i98.soc15_update_drm_clock_gating.exit101_crit_edge
  %67 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i85, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add.i103 = add i32 %70, 442
  %call.i104 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i103, i32 noundef 0) #6
  br i1 %cmp18, label %land.lhs.true.i108, label %soc15_update_drm_clock_gating.exit101.if.else.i112_crit_edge

soc15_update_drm_clock_gating.exit101.if.else.i112_crit_edge: ; preds = %soc15_update_drm_clock_gating.exit101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i112

land.lhs.true.i108:                               ; preds = %soc15_update_drm_clock_gating.exit101
  %cg_flags.i105 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %71 = ptrtoint ptr %cg_flags.i105 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cg_flags.i105, align 8
  %and.i106 = and i32 %72, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool3.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool3.not.i107, label %land.lhs.true.i108.if.else.i112_crit_edge, label %if.then.i110

land.lhs.true.i108.if.else.i112_crit_edge:        ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i112

if.then.i110:                                     ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #8
  %or.i109 = or i32 %call.i104, 1
  br label %if.end.i115

if.else.i112:                                     ; preds = %land.lhs.true.i108.if.else.i112_crit_edge, %soc15_update_drm_clock_gating.exit101.if.else.i112_crit_edge
  %and4.i111 = and i32 %call.i104, -2
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.else.i112, %if.then.i110
  %data.0.i113 = phi i32 [ %or.i109, %if.then.i110 ], [ %and4.i111, %if.else.i112 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i104, i32 %data.0.i113)
  %cmp.not.i114 = icmp eq i32 %call.i104, %data.0.i113
  br i1 %cmp.not.i114, label %if.end.i115.cleanup_crit_edge, label %if.then5.i117

if.end.i115.cleanup_crit_edge:                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.i117:                                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i85, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add10.i116 = add i32 %76, 442
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i116, i32 noundef %data.0.i113, i32 noundef 0) #6
  br label %cleanup

sw.bb29:                                          ; preds = %if.end.sw.bb29_crit_edge, %if.end.sw.bb29_crit_edge123
  %funcs31 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %77 = ptrtoint ptr %funcs31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %funcs31, align 4
  %update_clock_gating32 = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %update_clock_gating32 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %update_clock_gating32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp33 = icmp eq i32 %state, 0
  tail call void %80(ptr noundef %handle, i1 noundef zeroext %cmp33) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb29, %if.then5.i117, %if.end.i115.cleanup_crit_edge, %soc15_update_drm_light_sleep.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc15_common_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_common_get_clockgating_state(ptr noundef %handle, ptr noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 8
  %get_clockgating_state = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %get_clockgating_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_clockgating_state, align 4
  tail call void %6(ptr noundef %handle, ptr noundef %flags) #6
  %funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %7 = ptrtoint ptr %funcs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs1, align 4
  %get_clock_gating_state = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %get_clock_gating_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_clock_gating_state, align 4
  tail call void %10(ptr noundef %handle, ptr noundef %flags) #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 14
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %12)
  %cmp.not = icmp eq i32 %12, 851970
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %if.then3

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then3:                                         ; preds = %if.end
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 14
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add = add i32 %16, 441
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add, i32 noundef 0) #6
  %and7 = and i32 %call, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or = or i32 %18, 4194304
  store i32 %or, ptr %flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then3.if.end10_crit_edge
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add15 = add i32 %22, 442
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15, i32 noundef 0) #6
  %and17 = and i32 %call16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end10.if.end22_crit_edge, label %if.then19

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or20 = or i32 %24, 262144
  store i32 %or20, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end10.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 103
  %25 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smuio, align 4
  %get_clock_gating_state24 = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %get_clock_gating_state24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_clock_gating_state24, align 4
  tail call void %28(ptr noundef %handle, ptr noundef %flags) #6
  %funcs25 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 120, i32 1
  %29 = ptrtoint ptr %funcs25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs25, align 4
  %get_clockgating_state26 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %get_clockgating_state26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_clockgating_state26, align 4
  tail call void %32(ptr noundef %handle, ptr noundef %flags) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_pcie_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #6
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #6
  %call4 = tail call i32 @amdgpu_device_indirect_rreg(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_pcie_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #6
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #6
  tail call void @amdgpu_device_indirect_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg, i32 noundef %v) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @soc15_pcie_rreg64(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #6
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #6
  %call4 = tail call i64 @amdgpu_device_indirect_rreg64(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg) #6
  ret i64 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_pcie_wreg64(ptr noundef %adev, i32 noundef %reg, i64 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #6
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #6
  tail call void @amdgpu_device_indirect_wreg64(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg, i64 noundef %v) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_uvd_ctx_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %3, 1320
  %add7 = add i32 %3, 1321
  %uvd_ctx_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 45
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uvd_ctx_idx_lock) #6
  %and = and i32 %reg, 511
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and, i32 noundef 0) #6
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add7, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uvd_ctx_idx_lock, i32 noundef %call9) #6
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_uvd_ctx_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %3, 1320
  %add7 = add i32 %3, 1321
  %uvd_ctx_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 45
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uvd_ctx_idx_lock) #6
  %and = and i32 %reg, 511
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7, i32 noundef %v, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uvd_ctx_idx_lock, i32 noundef %call9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_didt_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 4736
  %add7 = add i32 %3, 4737
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0) #6
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add7, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call9) #6
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_didt_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 4736
  %add7 = add i32 %3, 4737
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7, i32 noundef %v, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_gc_cac_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_cac_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 51
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gc_cac_idx_lock) #6
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 4762
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add21 = add i32 %13, 4762
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21, i32 noundef %reg, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and24 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true26

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true26:                                  ; preds = %cond.end
  %funcs29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %land.lhs.true26.cond.false47_crit_edge, label %land.lhs.true31

land.lhs.true26.cond.false47_crit_edge:           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %land.lhs.true31.cond.false47_crit_edge, label %cond.true36

land.lhs.true31.cond.false47_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add45 = add i32 %23, 4763
  %call46 = tail call i32 %19(ptr noundef %adev, i32 noundef %add45, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true31.cond.false47_crit_edge, %land.lhs.true26.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add52 = add i32 %27, 4763
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #6
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond = phi i32 [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gc_cac_idx_lock, i32 noundef %call2) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_gc_cac_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_cac_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 51
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gc_cac_idx_lock) #6
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 4762
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add21 = add i32 %13, 4762
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21, i32 noundef %reg, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and24 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true26

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true26:                                  ; preds = %cond.end
  %funcs29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %land.lhs.true26.cond.false47_crit_edge, label %land.lhs.true31

land.lhs.true26.cond.false47_crit_edge:           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %sriov_wreg35 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg35, align 4
  %tobool36.not = icmp eq ptr %19, null
  br i1 %tobool36.not, label %land.lhs.true31.cond.false47_crit_edge, label %cond.true37

land.lhs.true31.cond.false47_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

cond.true37:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx43, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add46 = add i32 %23, 4763
  tail call void %19(ptr noundef %adev, i32 noundef %add46, i32 noundef %v, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end53

cond.false47:                                     ; preds = %land.lhs.true31.cond.false47_crit_edge, %land.lhs.true26.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add52 = add i32 %27, 4763
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52, i32 noundef %v, i32 noundef 0) #6
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false47, %cond.true37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gc_cac_idx_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_se_cac_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cac_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 54
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %se_cac_idx_lock) #6
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 4765
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add21 = add i32 %13, 4765
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21, i32 noundef %reg, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and24 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true26

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true26:                                  ; preds = %cond.end
  %funcs29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %land.lhs.true26.cond.false47_crit_edge, label %land.lhs.true31

land.lhs.true26.cond.false47_crit_edge:           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %land.lhs.true31.cond.false47_crit_edge, label %cond.true36

land.lhs.true31.cond.false47_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add45 = add i32 %23, 4766
  %call46 = tail call i32 %19(ptr noundef %adev, i32 noundef %add45, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true31.cond.false47_crit_edge, %land.lhs.true26.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add52 = add i32 %27, 4766
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #6
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond = phi i32 [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %se_cac_idx_lock, i32 noundef %call2) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_se_cac_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cac_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 54
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %se_cac_idx_lock) #6
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 4765
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add21 = add i32 %13, 4765
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21, i32 noundef %reg, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and24 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true26

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true26:                                  ; preds = %cond.end
  %funcs29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %land.lhs.true26.cond.false47_crit_edge, label %land.lhs.true31

land.lhs.true26.cond.false47_crit_edge:           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %sriov_wreg35 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg35, align 4
  %tobool36.not = icmp eq ptr %19, null
  br i1 %tobool36.not, label %land.lhs.true31.cond.false47_crit_edge, label %cond.true37

land.lhs.true31.cond.false47_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

cond.true37:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx43, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add46 = add i32 %23, 4766
  tail call void %19(ptr noundef %adev, i32 noundef %add46, i32 noundef %v, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end53

cond.false47:                                     ; preds = %land.lhs.true31.cond.false47_crit_edge, %land.lhs.true26.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add52 = add i32 %27, 4766
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52, i32 noundef %v, i32 noundef 0) #6
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false47, %cond.true37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %se_cac_idx_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_init_setting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgpu_ai_mailbox_set_irq_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_indirect_rreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_indirect_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_device_indirect_rreg64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_indirect_wreg64(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @soc15_read_disabled_bios(ptr nocapture noundef readnone %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @soc15_read_bios_from_rom(ptr noundef %adev, ptr noundef writeonly %bios, i32 noundef %length_bytes) #0 align 64 {
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
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %add = add i32 %length_bytes, 3
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 103
  %2 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smuio, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %adev) #6
  %6 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smuio, align 4
  %get_rom_data_offset = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %get_rom_data_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rom_data_offset, align 4
  %call9 = tail call i32 %9(ptr noundef %adev) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp1027.not = icmp ult i32 %add, 4
  br i1 %cmp1027.not, label %if.end5.cleanup_crit_edge, label %for.body.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end5
  %div26 = lshr i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call9, i32 noundef 0) #6
  %arrayidx = getelementptr i32, ptr %bios, i32 %i.028
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %div26
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %if.end5.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_read_register(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef %reg_offset, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  br label %for.body

for.cond:                                         ; preds = %land.lhs.true
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [20 x %struct.soc15_allowed_register_entry], ptr @soc15_allowed_read_registers, i32 0, i32 %i.027
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [20 x %struct.soc15_allowed_register_entry], ptr @soc15_allowed_read_registers, i32 0, i32 %i.027, i32 1
  %3 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %2, i32 %4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %seg = getelementptr [20 x %struct.soc15_allowed_register_entry], ptr @soc15_allowed_read_registers, i32 0, i32 %i.027, i32 2
  %7 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seg, align 4
  %arrayidx9 = getelementptr i32, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  %reg_offset10 = getelementptr [20 x %struct.soc15_allowed_register_entry], ptr @soc15_allowed_read_registers, i32 0, i32 %i.027, i32 3
  %11 = ptrtoint ptr %reg_offset10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_offset10, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg_offset)
  %cmp11.not = icmp eq i32 %add, %reg_offset
  br i1 %cmp11.not, label %land.lhs.true.if.end_crit_edge, label %for.cond

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add.i = add i32 %16, 1598
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %reg_offset)
  %cmp.i = icmp eq i32 %add.i, %reg_offset
  br i1 %cmp.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %17 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gb_addr_config.i, align 4
  br label %soc15_get_register_value.exit

if.else5.i:                                       ; preds = %if.end
  %add10.i = add i32 %16, 1549
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %reg_offset)
  %cmp11.i = icmp eq i32 %add10.i, %reg_offset
  br i1 %cmp11.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  %db_debug2.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 32
  %19 = ptrtoint ptr %db_debug2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %db_debug2.i, align 8
  br label %soc15_get_register_value.exit

if.end15.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #6
  br label %soc15_get_register_value.exit

soc15_get_register_value.exit:                    ; preds = %if.end15.i, %if.then12.i, %if.then4.i
  %retval.0.i = phi i32 [ %18, %if.then4.i ], [ %20, %if.then12.i ], [ %call16.i, %if.end15.i ]
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %soc15_get_register_value.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %soc15_get_register_value.exit ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @soc15_vga_set_state(ptr nocapture noundef %adev, i1 noundef zeroext %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_asic_reset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %0 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %apu_flags, align 4
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @soc15_asic_reset_method(ptr noundef %adev)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call, label %do.end16 [
    i32 5, label %do.end
    i32 4, label %do.end7
    i32 3, label %do.end12
  ]

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.5) #9
  %call4 = tail call i32 @amdgpu_device_pci_reset(ptr noundef %adev) #6
  br label %return

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.10) #9
  %call9 = tail call fastcc i32 @soc15_asic_baco_reset(ptr noundef %adev)
  br label %return

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.13) #9
  %call14 = tail call i32 @amdgpu_dpm_mode2_reset(ptr noundef %adev) #6
  br label %return

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.16) #9
  %call18 = tail call i32 @amdgpu_device_mode1_reset(ptr noundef %adev) #6
  br label %return

return:                                           ; preds = %do.end16, %do.end12, %do.end7, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end16 ], [ %call14, %do.end12 ], [ %call9, %do.end7 ], [ %call4, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_asic_reset_method(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1, align 8
  %supported = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 6
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supported, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %connected_to_cpu4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %4 = ptrtoint ptr %connected_to_cpu4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %connected_to_cpu4, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp ne i8 %5, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %connected_to_cpu.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %tobool5.not, %land.lhs.true ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %6 = load i32, ptr @amdgpu_reset_method, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %6, label %do.end [
    i32 2, label %if.end.if.then11_crit_edge
    i32 3, label %if.end.if.then11_crit_edge64
    i32 4, label %if.end.if.then11_crit_edge65
    i32 5, label %if.end.if.then11_crit_edge66
    i32 -1, label %if.end.if.end18_crit_edge
  ]

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end.if.then11_crit_edge66:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end.if.then11_crit_edge65:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end.if.then11_crit_edge64:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %if.end.if.then11_crit_edge64, %if.end.if.then11_crit_edge65, %if.end.if.then11_crit_edge66
  %spec.select63 = select i1 %connected_to_cpu.0.off0, i32 3, i32 %6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.18, i32 noundef %6) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %11, label %if.end18.sw.epilog.thread_crit_edge [
    i32 655360, label %if.end18.cleanup_crit_edge
    i32 655361, label %if.end18.cleanup_crit_edge67
    i32 786432, label %if.end18.cleanup_crit_edge68
    i32 786433, label %if.end18.cleanup_crit_edge69
    i32 589824, label %if.end18.sw.bb20_crit_edge
    i32 720898, label %if.end18.sw.bb20_crit_edge70
    i32 851970, label %sw.bb38
  ]

if.end18.sw.bb20_crit_edge70:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

if.end18.sw.bb20_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

if.end18.cleanup_crit_edge69:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.cleanup_crit_edge68:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.cleanup_crit_edge67:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.sw.epilog.thread_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb20:                                          ; preds = %if.end18.sw.bb20_crit_edge, %if.end18.sw.bb20_crit_edge70
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %13 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %14)
  %cmp21 = icmp eq i32 %14, 21
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %sw.bb20
  %sos = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 9
  %15 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 524390, i32 %16)
  %cmp24 = icmp ugt i32 %16, 524390
  br i1 %cmp24, label %if.then25, label %if.then22.if.end26_crit_edge

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then22.if.end26_crit_edge
  %baco_reset.0 = phi i1 [ %call, %if.then25 ], [ false, %if.then22.if.end26_crit_edge ]
  %tobool27.not = icmp eq ptr %1, null
  br i1 %tobool27.not, label %if.end26.sw.epilog_crit_edge, label %land.lhs.true28

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true28:                                  ; preds = %if.end26
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %17 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool29.not = icmp eq i32 %18, 0
  br i1 %tobool29.not, label %land.lhs.true28.sw.epilog_crit_edge, label %land.lhs.true30

land.lhs.true28.sw.epilog_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true30:                                  ; preds = %land.lhs.true28
  %fw_version31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 17
  %19 = ptrtoint ptr %fw_version31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_version31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2634752, i32 %20)
  %cmp32 = icmp ugt i32 %20, 2634752
  %spec.select61 = select i1 %cmp32, i1 %baco_reset.0, i1 false
  br i1 %spec.select61, label %land.lhs.true30._crit_edge, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true30._crit_edge:                       ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %21

if.else:                                          ; preds = %sw.bb20
  %call35 = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #6
  br i1 %call35, label %if.else._crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else._crit_edge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %21

sw.bb38:                                          ; preds = %if.end18
  br i1 %connected_to_cpu.0.off0, label %sw.bb38.cleanup_crit_edge, label %sw.bb38.sw.epilog.thread_crit_edge

sw.bb38.sw.epilog.thread_crit_edge:               ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.thread:                                 ; preds = %sw.bb38.sw.epilog.thread_crit_edge, %if.end18.sw.epilog.thread_crit_edge
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true28.sw.epilog_crit_edge, %if.end26.sw.epilog_crit_edge
  br i1 %baco_reset.0, label %sw.epilog._crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %21

21:                                               ; preds = %sw.epilog._crit_edge, %if.else._crit_edge, %land.lhs.true30._crit_edge
  br label %cleanup

cleanup:                                          ; preds = %21, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %sw.bb38.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end18.cleanup_crit_edge67, %if.end18.cleanup_crit_edge68, %if.end18.cleanup_crit_edge69, %if.then11
  %retval.0 = phi i32 [ 3, %if.end18.cleanup_crit_edge ], [ 3, %if.end18.cleanup_crit_edge67 ], [ 3, %if.end18.cleanup_crit_edge68 ], [ 3, %if.end18.cleanup_crit_edge69 ], [ 3, %sw.bb38.cleanup_crit_edge ], [ 4, %21 ], [ 2, %sw.epilog.cleanup_crit_edge ], [ 2, %sw.epilog.thread ], [ 2, %if.else.cleanup_crit_edge ], [ 2, %land.lhs.true30.cleanup_crit_edge ], [ %spec.select63, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc15_get_xclk(ptr nocapture noundef readonly %adev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %3, label %if.end16 [
    i32 786432, label %entry.cleanup_crit_edge
    i32 786433, label %entry.cleanup_crit_edge23
    i32 655360, label %entry.if.then15_crit_edge
    i32 655361, label %entry.if.then15_crit_edge24
  ]

entry.if.then15_crit_edge24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

entry.cleanup_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %entry.if.then15_crit_edge, %entry.if.then15_crit_edge24
  %div22 = lshr i32 %1, 2
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge23
  %retval.0 = phi i32 [ %div22, %if.then15 ], [ %1, %if.end16 ], [ 10000, %entry.cleanup_crit_edge ], [ 10000, %entry.cleanup_crit_edge23 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc15_set_uvd_clocks(ptr nocapture noundef readnone %adev, i32 noundef %vclk, i32 noundef %dclk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc15_set_vce_clocks(ptr nocapture noundef readnone %adev, i32 noundef %evclk, i32 noundef %ecclk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc15_get_config_memsize(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_memsize = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %get_memsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_memsize, align 4
  %call = tail call i32 %3(ptr noundef %adev) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @soc15_need_full_reset(ptr nocapture noundef readnone %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vega10_doorbell_index_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_get_pcie_usage(ptr noundef %adev, ptr nocapture noundef writeonly %count0, ptr nocapture noundef writeonly %count1) #0 align 64 {
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
  tail call void %3(ptr noundef %adev, i32 noundef 286786052, i32 noundef 26664) #6
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286786048, i32 noundef 5) #6
  tail call void @msleep(i32 noundef 1000) #6
  %6 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_wreg, align 4
  tail call void %7(ptr noundef %adev, i32 noundef 286786048, i32 noundef 2) #6
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %8 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %9(ptr noundef %adev, i32 noundef 286786052) #6
  %and6 = lshr i32 %call, 16
  %10 = and i32 %and6, 255
  %11 = zext i32 %10 to i64
  %shr8 = lshr i32 %call, 24
  %conv9 = zext i32 %shr8 to i64
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %call11 = tail call i32 %13(ptr noundef %adev, i32 noundef 286786056) #6
  %conv12 = zext i32 %call11 to i64
  %shl = shl nuw nsw i64 %11, 32
  %or13 = or i64 %shl, %conv12
  %14 = ptrtoint ptr %count0 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or13, ptr %count0, align 8
  %15 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_rreg, align 8
  %call15 = tail call i32 %16(ptr noundef %adev, i32 noundef 286786060) #6
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
define internal zeroext i1 @soc15_need_reset_on_init(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and1 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and7 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.cond.false_crit_edge, label %land.lhs.true

if.end4.cond.false_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true10

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %land.lhs.true10.cond.false_crit_edge, label %cond.true

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 145
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 14) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true10.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end4.cond.false_crit_edge
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx22, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add25 = add i32 %15, 145
  %call26 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add25, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call26, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool27.not = icmp ne i32 %cond, 0
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %tobool27.not, %cond.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @soc15_get_pcie_replay_count(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286785592) #6
  %conv = zext i32 %call to i64
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call2 = tail call i32 %3(ptr noundef %adev, i32 noundef 286785596) #6
  %conv3 = zext i32 %call2 to i64
  %add = add nuw nsw i64 %conv3, %conv
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @soc15_supports_baco(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %entry.return_crit_edge [
    i32 589824, label %entry.sw.bb_crit_edge
    i32 720898, label %entry.sw.bb_crit_edge9
  ]

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %cmp = icmp eq i32 %4, 21
  br i1 %cmp, label %if.then, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.then:                                          ; preds = %sw.bb
  %sos = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 9
  %5 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 524390, i32 %6)
  %cmp2 = icmp ugt i32 %6, 524390
  br i1 %cmp2, label %if.then.return.sink.split_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %call4 = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #6
  br label %return

return:                                           ; preds = %return.sink.split, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then.return_crit_edge ], [ false, %entry.return_crit_edge ], [ %call4, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc15_pre_asic_init(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gmc_v9_0_restore_registers(ptr noundef %adev) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc15_query_video_codecs(ptr nocapture noundef readonly %adev, i1 noundef zeroext %encode, ptr nocapture noundef writeonly %codecs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 18
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %if.else7
    i32 262144, label %entry.return.sink.split_crit_edge
    i32 262400, label %entry.return.sink.split_crit_edge33
  ]

entry.return.sink.split_crit_edge33:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else7:                                         ; preds = %entry
  %arrayidx9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx9, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %4, label %if.else7.return_crit_edge [
    i32 65536, label %if.else7.return.sink.split_crit_edge
    i32 65537, label %if.else7.return.sink.split_crit_edge34
    i32 132352, label %if.else7.sw.bb16_crit_edge
    i32 132608, label %if.else7.sw.bb16_crit_edge35
    i32 131584, label %if.else7.sw.bb16_crit_edge36
  ]

if.else7.sw.bb16_crit_edge36:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.else7.sw.bb16_crit_edge35:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.else7.sw.bb16_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.else7.return.sink.split_crit_edge34:           ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.else7.return.sink.split_crit_edge:             ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.else7.return_crit_edge:                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb16:                                          ; preds = %if.else7.sw.bb16_crit_edge, %if.else7.sw.bb16_crit_edge35, %if.else7.sw.bb16_crit_edge36
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb16, %if.else7.return.sink.split_crit_edge, %if.else7.return.sink.split_crit_edge34, %entry.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge33
  %rn_video_codecs_decode.sink = phi ptr [ @rn_video_codecs_decode, %sw.bb16 ], [ @vega_video_codecs_decode, %entry.return.sink.split_crit_edge ], [ @vega_video_codecs_decode, %entry.return.sink.split_crit_edge33 ], [ @rv_video_codecs_decode, %if.else7.return.sink.split_crit_edge ], [ @rv_video_codecs_decode, %if.else7.return.sink.split_crit_edge34 ]
  %vega_video_codecs_encode.rn_video_codecs_decode = select i1 %encode, ptr @vega_video_codecs_encode, ptr %rn_video_codecs_decode.sink
  %6 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vega_video_codecs_encode.rn_video_codecs_decode, ptr %codecs, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else7.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.else7.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_pci_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc15_asic_baco_reset(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 @amdgpu_dpm_baco_reset(ptr noundef %adev) #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %enable_doorbell_interrupt = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %enable_doorbell_interrupt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_doorbell_interrupt, align 4
  tail call void %7(ptr noundef %adev, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %call = tail call i32 @amdgpu_dpm_baco_reset(ptr noundef %adev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp ne i32 %call, 0
  %brmerge = select i1 %tobool3.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %land.lhs.true7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true7:                                   ; preds = %if.end
  %ras_enabled8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %8 = ptrtoint ptr %ras_enabled8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ras_enabled8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %land.lhs.true7.cleanup_crit_edge, label %if.then10

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  %funcs12 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %10 = ptrtoint ptr %funcs12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs12, align 8
  %enable_doorbell_interrupt13 = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %enable_doorbell_interrupt13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_doorbell_interrupt13, align 4
  tail call void %13(ptr noundef %adev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ %call25, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_mode2_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_mode1_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_baco_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gmc_v9_0_restore_registers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vega20_doorbell_index_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vega20_get_pcie_usage(ptr noundef %adev, ptr nocapture noundef writeonly %count0, ptr nocapture noundef writeonly %count1) #0 align 64 {
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
  tail call void %3(ptr noundef %adev, i32 noundef 286786076, i32 noundef 27688) #6
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286786048, i32 noundef 5) #6
  tail call void @msleep(i32 noundef 1000) #6
  %6 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_wreg, align 4
  tail call void %7(ptr noundef %adev, i32 noundef 286786048, i32 noundef 2) #6
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %8 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %9(ptr noundef %adev, i32 noundef 286786076) #6
  %and6 = lshr i32 %call, 16
  %10 = and i32 %and6, 255
  %11 = zext i32 %10 to i64
  %shr8 = lshr i32 %call, 24
  %conv9 = zext i32 %shr8 to i64
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %call11 = tail call i32 %13(ptr noundef %adev, i32 noundef 286786080) #6
  %conv12 = zext i32 %call11 to i64
  %shl = shl nuw nsw i64 %11, 32
  %or13 = or i64 %shl, %conv12
  %14 = ptrtoint ptr %count0 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or13, ptr %count0, align 8
  %15 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_rreg, align 8
  %call15 = tail call i32 %16(ptr noundef %adev, i32 noundef 286786084) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgpu_ai_mailbox_get_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgpu_ai_mailbox_add_irq_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgpu_ai_mailbox_put_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @vega10_common_ip_block, !1, !"vega10_common_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 721, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 753, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @soc15_reg_base_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @soc15_reg_base_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 768, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 1499, i32 10}
!12 = !{ptr @soc15_common_ip_funcs, !13, !"soc15_common_ip_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 1498, i32 34}
!14 = !{ptr @soc15_asic_funcs, !15, !"soc15_asic_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 925, i32 39}
!16 = !{ptr @soc15_allowed_read_registers, !17, !"soc15_allowed_read_registers", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 411, i32 44}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 628, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @soc15_asic_reset._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @soc15_asic_reset._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 631, i32 3}
!27 = !{ptr @soc15_asic_reset._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @soc15_asic_reset._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 634, i32 3}
!31 = !{ptr @soc15_asic_reset._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @soc15_asic_reset._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 637, i32 3}
!35 = !{ptr @soc15_asic_reset._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @soc15_asic_reset._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 576, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @soc15_asic_reset_method._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @soc15_asic_reset_method._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @vega_video_codecs_encode, !44, !"vega_video_codecs_encode", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 97, i32 41}
!45 = !{ptr @vega_video_codecs_encode_array, !46, !"vega_video_codecs_encode_array", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 91, i32 45}
!47 = !{ptr @vega_video_codecs_decode, !48, !"vega_video_codecs_decode", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 114, i32 41}
!49 = !{ptr @vega_video_codecs_decode_array, !50, !"vega_video_codecs_decode_array", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 104, i32 45}
!51 = !{ptr @rv_video_codecs_decode, !52, !"rv_video_codecs_decode", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 132, i32 41}
!53 = !{ptr @rv_video_codecs_decode_array, !54, !"rv_video_codecs_decode_array", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 121, i32 45}
!55 = !{ptr @rn_video_codecs_decode, !56, !"rn_video_codecs_decode", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 150, i32 41}
!57 = !{ptr @rn_video_codecs_decode_array, !58, !"rn_video_codecs_decode_array", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 139, i32 45}
!59 = !{ptr @vega20_asic_funcs, !60, !"vega20_asic_funcs", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/soc15.c", i32 947, i32 39}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i8 0, i8 2}
