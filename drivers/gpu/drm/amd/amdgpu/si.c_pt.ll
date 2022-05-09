; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/si.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/si.c"
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
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@si_common_ip_block = internal constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 0, i32 1, i32 0, i32 0, ptr @si_common_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gmc_v6_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@si_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gfx_v6_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@si_dma_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@si_smu_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_vkms_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dm_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v6_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@uvd_v3_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v6_4_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@si_common_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @si_common_early_init, ptr null, ptr @si_common_sw_init, ptr @si_common_sw_fini, ptr null, ptr @si_common_hw_init, ptr @si_common_hw_fini, ptr null, ptr @si_common_suspend, ptr @si_common_resume, ptr @si_common_is_idle, ptr @si_common_wait_for_idle, ptr null, ptr null, ptr @si_common_soft_reset, ptr null, ptr @si_common_set_clockgating_state, ptr @si_common_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"si_common\00", [22 x i8] zeroinitializer }, align 32
@si_asic_funcs = internal constant { %struct.amdgpu_asic_funcs, [36 x i8] } { %struct.amdgpu_asic_funcs { ptr @si_read_disabled_bios, ptr @si_read_bios_from_rom, ptr @si_read_register, ptr @si_vga_set_state, ptr @si_asic_reset, ptr @si_asic_reset_method, ptr @si_get_xclk, ptr @si_set_uvd_clocks, ptr @si_set_vce_clocks, ptr @si_get_pcie_lanes, ptr @si_set_pcie_lanes, ptr @si_get_config_memsize, ptr @si_flush_hdp, ptr @si_invalidate_hdp, ptr @si_need_full_reset, ptr null, ptr @si_get_pcie_usage, ptr @si_need_reset_on_init, ptr @si_get_pcie_replay_count, ptr @si_asic_supports_baco, ptr @si_pre_asic_init, ptr null, ptr @si_query_video_codecs }, [36 x i8] zeroinitializer }, align 32
@si_allowed_read_registers = internal constant { [49 x %struct.amdgpu_allowed_register_entry], [120 x i8] } { [49 x %struct.amdgpu_allowed_register_entry] [%struct.amdgpu_allowed_register_entry { i32 8196, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8194, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8197, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8198, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 916, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 915, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 13325, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 13837, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8608, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8605, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8606, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8604, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9790, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 2520, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9796, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9797, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9798, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9799, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9800, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9801, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9802, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9803, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9804, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9805, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9806, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9807, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9808, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9809, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9810, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9811, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9812, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9813, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9814, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9815, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9816, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9817, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9818, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9819, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9820, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9821, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9822, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9823, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9824, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9825, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9826, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9827, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9789, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 9951, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 41172, i8 1 }], [120 x i8] zeroinitializer }, align 32
@si_asic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu: PCI reset\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si_asic_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/amd/amdgpu/si.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si_asic_reset._entry_ptr = internal global ptr @si_asic_reset._entry, section ".printk_index", align 4
@si_asic_reset._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: PCI CONFIG reset\0A\00", [38 x i8] zeroinitializer }, align 32
@si_asic_reset._entry_ptr.8 = internal global ptr @si_asic_reset._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amdgpu_reset_method = external dso_local local_unnamed_addr global i32, align 4
@si_asic_reset_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1425, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"amdgpu: Specified reset method:%d isn't supported, using AUTO instead.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_asic_reset_method\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si_asic_reset_method._entry_ptr = internal global ptr @si_asic_reset_method._entry, section ".printk_index", align 4
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout setting UVD clocks!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid pcie lane request: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tahiti_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } zeroinitializer, align 32
@tahiti_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 4, ptr @tahiti_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@hainan_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } zeroinitializer, align 32
@hainan_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } zeroinitializer, align 32
@tahiti_video_codecs_decode_array = internal constant { [4 x %struct.amdgpu_video_codec_info], [48 x i8] } { [4 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 2048, i32 1152, i32 2359296, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 2048, i32 1152, i32 2359296, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 2048, i32 1152, i32 2359296, i32 41 }, %struct.amdgpu_video_codec_info { i32 2, i32 2048, i32 1152, i32 2359296, i32 4 }], [48 x i8] zeroinitializer }, align 32
@tahiti_golden_registers = internal constant { [108 x i32], [112 x i8] } { [108 x i32] [i32 6076, i32 48, i32 17, i32 9860, i32 65536, i32 98824, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 131612, i32 131584, i32 798, i32 128, i32 0, i32 13324, i32 192, i32 8388672, i32 13836, i32 192, i32 8388672, i32 5868, i32 240, i32 112, i32 5872, i32 2097152, i32 1343225856, i32 7180, i32 822084369, i32 17, i32 2527, i32 3, i32 2047, i32 2307, i32 2047, i32 0, i32 8837, i32 -268435425, i32 7, i32 8905, i32 -1, i32 16777215, i32 8900, i32 65295, i32 0, i32 41619, i32 134217727, i32 1308622848, i32 41172, i32 1061109759, i32 704647786, i32 12, i32 -1, i32 64, i32 13, i32 64, i32 16448, i32 9280, i32 134217727, i32 50331648, i32 9122, i32 33496895, i32 0, i32 9121, i32 33496895, i32 0, i32 9240, i32 127, i32 32, i32 9538, i32 65536, i32 65536, i32 11013, i32 512, i32 763, i32 11012, i32 -1, i32 21563, i32 11011, i32 -1, i32 -1457452938, i32 8756, i32 -1, i32 1048384, i32 8757, i32 31, i32 16, i32 1284, i32 536870912, i32 553647832, i32 1392, i32 790464, i32 787456, i32 1324, i32 268435455, i32 -1, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [112 x i8] zeroinitializer }, align 32
@tahiti_golden_rlc_registers = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 9790, i32 -1, i32 302059523, i32 12553, i32 -1, i32 6295557, i32 12575, i32 -1, i32 269500480, i32 12578, i32 -1, i32 16777226, i32 12485, i32 -1, i32 2048, i32 12483, i32 -1, i32 -2147483404, i32 15658, i32 8, i32 0], [44 x i8] zeroinitializer }, align 32
@tahiti_mgcg_cgcg_init = internal constant { [378 x i32], [376 x i8] } { [378 x i32] [i32 12544, i32 -1, i32 -4, i32 8203, i32 -1, i32 -536870912, i32 9880, i32 -1, i32 256, i32 9385, i32 -1, i32 256, i32 12377, i32 -1, i32 256, i32 9693, i32 -1, i32 256, i32 8801, i32 -1, i32 100663552, i32 8838, i32 -1, i32 256, i32 9384, i32 -1, i32 256, i32 12512, i32 -1, i32 256, i32 8906, i32 -1, i32 256, i32 9297, i32 -1, i32 256, i32 9058, i32 -1, i32 256, i32 9059, i32 -1, i32 256, i32 9228, i32 -1, i32 256, i32 9229, i32 -1, i32 256, i32 9230, i32 -1, i32 256, i32 9231, i32 -1, i32 256, i32 11104, i32 -1, i32 256, i32 11029, i32 -1, i32 256, i32 8799, i32 -1, i32 100663552, i32 9754, i32 -1, i32 256, i32 9540, i32 -1, i32 256, i32 11201, i32 -1, i32 256, i32 11137, i32 -1, i32 256, i32 9511, i32 -1, i32 256, i32 8203, i32 -1, i32 -536870912, i32 9304, i32 -1, i32 65536, i32 9305, i32 -1, i32 196610, i32 9306, i32 -1, i32 262151, i32 9307, i32 -1, i32 393221, i32 9308, i32 -1, i32 589832, i32 9309, i32 -1, i32 131073, i32 9310, i32 -1, i32 262147, i32 9311, i32 -1, i32 7, i32 9312, i32 -1, i32 393221, i32 9313, i32 -1, i32 589832, i32 9314, i32 -1, i32 196610, i32 9315, i32 -1, i32 327684, i32 9316, i32 -1, i32 8, i32 9317, i32 -1, i32 458758, i32 9318, i32 -1, i32 655369, i32 9319, i32 -1, i32 262147, i32 9320, i32 -1, i32 393221, i32 9321, i32 -1, i32 9, i32 9322, i32 -1, i32 524295, i32 9323, i32 -1, i32 720906, i32 9324, i32 -1, i32 327684, i32 9325, i32 -1, i32 458758, i32 9326, i32 -1, i32 524299, i32 9327, i32 -1, i32 655369, i32 9328, i32 -1, i32 851980, i32 9329, i32 -1, i32 393221, i32 9330, i32 -1, i32 524295, i32 9331, i32 -1, i32 11, i32 9332, i32 -1, i32 655369, i32 9333, i32 -1, i32 851980, i32 9334, i32 -1, i32 458758, i32 9335, i32 -1, i32 589832, i32 9336, i32 -1, i32 12, i32 9337, i32 -1, i32 720906, i32 9338, i32 -1, i32 917517, i32 9339, i32 -1, i32 524295, i32 9340, i32 -1, i32 655369, i32 9341, i32 -1, i32 13, i32 9342, i32 -1, i32 786443, i32 9343, i32 -1, i32 983054, i32 9344, i32 -1, i32 589832, i32 9345, i32 -1, i32 720906, i32 9346, i32 -1, i32 786447, i32 9347, i32 -1, i32 917517, i32 9348, i32 -1, i32 1114128, i32 9349, i32 -1, i32 655369, i32 9350, i32 -1, i32 786443, i32 9351, i32 -1, i32 15, i32 9352, i32 -1, i32 917517, i32 9353, i32 -1, i32 1114128, i32 9354, i32 -1, i32 720906, i32 9355, i32 -1, i32 851980, i32 9356, i32 -1, i32 16, i32 9357, i32 -1, i32 983054, i32 9358, i32 -1, i32 1179665, i32 9359, i32 -1, i32 786443, i32 9360, i32 -1, i32 917517, i32 9361, i32 -1, i32 17, i32 9362, i32 -1, i32 1048591, i32 9363, i32 -1, i32 1245202, i32 9364, i32 -1, i32 851980, i32 9365, i32 -1, i32 983054, i32 9366, i32 -1, i32 1048595, i32 9367, i32 -1, i32 1179665, i32 9368, i32 -1, i32 1376276, i32 9369, i32 -1, i32 917517, i32 9370, i32 -1, i32 1048591, i32 9371, i32 -1, i32 19, i32 9372, i32 -1, i32 1179665, i32 9373, i32 -1, i32 1376276, i32 9374, i32 -1, i32 983054, i32 9375, i32 -1, i32 1114128, i32 9376, i32 -1, i32 20, i32 9377, i32 -1, i32 1245202, i32 9378, i32 -1, i32 1441813, i32 9379, i32 -1, i32 1048591, i32 9380, i32 -1, i32 1179665, i32 9381, i32 -1, i32 21, i32 9382, i32 -1, i32 1310739, i32 9383, i32 -1, i32 1507350, i32 9300, i32 -1, i32 -1768685056, i32 8642, i32 -1, i32 9437440, i32 12574, i32 -1, i32 128, i32 12545, i32 -1, i32 2097215, i32 12, i32 -1, i32 28, i32 13, i32 983040, i32 983040, i32 1411, i32 -1, i32 256, i32 1033, i32 -1, i32 256, i32 1035, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 2451, i32 786432, i32 786432, i32 2450, i32 786432, i32 786432, i32 5497, i32 -16773121, i32 256, i32 5498, i32 1, i32 1, i32 3028, i32 1, i32 1, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13360, i32 -16, i32 256, i32 13872, i32 -16, i32 256], [376 x i8] zeroinitializer }, align 32
@tahiti_golden_registers2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 793, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@pitcairn_golden_registers = internal constant { [96 x i32], [96 x i8] } { [96 x i32] [i32 6076, i32 48, i32 17, i32 9860, i32 65536, i32 98824, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 131612, i32 131584, i32 798, i32 128, i32 0, i32 13324, i32 196800, i32 8388672, i32 13836, i32 196800, i32 8388672, i32 5868, i32 240, i32 112, i32 5872, i32 2097152, i32 1343225856, i32 7180, i32 822084369, i32 17, i32 2745, i32 475134, i32 8866, i32 2307, i32 2047, i32 0, i32 8837, i32 -268435425, i32 7, i32 8905, i32 -1, i32 16777215, i32 8900, i32 65295, i32 0, i32 41619, i32 134217727, i32 1308622848, i32 41172, i32 1061109759, i32 704647786, i32 12, i32 -1, i32 64, i32 13, i32 64, i32 16448, i32 9280, i32 134217727, i32 50331648, i32 9240, i32 127, i32 32, i32 9538, i32 65536, i32 65536, i32 11013, i32 1023, i32 247, i32 11012, i32 -1, i32 0, i32 11011, i32 -1, i32 846598228, i32 8757, i32 31, i32 16, i32 1392, i32 790464, i32 787456, i32 1324, i32 268435455, i32 -1, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [96 x i8] zeroinitializer }, align 32
@pitcairn_golden_rlc_registers = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 9790, i32 -1, i32 302059523, i32 12553, i32 -1, i32 6295556, i32 12575, i32 -1, i32 269492256, i32 12578, i32 -1, i32 16777248, i32 12485, i32 -1, i32 2048, i32 12483, i32 -1, i32 -2147483484], [56 x i8] zeroinitializer }, align 32
@pitcairn_mgcg_cgcg_init = internal constant { [282 x i32], [280 x i8] } { [282 x i32] [i32 12544, i32 -1, i32 -4, i32 8203, i32 -1, i32 -536870912, i32 9880, i32 -1, i32 256, i32 9385, i32 -1, i32 256, i32 12377, i32 -1, i32 256, i32 9693, i32 -1, i32 256, i32 8801, i32 -1, i32 100663552, i32 8838, i32 -1, i32 256, i32 9384, i32 -1, i32 256, i32 12512, i32 -1, i32 256, i32 8906, i32 -1, i32 256, i32 9297, i32 -1, i32 256, i32 9058, i32 -1, i32 256, i32 9059, i32 -1, i32 256, i32 9228, i32 -1, i32 256, i32 9229, i32 -1, i32 256, i32 9230, i32 -1, i32 256, i32 9231, i32 -1, i32 256, i32 11104, i32 -1, i32 256, i32 11029, i32 -1, i32 256, i32 8799, i32 -1, i32 100663552, i32 9754, i32 -1, i32 256, i32 9540, i32 -1, i32 256, i32 11201, i32 -1, i32 256, i32 11137, i32 -1, i32 256, i32 9511, i32 -1, i32 256, i32 8203, i32 -1, i32 -536870912, i32 9304, i32 -1, i32 65536, i32 9305, i32 -1, i32 196610, i32 9306, i32 -1, i32 262151, i32 9307, i32 -1, i32 393221, i32 9308, i32 -1, i32 589832, i32 9309, i32 -1, i32 131073, i32 9310, i32 -1, i32 262147, i32 9311, i32 -1, i32 7, i32 9312, i32 -1, i32 393221, i32 9313, i32 -1, i32 589832, i32 9314, i32 -1, i32 196610, i32 9315, i32 -1, i32 327684, i32 9316, i32 -1, i32 8, i32 9317, i32 -1, i32 458758, i32 9318, i32 -1, i32 655369, i32 9319, i32 -1, i32 262147, i32 9320, i32 -1, i32 393221, i32 9321, i32 -1, i32 9, i32 9322, i32 -1, i32 524295, i32 9323, i32 -1, i32 720906, i32 9324, i32 -1, i32 327684, i32 9325, i32 -1, i32 458758, i32 9326, i32 -1, i32 524299, i32 9327, i32 -1, i32 655369, i32 9328, i32 -1, i32 851980, i32 9344, i32 -1, i32 589832, i32 9345, i32 -1, i32 720906, i32 9346, i32 -1, i32 786447, i32 9347, i32 -1, i32 917517, i32 9348, i32 -1, i32 1114128, i32 9349, i32 -1, i32 655369, i32 9350, i32 -1, i32 786443, i32 9351, i32 -1, i32 15, i32 9352, i32 -1, i32 917517, i32 9353, i32 -1, i32 1114128, i32 9354, i32 -1, i32 720906, i32 9355, i32 -1, i32 851980, i32 9356, i32 -1, i32 16, i32 9357, i32 -1, i32 983054, i32 9358, i32 -1, i32 1179665, i32 9359, i32 -1, i32 786443, i32 9360, i32 -1, i32 917517, i32 9361, i32 -1, i32 17, i32 9362, i32 -1, i32 1048591, i32 9363, i32 -1, i32 1245202, i32 9364, i32 -1, i32 851980, i32 9365, i32 -1, i32 983054, i32 9366, i32 -1, i32 1048595, i32 9367, i32 -1, i32 1179665, i32 9368, i32 -1, i32 1376276, i32 9300, i32 -1, i32 -1768685056, i32 8642, i32 -1, i32 9437440, i32 12574, i32 -1, i32 128, i32 12545, i32 -1, i32 2097215, i32 12, i32 -1, i32 28, i32 13, i32 983040, i32 983040, i32 1411, i32 -1, i32 256, i32 1033, i32 -1, i32 256, i32 1035, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 5497, i32 -16773121, i32 256, i32 5498, i32 1, i32 1, i32 3028, i32 1, i32 1, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13360, i32 -16, i32 256, i32 13872, i32 -16, i32 256], [280 x i8] zeroinitializer }, align 32
@verde_golden_registers = internal constant { [102 x i32], [104 x i8] } { [102 x i32] [i32 6076, i32 48, i32 17, i32 9860, i32 65536, i32 98824, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 131612, i32 131584, i32 798, i32 128, i32 0, i32 13324, i32 196800, i32 8388672, i32 13836, i32 196800, i32 8388672, i32 5868, i32 240, i32 112, i32 5872, i32 2097152, i32 1343225856, i32 7180, i32 822084369, i32 17, i32 2745, i32 475134, i32 8866, i32 2307, i32 2047, i32 0, i32 8837, i32 -268435425, i32 7, i32 8905, i32 -1, i32 16777215, i32 8900, i32 65295, i32 0, i32 41619, i32 134217727, i32 1308622848, i32 41172, i32 1061109759, i32 4682, i32 12, i32 -1, i32 64, i32 13, i32 64, i32 16448, i32 9280, i32 134217727, i32 50331648, i32 9122, i32 33496895, i32 0, i32 9121, i32 33496895, i32 0, i32 9240, i32 127, i32 32, i32 9538, i32 65536, i32 65536, i32 11013, i32 1023, i32 3, i32 11012, i32 -1, i32 0, i32 11011, i32 -1, i32 4146, i32 8757, i32 31, i32 16, i32 1392, i32 790464, i32 787456, i32 1324, i32 268435455, i32 -1, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [104 x i8] zeroinitializer }, align 32
@verde_golden_rlc_registers = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 9790, i32 -1, i32 33619970, i32 12553, i32 -1, i32 54464517, i32 12575, i32 -1, i32 276856864, i32 12578, i32 -1, i32 8388616, i32 12485, i32 -1, i32 4096, i32 12483, i32 -1, i32 -2147418092], [56 x i8] zeroinitializer }, align 32
@verde_mgcg_cgcg_init = internal constant { [288 x i32], [288 x i8] } { [288 x i32] [i32 12544, i32 -1, i32 -4, i32 8203, i32 -1, i32 -536870912, i32 9880, i32 -1, i32 256, i32 9385, i32 -1, i32 256, i32 12377, i32 -1, i32 256, i32 9693, i32 -1, i32 256, i32 8801, i32 -1, i32 100663552, i32 8838, i32 -1, i32 256, i32 9384, i32 -1, i32 256, i32 12512, i32 -1, i32 256, i32 8906, i32 -1, i32 256, i32 9297, i32 -1, i32 256, i32 9058, i32 -1, i32 256, i32 9059, i32 -1, i32 256, i32 9228, i32 -1, i32 256, i32 9229, i32 -1, i32 256, i32 9230, i32 -1, i32 256, i32 9231, i32 -1, i32 256, i32 11104, i32 -1, i32 256, i32 11029, i32 -1, i32 256, i32 8799, i32 -1, i32 100663552, i32 9754, i32 -1, i32 256, i32 9540, i32 -1, i32 256, i32 11201, i32 -1, i32 256, i32 11137, i32 -1, i32 256, i32 9511, i32 -1, i32 256, i32 8203, i32 -1, i32 -536870912, i32 9304, i32 -1, i32 65536, i32 9305, i32 -1, i32 196610, i32 9306, i32 -1, i32 262151, i32 9307, i32 -1, i32 393221, i32 9308, i32 -1, i32 589832, i32 9309, i32 -1, i32 131073, i32 9310, i32 -1, i32 262147, i32 9311, i32 -1, i32 7, i32 9312, i32 -1, i32 393221, i32 9313, i32 -1, i32 589832, i32 9314, i32 -1, i32 196610, i32 9315, i32 -1, i32 327684, i32 9316, i32 -1, i32 8, i32 9317, i32 -1, i32 458758, i32 9318, i32 -1, i32 655369, i32 9319, i32 -1, i32 262147, i32 9320, i32 -1, i32 393221, i32 9321, i32 -1, i32 9, i32 9322, i32 -1, i32 524295, i32 9323, i32 -1, i32 720906, i32 9324, i32 -1, i32 327684, i32 9325, i32 -1, i32 458758, i32 9326, i32 -1, i32 524299, i32 9327, i32 -1, i32 655369, i32 9328, i32 -1, i32 851980, i32 9344, i32 -1, i32 589832, i32 9345, i32 -1, i32 720906, i32 9346, i32 -1, i32 786447, i32 9347, i32 -1, i32 917517, i32 9348, i32 -1, i32 1114128, i32 9349, i32 -1, i32 655369, i32 9350, i32 -1, i32 786443, i32 9351, i32 -1, i32 15, i32 9352, i32 -1, i32 917517, i32 9353, i32 -1, i32 1114128, i32 9354, i32 -1, i32 720906, i32 9355, i32 -1, i32 851980, i32 9356, i32 -1, i32 16, i32 9357, i32 -1, i32 983054, i32 9358, i32 -1, i32 1179665, i32 9359, i32 -1, i32 786443, i32 9360, i32 -1, i32 917517, i32 9361, i32 -1, i32 17, i32 9362, i32 -1, i32 1048591, i32 9363, i32 -1, i32 1245202, i32 9364, i32 -1, i32 851980, i32 9365, i32 -1, i32 983054, i32 9366, i32 -1, i32 1048595, i32 9367, i32 -1, i32 1179665, i32 9368, i32 -1, i32 1376276, i32 9300, i32 -1, i32 -1768685056, i32 8642, i32 -1, i32 9437440, i32 12574, i32 -1, i32 128, i32 12545, i32 -1, i32 2097215, i32 12, i32 -1, i32 28, i32 13, i32 983040, i32 983040, i32 1411, i32 -1, i32 256, i32 1033, i32 -1, i32 256, i32 1035, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 2451, i32 786432, i32 786432, i32 2450, i32 786432, i32 786432, i32 5497, i32 -16773121, i32 256, i32 5498, i32 1, i32 1, i32 3028, i32 1, i32 1, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13360, i32 -16, i32 256, i32 13872, i32 -16, i32 256], [288 x i8] zeroinitializer }, align 32
@verde_pg_init = internal constant { [369 x i32], [380 x i8] } { [369 x i32] [i32 3407, i32 -1, i32 262144, i32 3406, i32 -1, i32 536875263, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 28679, i32 3406, i32 -1, i32 805310719, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 4194304, i32 3406, i32 -1, i32 268439807, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 1180160, i32 3406, i32 -1, i32 1342181631, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 1973782, i32 3406, i32 -1, i32 1610617087, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 1515294, i32 3406, i32 -1, i32 1879052543, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3407, i32 -1, i32 0, i32 3406, i32 -1, i32 2559, i32 3392, i32 -1, i32 0, i32 3393, i32 -1, i32 268437504, i32 3393, i32 -1, i32 15, i32 3393, i32 -1, i32 15, i32 3392, i32 -1, i32 4, i32 3393, i32 -1, i32 268436766, i32 3393, i32 -1, i32 65535, i32 3393, i32 -1, i32 65535, i32 3392, i32 -1, i32 8, i32 3393, i32 -1, i32 525568, i32 3392, i32 -1, i32 18, i32 3393, i32 -1, i32 591116, i32 3392, i32 -1, i32 29, i32 3393, i32 -1, i32 722220, i32 3392, i32 -1, i32 42, i32 3393, i32 -1, i32 66878, i32 3392, i32 -1, i32 45, i32 3393, i32 -1, i32 66886, i32 3392, i32 -1, i32 48, i32 3393, i32 -1, i32 656718, i32 3392, i32 -1, i32 60, i32 3393, i32 -1, i32 66911, i32 3392, i32 -1, i32 63, i32 3393, i32 -1, i32 66919, i32 3392, i32 -1, i32 66, i32 3393, i32 -1, i32 66927, i32 3392, i32 -1, i32 69, i32 3393, i32 -1, i32 66930, i32 3392, i32 -1, i32 72, i32 3393, i32 -1, i32 132469, i32 3392, i32 -1, i32 76, i32 3393, i32 -1, i32 1640449, i32 3392, i32 -1, i32 103, i32 3393, i32 -1, i32 67626, i32 3392, i32 -1, i32 106, i32 3393, i32 -1, i32 1771565, i32 3392, i32 -1, i32 135, i32 3393, i32 -1, i32 3213393, i32 3392, i32 -1, i32 186, i32 3393, i32 -1, i32 2193, i32 3392, i32 -1, i32 188, i32 3393, i32 -1, i32 2195, i32 3392, i32 -1, i32 190, i32 3393, i32 -1, i32 133269, i32 3392, i32 -1, i32 194, i32 3393, i32 -1, i32 133273, i32 3392, i32 -1, i32 198, i32 3393, i32 -1, i32 133277, i32 3392, i32 -1, i32 202, i32 3393, i32 -1, i32 2209, i32 3392, i32 -1, i32 204, i32 3393, i32 -1, i32 2211, i32 3392, i32 -1, i32 206, i32 3393, i32 -1, i32 198821, i32 3392, i32 -1, i32 211, i32 3393, i32 -1, i32 7145677, i32 3392, i32 -1, i32 322, i32 3393, i32 -1, i32 536873306, i32 3393, i32 -1, i32 1, i32 3392, i32 -1, i32 324, i32 3393, i32 -1, i32 807340379, i32 3392, i32 -1, i32 357, i32 3393, i32 -1, i32 788813, i32 3392, i32 -1, i32 371, i32 3393, i32 -1, i32 985453, i32 3392, i32 -1, i32 388, i32 3393, i32 -1, i32 1378687, i32 3392, i32 -1, i32 411, i32 3393, i32 -1, i32 788888, i32 3392, i32 -1, i32 425, i32 3393, i32 -1, i32 264615, i32 3392, i32 -1, i32 431, i32 3393, i32 -1, i32 3292, i32 3392, i32 -1, i32 433, i32 3393, i32 -1, i32 2048, i32 3394, i32 -1, i32 1822105600, i32 3396, i32 64512, i32 8192, i32 3409, i32 -1, i32 4032, i32 2613, i32 256, i32 256], [380 x i8] zeroinitializer }, align 32
@oland_golden_registers = internal constant { [96 x i32], [96 x i8] } { [96 x i32] [i32 6076, i32 48, i32 17, i32 9860, i32 65536, i32 98824, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 131612, i32 131584, i32 798, i32 128, i32 0, i32 13324, i32 196800, i32 8388672, i32 13836, i32 196800, i32 8388672, i32 5868, i32 240, i32 112, i32 5872, i32 2097152, i32 1343225856, i32 7180, i32 822084369, i32 17, i32 2745, i32 475134, i32 8866, i32 2307, i32 2047, i32 0, i32 8837, i32 -268435425, i32 7, i32 8905, i32 -1, i32 16777215, i32 8900, i32 65295, i32 0, i32 41619, i32 134217727, i32 1308622848, i32 41172, i32 1061109759, i32 130, i32 12, i32 -1, i32 64, i32 13, i32 64, i32 16448, i32 9280, i32 134217727, i32 50331648, i32 9240, i32 127, i32 32, i32 9538, i32 65536, i32 65536, i32 11013, i32 1023, i32 243, i32 11012, i32 -1, i32 0, i32 11011, i32 -1, i32 12816, i32 8757, i32 31, i32 16, i32 1392, i32 790464, i32 787456, i32 1324, i32 268435455, i32 -1, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [96 x i8] zeroinitializer }, align 32
@oland_golden_rlc_registers = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 9790, i32 -1, i32 33619970, i32 12553, i32 -1, i32 6295557, i32 12575, i32 -1, i32 269500480, i32 12578, i32 -1, i32 16777226, i32 12485, i32 -1, i32 2048, i32 12483, i32 -1, i32 -2147483404], [56 x i8] zeroinitializer }, align 32
@oland_mgcg_cgcg_init = internal constant { [228 x i32], [240 x i8] } { [228 x i32] [i32 12544, i32 -1, i32 -4, i32 8203, i32 -1, i32 -536870912, i32 9880, i32 -1, i32 256, i32 9385, i32 -1, i32 256, i32 12377, i32 -1, i32 256, i32 9693, i32 -1, i32 256, i32 8801, i32 -1, i32 100663552, i32 8838, i32 -1, i32 256, i32 9384, i32 -1, i32 256, i32 12512, i32 -1, i32 256, i32 8906, i32 -1, i32 256, i32 9297, i32 -1, i32 256, i32 9058, i32 -1, i32 256, i32 9059, i32 -1, i32 256, i32 9228, i32 -1, i32 256, i32 9229, i32 -1, i32 256, i32 9230, i32 -1, i32 256, i32 9231, i32 -1, i32 256, i32 11104, i32 -1, i32 256, i32 11029, i32 -1, i32 256, i32 8799, i32 -1, i32 100663552, i32 9754, i32 -1, i32 256, i32 9540, i32 -1, i32 256, i32 11201, i32 -1, i32 256, i32 11137, i32 -1, i32 256, i32 9511, i32 -1, i32 256, i32 8203, i32 -1, i32 -536870912, i32 9304, i32 -1, i32 65536, i32 9305, i32 -1, i32 196610, i32 9306, i32 -1, i32 262151, i32 9307, i32 -1, i32 393221, i32 9308, i32 -1, i32 589832, i32 9309, i32 -1, i32 131073, i32 9310, i32 -1, i32 262147, i32 9311, i32 -1, i32 7, i32 9312, i32 -1, i32 393221, i32 9313, i32 -1, i32 589832, i32 9314, i32 -1, i32 196610, i32 9315, i32 -1, i32 327684, i32 9316, i32 -1, i32 8, i32 9317, i32 -1, i32 458758, i32 9318, i32 -1, i32 655369, i32 9319, i32 -1, i32 262147, i32 9320, i32 -1, i32 393221, i32 9321, i32 -1, i32 9, i32 9322, i32 -1, i32 524295, i32 9323, i32 -1, i32 720906, i32 9324, i32 -1, i32 327684, i32 9325, i32 -1, i32 458758, i32 9326, i32 -1, i32 524299, i32 9327, i32 -1, i32 655369, i32 9328, i32 -1, i32 851980, i32 9329, i32 -1, i32 393221, i32 9330, i32 -1, i32 524295, i32 9331, i32 -1, i32 11, i32 9332, i32 -1, i32 655369, i32 9333, i32 -1, i32 851980, i32 9300, i32 -1, i32 -1768685056, i32 8642, i32 -1, i32 9437440, i32 12574, i32 -1, i32 128, i32 12545, i32 -1, i32 2097215, i32 12, i32 -1, i32 28, i32 13, i32 983040, i32 983040, i32 1411, i32 -1, i32 256, i32 1033, i32 -1, i32 256, i32 1035, i32 257, i32 0, i32 2090, i32 -1, i32 260, i32 2451, i32 786432, i32 786432, i32 2450, i32 786432, i32 786432, i32 5497, i32 -16773121, i32 256, i32 5498, i32 1, i32 1, i32 3028, i32 1, i32 1, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13360, i32 -16, i32 256, i32 13872, i32 -16, i32 256], [240 x i8] zeroinitializer }, align 32
@hainan_golden_registers = internal constant { [102 x i32], [104 x i8] } { [102 x i32] [i32 6076, i32 48, i32 17, i32 9860, i32 65536, i32 98824, i32 9740, i32 -1, i32 0, i32 9741, i32 -267386881, i32 1024, i32 9742, i32 131612, i32 131584, i32 798, i32 128, i32 0, i32 13360, i32 -16773121, i32 256, i32 13324, i32 196800, i32 8388672, i32 13872, i32 -16773121, i32 256, i32 13836, i32 196800, i32 8388672, i32 5868, i32 240, i32 112, i32 5872, i32 2097152, i32 1343225856, i32 7180, i32 822084369, i32 17, i32 2745, i32 475134, i32 8866, i32 2307, i32 2047, i32 0, i32 8837, i32 -268435425, i32 7, i32 8905, i32 -1, i32 16777215, i32 8900, i32 65295, i32 0, i32 41619, i32 134217727, i32 1308622848, i32 41172, i32 1061109759, i32 0, i32 12, i32 -1, i32 64, i32 13, i32 64, i32 16448, i32 9280, i32 65011712, i32 56623104, i32 9240, i32 127, i32 32, i32 9538, i32 65536, i32 65536, i32 11013, i32 1023, i32 241, i32 11012, i32 -1, i32 0, i32 11011, i32 -1, i32 12816, i32 8757, i32 31, i32 16, i32 1392, i32 790464, i32 787456, i32 1324, i32 268435455, i32 -1, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [104 x i8] zeroinitializer }, align 32
@hainan_golden_registers2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 9790, i32 -1, i32 33624067], [20 x i8] zeroinitializer }, align 32
@hainan_mgcg_cgcg_init = internal constant { [219 x i32], [212 x i8] } { [219 x i32] [i32 12544, i32 -1, i32 -4, i32 8203, i32 -1, i32 -536870912, i32 9880, i32 -1, i32 256, i32 9385, i32 -1, i32 256, i32 12377, i32 -1, i32 256, i32 9693, i32 -1, i32 256, i32 8801, i32 -1, i32 100663552, i32 8838, i32 -1, i32 256, i32 9384, i32 -1, i32 256, i32 12512, i32 -1, i32 256, i32 8906, i32 -1, i32 256, i32 9297, i32 -1, i32 256, i32 9058, i32 -1, i32 256, i32 9059, i32 -1, i32 256, i32 9228, i32 -1, i32 256, i32 9229, i32 -1, i32 256, i32 9230, i32 -1, i32 256, i32 9231, i32 -1, i32 256, i32 11104, i32 -1, i32 256, i32 11029, i32 -1, i32 256, i32 8799, i32 -1, i32 100663552, i32 9754, i32 -1, i32 256, i32 9540, i32 -1, i32 256, i32 11201, i32 -1, i32 256, i32 11137, i32 -1, i32 256, i32 9511, i32 -1, i32 256, i32 8203, i32 -1, i32 -536870912, i32 9304, i32 -1, i32 65536, i32 9305, i32 -1, i32 196610, i32 9306, i32 -1, i32 262151, i32 9307, i32 -1, i32 393221, i32 9308, i32 -1, i32 589832, i32 9309, i32 -1, i32 131073, i32 9310, i32 -1, i32 262147, i32 9311, i32 -1, i32 7, i32 9312, i32 -1, i32 393221, i32 9313, i32 -1, i32 589832, i32 9314, i32 -1, i32 196610, i32 9315, i32 -1, i32 327684, i32 9316, i32 -1, i32 8, i32 9317, i32 -1, i32 458758, i32 9318, i32 -1, i32 655369, i32 9319, i32 -1, i32 262147, i32 9320, i32 -1, i32 393221, i32 9321, i32 -1, i32 9, i32 9322, i32 -1, i32 524295, i32 9323, i32 -1, i32 720906, i32 9324, i32 -1, i32 327684, i32 9325, i32 -1, i32 458758, i32 9326, i32 -1, i32 524299, i32 9327, i32 -1, i32 655369, i32 9328, i32 -1, i32 851980, i32 9329, i32 -1, i32 393221, i32 9330, i32 -1, i32 524295, i32 9331, i32 -1, i32 11, i32 9332, i32 -1, i32 655369, i32 9333, i32 -1, i32 851980, i32 9300, i32 -1, i32 -1768685056, i32 8642, i32 -1, i32 9437440, i32 12574, i32 -1, i32 128, i32 12545, i32 -1, i32 2097215, i32 12, i32 -1, i32 28, i32 13, i32 983040, i32 983040, i32 1411, i32 -1, i32 256, i32 1033, i32 -1, i32 256, i32 2090, i32 -1, i32 260, i32 2451, i32 786432, i32 786432, i32 2450, i32 786432, i32 786432, i32 3028, i32 1, i32 1, i32 3123, i32 -1073737729, i32 260, i32 12409, i32 1, i32 1, i32 13360, i32 -16, i32 256, i32 13872, i32 -16, i32 256], [212 x i8] zeroinitializer }, align 32
@amdgpu_pcie_gen2 = external dso_local local_unnamed_addr global i32, align 4
@si_pcie_gen3_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 2258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016[drm] PCIE gen 3 link speeds already enabled\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si_pcie_gen3_enable\00", [44 x i8] zeroinitializer }, align 32
@si_pcie_gen3_enable._entry_ptr = internal global ptr @si_pcie_gen3_enable._entry, section ".printk_index", align 4
@si_pcie_gen3_enable._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 2261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016[drm] enabling PCIE gen 3 link speeds, disable with amdgpu.pcie_gen2=0\0A\00", [54 x i8] zeroinitializer }, align 32
@si_pcie_gen3_enable._entry_ptr.18 = internal global ptr @si_pcie_gen3_enable._entry.16, section ".printk_index", align 4
@si_pcie_gen3_enable._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 2264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016[drm] PCIE gen 2 link speeds already enabled\0A\00", [48 x i8] zeroinitializer }, align 32
@si_pcie_gen3_enable._entry_ptr.21 = internal global ptr @si_pcie_gen3_enable._entry.19, section ".printk_index", align 4
@si_pcie_gen3_enable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 2267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016[drm] enabling PCIE gen 2 link speeds, disable with amdgpu.pcie_gen2=0\0A\00", [54 x i8] zeroinitializer }, align 32
@si_pcie_gen3_enable._entry_ptr.24 = internal global ptr @si_pcie_gen3_enable._entry.22, section ".printk_index", align 4
@amdgpu_aspm = external dso_local local_unnamed_addr global i32, align 4
@switch.table.si_get_pcie_lanes = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 9789, i64 9951, i64 41172]
@__sancov_gen_cov_switch_values.29 = internal global [36 x i64] [i64 34, i64 32, i64 2520, i64 9790, i64 9796, i64 9797, i64 9798, i64 9799, i64 9800, i64 9801, i64 9802, i64 9803, i64 9804, i64 9805, i64 9806, i64 9807, i64 9808, i64 9809, i64 9810, i64 9811, i64 9812, i64 9813, i64 9814, i64 9815, i64 9816, i64 9817, i64 9818, i64 9819, i64 9820, i64 9821, i64 9822, i64 9823, i64 9824, i64 9825, i64 9826, i64 9827]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"si_common_ip_block\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2740, i32 45 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"si_common_ip_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2723, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2724, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"si_asic_funcs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1994, i32 39 }
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"si_allowed_read_registers\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1112, i32 45 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1436, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1440, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1424, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1664, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1567, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [27 x i8] c"tahiti_video_codecs_encode\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 930, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"tahiti_video_codecs_decode\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 976, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"hainan_video_codecs_encode\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 937, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"hainan_video_codecs_decode\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 983, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [33 x i8] c"tahiti_video_codecs_decode_array\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 944, i32 45 }
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"tahiti_golden_registers\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 59, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"tahiti_golden_rlc_registers\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 104, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"tahiti_mgcg_cgcg_init\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 426, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"tahiti_golden_registers2\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 99, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"pitcairn_golden_registers\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 115, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"pitcairn_golden_rlc_registers\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 151, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"pitcairn_mgcg_cgcg_init\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 555, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"verde_golden_registers\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 298, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"verde_golden_rlc_registers\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 288, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"verde_mgcg_cgcg_init\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 653, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"verde_pg_init\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 161, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"oland_golden_registers\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 336, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"oland_golden_rlc_registers\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 373, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"oland_mgcg_cgcg_init\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 753, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"hainan_golden_registers\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 383, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [25 x i8] c"hainan_golden_registers2\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 421, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"hainan_mgcg_cgcg_init\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 833, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2258, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2261, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2264, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [35 x i8] c"../drivers/gpu/drm/amd/amdgpu/si.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2267, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [31 x i8] c"switch.table.si_get_pcie_lanes\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @si_asic_reset._entry, ptr @si_asic_reset._entry.6, ptr @si_asic_reset._entry_ptr, ptr @si_asic_reset._entry_ptr.8, ptr @si_asic_reset_method._entry, ptr @si_asic_reset_method._entry_ptr, ptr @si_pcie_gen3_enable._entry, ptr @si_pcie_gen3_enable._entry.16, ptr @si_pcie_gen3_enable._entry.19, ptr @si_pcie_gen3_enable._entry.22, ptr @si_pcie_gen3_enable._entry_ptr, ptr @si_pcie_gen3_enable._entry_ptr.18, ptr @si_pcie_gen3_enable._entry_ptr.21, ptr @si_pcie_gen3_enable._entry_ptr.24, ptr @si_common_ip_block, ptr @si_common_ip_funcs, ptr @.str, ptr @si_asic_funcs, ptr @si_allowed_read_registers, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @tahiti_video_codecs_encode, ptr @tahiti_video_codecs_decode, ptr @hainan_video_codecs_encode, ptr @hainan_video_codecs_decode, ptr @tahiti_video_codecs_decode_array, ptr @tahiti_golden_registers, ptr @tahiti_golden_rlc_registers, ptr @tahiti_mgcg_cgcg_init, ptr @tahiti_golden_registers2, ptr @pitcairn_golden_registers, ptr @pitcairn_golden_rlc_registers, ptr @pitcairn_mgcg_cgcg_init, ptr @verde_golden_registers, ptr @verde_golden_rlc_registers, ptr @verde_mgcg_cgcg_init, ptr @verde_pg_init, ptr @oland_golden_registers, ptr @oland_golden_rlc_registers, ptr @oland_mgcg_cgcg_init, ptr @hainan_golden_registers, ptr @hainan_golden_registers2, ptr @hainan_mgcg_cgcg_init, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @switch.table.si_get_pcie_lanes], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_common_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_common_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_asic_funcs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_allowed_read_registers to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_asic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_asic_reset._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_asic_reset_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahiti_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahiti_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hainan_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hainan_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahiti_video_codecs_decode_array to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahiti_golden_registers to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahiti_golden_rlc_registers to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahiti_mgcg_cgcg_init to i32), i32 1512, i32 1888, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahiti_golden_registers2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitcairn_golden_registers to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitcairn_golden_rlc_registers to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitcairn_mgcg_cgcg_init to i32), i32 1128, i32 1408, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verde_golden_registers to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verde_golden_rlc_registers to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verde_mgcg_cgcg_init to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verde_pg_init to i32), i32 1476, i32 1856, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oland_golden_registers to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oland_golden_rlc_registers to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oland_mgcg_cgcg_init to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hainan_golden_registers to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hainan_golden_registers2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hainan_mgcg_cgcg_init to i32), i32 876, i32 1088, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_pcie_gen3_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_pcie_gen3_enable._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_pcie_gen3_enable._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_pcie_gen3_enable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si_get_pcie_lanes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @si_set_ip_blocks(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 2, label %entry.sw.bb_crit_edge
    i32 0, label %entry.sw.bb_crit_edge81
    i32 1, label %entry.sw.bb_crit_edge82
    i32 3, label %sw.bb14
    i32 4, label %sw.bb34
  ]

entry.sw.bb_crit_edge82:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge81:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge81, %entry.sw.bb_crit_edge82
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_common_ip_block) #8
  %call1 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v6_0_ip_block) #8
  %call2 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_ih_ip_block) #8
  %call3 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v6_0_ip_block) #8
  %call4 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_dma_ip_block) #8
  %call5 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_smu_ip_block) #8
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %3 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_virtual_display, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog.sink.split.sink.split.sink.split_crit_edge, label %sw.bb.sw.epilog.sink.split.sink.split_crit_edge

sw.bb.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.sink.split

sw.bb.sw.epilog.sink.split.sink.split.sink.split_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.sink.split.sink.split

sw.bb14:                                          ; preds = %entry
  %call15 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_common_ip_block) #8
  %call16 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v6_0_ip_block) #8
  %call17 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_ih_ip_block) #8
  %call18 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v6_0_ip_block) #8
  %call19 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_dma_ip_block) #8
  %call20 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_smu_ip_block) #8
  %enable_virtual_display21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %5 = ptrtoint ptr %enable_virtual_display21 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_virtual_display21, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool22.not = icmp eq i8 %6, 0
  br i1 %tobool22.not, label %sw.bb14.sw.epilog.sink.split.sink.split.sink.split_crit_edge, label %sw.bb14.sw.epilog.sink.split.sink.split_crit_edge

sw.bb14.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.sink.split

sw.bb14.sw.epilog.sink.split.sink.split.sink.split_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.sink.split.sink.split

sw.bb34:                                          ; preds = %entry
  %call35 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_common_ip_block) #8
  %call36 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v6_0_ip_block) #8
  %call37 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_ih_ip_block) #8
  %call38 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v6_0_ip_block) #8
  %call39 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_dma_ip_block) #8
  %call40 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @si_smu_ip_block) #8
  %enable_virtual_display41 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %7 = ptrtoint ptr %enable_virtual_display41 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_virtual_display41, align 8, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool42.not = icmp eq i8 %8, 0
  br i1 %tobool42.not, label %sw.bb34.sw.epilog_crit_edge, label %sw.bb34.sw.epilog.sink.split_crit_edge

sw.bb34.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/si.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2801, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

sw.epilog.sink.split.sink.split.sink.split:       ; preds = %sw.bb14.sw.epilog.sink.split.sink.split.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split.sink.split.sink.split_crit_edge
  %dce_v6_4_ip_block.sink = phi ptr [ @dce_v6_0_ip_block, %sw.bb.sw.epilog.sink.split.sink.split.sink.split_crit_edge ], [ @dce_v6_4_ip_block, %sw.bb14.sw.epilog.sink.split.sink.split.sink.split_crit_edge ]
  %call26 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #8
  %dm_ip_block.dce_v6_4_ip_block = select i1 %call26, ptr @dm_ip_block, ptr %dce_v6_4_ip_block.sink
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.epilog.sink.split.sink.split.sink.split, %sw.bb14.sw.epilog.sink.split.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge
  %dm_ip_block.sink.sink = phi ptr [ @amdgpu_vkms_ip_block, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge ], [ @amdgpu_vkms_ip_block, %sw.bb14.sw.epilog.sink.split.sink.split_crit_edge ], [ %dm_ip_block.dce_v6_4_ip_block, %sw.epilog.sink.split.sink.split.sink.split ]
  %call9 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %dm_ip_block.sink.sink) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb34.sw.epilog.sink.split_crit_edge
  %amdgpu_vkms_ip_block.sink = phi ptr [ @amdgpu_vkms_ip_block, %sw.bb34.sw.epilog.sink.split_crit_edge ], [ @uvd_v3_1_ip_block, %sw.epilog.sink.split.sink.split ]
  %call44 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %amdgpu_vkms_ip_block.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb34.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_block_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_common_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %0 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @si_smc_rreg, ptr %smc_rreg, align 4
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %1 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @si_smc_wreg, ptr %smc_wreg, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @si_pcie_rreg, ptr %pcie_rreg, align 8
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %3 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @si_pcie_wreg, ptr %pcie_wreg, align 4
  %pciep_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 41
  %4 = ptrtoint ptr %pciep_rreg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @si_pciep_rreg, ptr %pciep_rreg, align 8
  %pciep_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %5 = ptrtoint ptr %pciep_wreg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @si_pciep_wreg, ptr %pciep_wreg, align 4
  %uvd_ctx_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 46
  %6 = ptrtoint ptr %uvd_ctx_rreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @si_uvd_ctx_rreg, ptr %uvd_ctx_rreg, align 4
  %uvd_ctx_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %7 = ptrtoint ptr %uvd_ctx_wreg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @si_uvd_ctx_wreg, ptr %uvd_ctx_wreg, align 8
  %didt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 49
  %8 = ptrtoint ptr %didt_rreg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %didt_rreg, align 8
  %didt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 50
  %9 = ptrtoint ptr %didt_wreg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %didt_wreg, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %10 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @si_asic_funcs, ptr %asic_funcs, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5465, i32 noundef 0) #8
  %shr.i = lshr i32 %call.i, 28
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 7
  %11 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i, ptr %rev_id, align 8
  %external_rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 8
  %12 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 255, ptr %external_rev_id, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %13 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_type, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %14, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb11
    i32 3, label %sw.bb17
    i32 4, label %sw.bb21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %16 = ptrtoint ptr %cg_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 129627, ptr %cg_flags, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %17 = ptrtoint ptr %pg_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pg_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i)
  %cmp = icmp ult i32 %call.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp3 = icmp eq i32 %shr.i, 1
  %cond = select i1 %cmp3, i32 5, i32 6
  %cond4 = select i1 %cmp, i32 1, i32 %cond
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %18 = ptrtoint ptr %cg_flags7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 130011, ptr %cg_flags7, align 8
  %pg_flags8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %19 = ptrtoint ptr %pg_flags8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pg_flags8, align 4
  %add = add nuw nsw i32 %shr.i, 20
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %20 = ptrtoint ptr %cg_flags12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 130939, ptr %cg_flags12, align 8
  %pg_flags13 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %21 = ptrtoint ptr %pg_flags13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pg_flags13, align 4
  %add15 = add nuw nsw i32 %shr.i, 40
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags18 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %22 = ptrtoint ptr %cg_flags18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 113627, ptr %cg_flags18, align 8
  %pg_flags19 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %23 = ptrtoint ptr %pg_flags19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pg_flags19, align 4
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags22 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %24 = ptrtoint ptr %cg_flags22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 105435, ptr %cg_flags22, align 8
  %pg_flags23 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %25 = ptrtoint ptr %pg_flags23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pg_flags23, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb21, %sw.bb17, %sw.bb11, %sw.bb6, %sw.bb
  %cond4.sink = phi i32 [ %cond4, %sw.bb ], [ %add, %sw.bb6 ], [ %add15, %sw.bb11 ], [ 60, %sw.bb17 ], [ 70, %sw.bb21 ]
  %26 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond4.sink, ptr %external_rev_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_sw_init(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_sw_fini(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_common_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %lnkcap.i = alloca i32, align 4
  %tmp16.i = alloca i16, align 2
  %bridge_cfg.i = alloca i16, align 2
  %gpu_cfg.i = alloca i16, align 2
  %bridge_cfg2.i = alloca i16, align 2
  %gpu_cfg2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %call.i = tail call i32 @pcie_get_readrq(ptr noundef %1) #8
  %2 = tail call i32 @llvm.cttz.i32(i32 %call.i, i1 true) #8, !range !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %iszero.i = icmp eq i32 %call.i, 0
  %3 = trunc i32 %2 to i16
  %4 = add nsw i16 %3, -7
  %trunc.i = select i1 %iszero.i, i16 -8, i16 %4
  %5 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %trunc.i, label %entry.si_fix_pci_max_read_req_size.exit_crit_edge [
    i16 0, label %entry.if.then.i_crit_edge
    i16 6, label %entry.if.then.i_crit_edge28
    i16 7, label %entry.if.then.i_crit_edge29
  ]

entry.if.then.i_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.si_fix_pci_max_read_req_size.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_fix_pci_max_read_req_size.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge28, %entry.if.then.i_crit_edge29
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %call11.i = tail call i32 @pcie_set_readrq(ptr noundef %7, i32 noundef 512) #8
  br label %si_fix_pci_max_read_req_size.exit

si_fix_pci_max_read_req_size.exit:                ; preds = %if.then.i, %entry.si_fix_pci_max_read_req_size.exit_crit_edge
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %8 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_type.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %9, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %si_fix_pci_max_read_req_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @tahiti_golden_registers, i32 noundef 108) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @tahiti_golden_rlc_registers, i32 noundef 21) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @tahiti_mgcg_cgcg_init, i32 noundef 378) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @tahiti_golden_registers2, i32 noundef 3) #8
  br label %si_init_golden_registers.exit

sw.bb1.i:                                         ; preds = %si_fix_pci_max_read_req_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @pitcairn_golden_registers, i32 noundef 96) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @pitcairn_golden_rlc_registers, i32 noundef 18) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @pitcairn_mgcg_cgcg_init, i32 noundef 282) #8
  br label %si_init_golden_registers.exit

sw.bb2.i:                                         ; preds = %si_fix_pci_max_read_req_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @verde_golden_registers, i32 noundef 102) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @verde_golden_rlc_registers, i32 noundef 18) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @verde_mgcg_cgcg_init, i32 noundef 288) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @verde_pg_init, i32 noundef 369) #8
  br label %si_init_golden_registers.exit

sw.bb3.i:                                         ; preds = %si_fix_pci_max_read_req_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @oland_golden_registers, i32 noundef 96) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @oland_golden_rlc_registers, i32 noundef 18) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @oland_mgcg_cgcg_init, i32 noundef 228) #8
  br label %si_init_golden_registers.exit

sw.bb4.i:                                         ; preds = %si_fix_pci_max_read_req_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @hainan_golden_registers, i32 noundef 102) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @hainan_golden_registers2, i32 noundef 3) #8
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @hainan_mgcg_cgcg_init, i32 noundef 219) #8
  br label %si_init_golden_registers.exit

do.body.i:                                        ; preds = %si_fix_pci_max_read_req_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/si.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2229, 0\0A.popsection", ""() #8, !srcloc !105
  unreachable

si_init_golden_registers.exit:                    ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %self.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16.i) #8
  %17 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %tmp16.i, align 2, !annotation !106
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %si_init_golden_registers.exit.si_pcie_gen3_enable.exit_crit_edge, label %if.end.i

si_init_golden_registers.exit.si_pcie_gen3_enable.exit_crit_edge: ; preds = %si_init_golden_registers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end.i:                                         ; preds = %si_init_golden_registers.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_pcie_gen2 to i32))
  %20 = load i32, ptr @amdgpu_pcie_gen2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.end.i.si_pcie_gen3_enable.exit_crit_edge, label %if.end4.i

if.end.i.si_pcie_gen3_enable.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end4.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end4.i.si_pcie_gen3_enable.exit_crit_edge

if.end4.i.si_pcie_gen3_enable.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end6.i:                                        ; preds = %if.end4.i
  %pcie_gen_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 18
  %23 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcie_gen_mask.i, align 8
  %and7.i = and i32 %24, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.si_pcie_gen3_enable.exit_crit_edge, label %if.end10.i

if.end6.i.si_pcie_gen3_enable.exit_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end10.i:                                       ; preds = %if.end6.i
  %pciep_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 41
  %25 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pciep_rreg.i, align 8
  %call11.i5 = tail call i32 %26(ptr noundef %handle, i32 noundef 164) #8
  %and12.i = lshr i32 %call11.i5, 13
  %shr.i = and i32 %and12.i, 3
  %27 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pcie_gen_mask.i, align 8
  %and15.i = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp18.i = icmp eq i32 %shr.i, 2
  br i1 %cmp18.i, label %if.then17.i.cleanup.sink.split.i_crit_edge, label %if.then17.i.if.end46.sink.split.i_crit_edge

if.then17.i.if.end46.sink.split.i_crit_edge:      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.sink.split.i

if.then17.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end10.i
  %and29.i = and i32 %28, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else.i.if.end46.i_crit_edge, label %if.then31.i

if.else.i.if.end46.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp32.i = icmp eq i32 %shr.i, 1
  br i1 %cmp32.i, label %if.then31.i.cleanup.sink.split.i_crit_edge, label %if.then31.i.if.end46.sink.split.i_crit_edge

if.then31.i.if.end46.sink.split.i_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.sink.split.i

if.then31.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end46.sink.split.i:                            ; preds = %if.then31.i.if.end46.sink.split.i_crit_edge, %if.then17.i.if.end46.sink.split.i_crit_edge
  %.str.23.sink.i = phi ptr [ @.str.17, %if.then17.i.if.end46.sink.split.i_crit_edge ], [ @.str.23, %if.then31.i.if.end46.sink.split.i_crit_edge ]
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink.i) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.sink.split.i, %if.else.i.if.end46.i_crit_edge
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 19
  %29 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.not.i = icmp eq i8 %30, 0
  br i1 %tobool.i.not.i, label %if.end46.i.si_pcie_gen3_enable.exit_crit_edge, label %lor.lhs.false.i

if.end46.i.si_pcie_gen3_enable.exit_crit_edge:    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

lor.lhs.false.i:                                  ; preds = %if.end46.i
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 4
  %pcie_cap.i.i302.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %pcie_cap.i.i302.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pcie_cap.i.i302.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i303.not.i = icmp eq i8 %34, 0
  br i1 %tobool.i303.not.i, label %lor.lhs.false.i.si_pcie_gen3_enable.exit_crit_edge, label %if.end51.i

lor.lhs.false.i.si_pcie_gen3_enable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end51.i:                                       ; preds = %lor.lhs.false.i
  %35 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pcie_gen_mask.i, align 8
  %and54.i = and i32 %36, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp57.not.i = icmp eq i32 %shr.i, 2
  %or.cond.i = select i1 %tobool55.not.i, i1 true, i1 %cmp57.not.i
  br i1 %or.cond.i, label %if.end51.i.if.end161.i_crit_edge, label %if.then58.i

if.end51.i.if.end161.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161.i

if.then58.i:                                      ; preds = %if.end51.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bridge_cfg.i) #8
  %37 = ptrtoint ptr %bridge_cfg.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %bridge_cfg.i, align 2, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gpu_cfg.i) #8
  %38 = ptrtoint ptr %gpu_cfg.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %gpu_cfg.i, align 2, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bridge_cfg2.i) #8
  %39 = ptrtoint ptr %bridge_cfg2.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %bridge_cfg2.i, align 2, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gpu_cfg2.i) #8
  %40 = ptrtoint ptr %gpu_cfg2.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %gpu_cfg2.i, align 2, !annotation !106
  %call60.i = call i32 @pcie_capability_read_word(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %bridge_cfg.i) #8
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 4
  %call62.i = call i32 @pcie_capability_read_word(ptr noundef %42, i32 noundef 16, ptr noundef nonnull %gpu_cfg.i) #8
  %43 = ptrtoint ptr %bridge_cfg.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bridge_cfg.i, align 2
  %45 = or i16 %44, 512
  %46 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %tmp16.i, align 2
  %call64.i = call i32 @pcie_capability_write_word(ptr noundef %16, i32 noundef 16, i16 noundef zeroext %45) #8
  %47 = ptrtoint ptr %gpu_cfg.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %gpu_cfg.i, align 2
  %49 = or i16 %48, 512
  %50 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %tmp16.i, align 2
  %51 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i, align 4
  %call69.i = call i32 @pcie_capability_write_word(ptr noundef %52, i32 noundef 16, i16 noundef zeroext %49) #8
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %53 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcie_rreg.i, align 8
  %call70.i = call i32 %54(ptr noundef %handle, i32 noundef 40) #8
  %and71.i = lshr i32 %call70.i, 5
  %shr72.i = and i32 %and71.i, 7
  %and73.i = lshr i32 %call70.i, 2
  %shr74.i = and i32 %and73.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr74.i, i32 %shr72.i)
  %cmp75.i = icmp ult i32 %shr74.i, %shr72.i
  br i1 %cmp75.i, label %if.then77.i, label %if.then58.i.if.end87.i_crit_edge

if.then58.i.if.end87.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

if.then77.i:                                      ; preds = %if.then58.i
  %55 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pciep_rreg.i, align 8
  %call79.i = call i32 %56(ptr noundef %handle, i32 noundef 162) #8
  %and80.i = and i32 %call79.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.then77.i.if.end87.i_crit_edge, label %if.then82.i

if.then77.i.if.end87.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

if.then82.i:                                      ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  %and83.i = and i32 %call79.i, -13576
  %or84.i = or i32 %shr72.i, %and83.i
  %or85.i = or i32 %or84.i, 5376
  %pciep_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %57 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pciep_wreg.i, align 4
  call void %58(ptr noundef %handle, i32 noundef 162, i32 noundef %or85.i) #8
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then82.i, %if.then77.i.if.end87.i_crit_edge, %if.then58.i.if.end87.i_crit_edge
  %pciep_wreg106.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %if.end87.i
  %i.0305.i = phi i32 [ 0, %if.end87.i ], [ %inc.i, %while.end.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 4
  %call91.i = call i32 @pcie_capability_read_word(ptr noundef %60, i32 noundef 10, ptr noundef nonnull %tmp16.i) #8
  %61 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tmp16.i, align 2
  %63 = and i16 %62, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool94.not.i = icmp eq i16 %63, 0
  br i1 %tobool94.not.i, label %if.end96.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end96.i:                                       ; preds = %for.body.i
  %call97.i = call i32 @pcie_capability_read_word(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %bridge_cfg.i) #8
  %64 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev.i, align 4
  %call99.i = call i32 @pcie_capability_read_word(ptr noundef %65, i32 noundef 16, ptr noundef nonnull %gpu_cfg.i) #8
  %call100.i = call i32 @pcie_capability_read_word(ptr noundef %16, i32 noundef 48, ptr noundef nonnull %bridge_cfg2.i) #8
  %66 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev.i, align 4
  %call102.i = call i32 @pcie_capability_read_word(ptr noundef %67, i32 noundef 48, ptr noundef nonnull %gpu_cfg2.i) #8
  %68 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pciep_rreg.i, align 8
  %call104.i = call i32 %69(ptr noundef %handle, i32 noundef 182) #8
  %or105.i = or i32 %call104.i, 8192
  %70 = ptrtoint ptr %pciep_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pciep_wreg106.i, align 4
  call void %71(ptr noundef %handle, i32 noundef 182, i32 noundef %or105.i) #8
  %72 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pciep_rreg.i, align 8
  %call108.i = call i32 %73(ptr noundef %handle, i32 noundef 182) #8
  %or109.i = or i32 %call108.i, 32
  %74 = ptrtoint ptr %pciep_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pciep_wreg106.i, align 4
  call void %75(ptr noundef %handle, i32 noundef 182, i32 noundef %or109.i) #8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end96.i
  %__ms.0304.i = phi i32 [ 100, %if.end96.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.0304.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #8
  %tobool111.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool111.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %call112.i = call i32 @pcie_capability_read_word(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %tmp16.i) #8
  %77 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tmp16.i, align 2
  %79 = and i16 %78, -513
  %80 = ptrtoint ptr %bridge_cfg.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %bridge_cfg.i, align 2
  %82 = and i16 %81, 512
  %or119298.i = or i16 %82, %79
  store i16 %or119298.i, ptr %tmp16.i, align 2
  %call121.i = call i32 @pcie_capability_write_word(ptr noundef %16, i32 noundef 16, i16 noundef zeroext %or119298.i) #8
  %83 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i, align 4
  %call123.i = call i32 @pcie_capability_read_word(ptr noundef %84, i32 noundef 16, ptr noundef nonnull %tmp16.i) #8
  %85 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %tmp16.i, align 2
  %87 = and i16 %86, -513
  %88 = ptrtoint ptr %gpu_cfg.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %gpu_cfg.i, align 2
  %90 = and i16 %89, 512
  %or130299.i = or i16 %90, %87
  store i16 %or130299.i, ptr %tmp16.i, align 2
  %91 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev.i, align 4
  %call133.i = call i32 @pcie_capability_write_word(ptr noundef %92, i32 noundef 16, i16 noundef zeroext %or130299.i) #8
  %call134.i = call i32 @pcie_capability_read_word(ptr noundef %16, i32 noundef 48, ptr noundef nonnull %tmp16.i) #8
  %93 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %tmp16.i, align 2
  %95 = and i16 %94, -913
  %96 = ptrtoint ptr %bridge_cfg2.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %bridge_cfg2.i, align 2
  %98 = and i16 %97, 912
  %or141300.i = or i16 %98, %95
  store i16 %or141300.i, ptr %tmp16.i, align 2
  %call143.i = call i32 @pcie_capability_write_word(ptr noundef %16, i32 noundef 48, i16 noundef zeroext %or141300.i) #8
  %99 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev.i, align 4
  %call145.i = call i32 @pcie_capability_read_word(ptr noundef %100, i32 noundef 48, ptr noundef nonnull %tmp16.i) #8
  %101 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %tmp16.i, align 2
  %103 = and i16 %102, -913
  %104 = ptrtoint ptr %gpu_cfg2.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %gpu_cfg2.i, align 2
  %106 = and i16 %105, 912
  %or152301.i = or i16 %106, %103
  store i16 %or152301.i, ptr %tmp16.i, align 2
  %107 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev.i, align 4
  %call155.i = call i32 @pcie_capability_write_word(ptr noundef %108, i32 noundef 48, i16 noundef zeroext %or152301.i) #8
  %109 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pciep_rreg.i, align 8
  %call157.i = call i32 %110(ptr noundef %handle, i32 noundef 182) #8
  %and158.i = and i32 %call157.i, -8193
  %111 = ptrtoint ptr %pciep_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pciep_wreg106.i, align 4
  call void %112(ptr noundef %handle, i32 noundef 182, i32 noundef %and158.i) #8
  %inc.i = add nuw nsw i32 %i.0305.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %while.end.i.for.end.i_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

while.end.i.for.end.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %while.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gpu_cfg2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bridge_cfg2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gpu_cfg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bridge_cfg.i) #8
  br label %if.end161.i

if.end161.i:                                      ; preds = %for.end.i, %if.end51.i.if.end161.i_crit_edge
  %or162.i = and i32 %call11.i5, -353
  %and163.i = or i32 %or162.i, 288
  %pciep_wreg164.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %113 = ptrtoint ptr %pciep_wreg164.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pciep_wreg164.i, align 4
  call void %114(ptr noundef %handle, i32 noundef 164, i32 noundef %and163.i) #8
  %115 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev.i, align 4
  %call166.i = call i32 @pcie_capability_read_word(ptr noundef %116, i32 noundef 48, ptr noundef nonnull %tmp16.i) #8
  %117 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %tmp16.i, align 2
  %119 = and i16 %118, -16
  %120 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pcie_gen_mask.i, align 8
  %and172.i = and i32 %121, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.i)
  %tobool173.not.i = icmp eq i32 %and172.i, 0
  br i1 %tobool173.not.i, label %if.else178.i, label %if.then174.i

if.then174.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = or i16 %119, 3
  %123 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %tmp16.i, align 2
  br label %if.end192.i

if.else178.i:                                     ; preds = %if.end161.i
  %and181.i = and i32 %121, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  br i1 %tobool182.not.i, label %if.else187.i, label %if.then183.i

if.then183.i:                                     ; preds = %if.else178.i
  call void @__sanitizer_cov_trace_pc() #10
  %124 = or i16 %119, 2
  %125 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %tmp16.i, align 2
  br label %if.end192.i

if.else187.i:                                     ; preds = %if.else178.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = or i16 %119, 1
  %127 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %tmp16.i, align 2
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else187.i, %if.then183.i, %if.then174.i
  %128 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev.i, align 4
  %130 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %tmp16.i, align 2
  %call194.i = call i32 @pcie_capability_write_word(ptr noundef %129, i32 noundef 48, i16 noundef zeroext %131) #8
  %132 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pciep_rreg.i, align 8
  %call196.i = call i32 %133(ptr noundef %handle, i32 noundef 164) #8
  %or197.i = or i32 %call196.i, 512
  %134 = ptrtoint ptr %pciep_wreg164.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pciep_wreg164.i, align 4
  call void %135(ptr noundef %handle, i32 noundef 164, i32 noundef %or197.i) #8
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %136 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp200306.i = icmp sgt i32 %137, 0
  br i1 %cmp200306.i, label %if.end192.i.for.body202.i_crit_edge, label %if.end192.i.si_pcie_gen3_enable.exit_crit_edge

if.end192.i.si_pcie_gen3_enable.exit_crit_edge:   ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end192.i.for.body202.i_crit_edge:              ; preds = %if.end192.i
  br label %for.body202.i

for.body202.i:                                    ; preds = %if.end209.i.for.body202.i_crit_edge, %if.end192.i.for.body202.i_crit_edge
  %i.1307.i = phi i32 [ %inc211.i, %if.end209.i.for.body202.i_crit_edge ], [ 0, %if.end192.i.for.body202.i_crit_edge ]
  %138 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pciep_rreg.i, align 8
  %call204.i = call i32 %139(ptr noundef %handle, i32 noundef 164) #8
  %and205.i = and i32 %call204.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205.i)
  %cmp206.i = icmp eq i32 %and205.i, 0
  br i1 %cmp206.i, label %for.body202.i.si_pcie_gen3_enable.exit_crit_edge, label %if.end209.i

for.body202.i.si_pcie_gen3_enable.exit_crit_edge: ; preds = %for.body202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end209.i:                                      ; preds = %for.body202.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %140(i32 noundef 214748) #8
  %inc211.i = add nuw nsw i32 %i.1307.i, 1
  %141 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %usec_timeout.i, align 8
  %cmp200.i = icmp slt i32 %inc211.i, %142
  br i1 %cmp200.i, label %if.end209.i.for.body202.i_crit_edge, label %if.end209.i.si_pcie_gen3_enable.exit_crit_edge

if.end209.i.si_pcie_gen3_enable.exit_crit_edge:   ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_pcie_gen3_enable.exit

if.end209.i.for.body202.i_crit_edge:              ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body202.i

cleanup.sink.split.i:                             ; preds = %if.then31.i.cleanup.sink.split.i_crit_edge, %if.then17.i.cleanup.sink.split.i_crit_edge
  %.str.20.sink.i = phi ptr [ @.str.14, %if.then17.i.cleanup.sink.split.i_crit_edge ], [ @.str.20, %if.then31.i.cleanup.sink.split.i_crit_edge ]
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink.i) #11
  br label %si_pcie_gen3_enable.exit

si_pcie_gen3_enable.exit:                         ; preds = %cleanup.sink.split.i, %if.end209.i.si_pcie_gen3_enable.exit_crit_edge, %for.body202.i.si_pcie_gen3_enable.exit_crit_edge, %if.end192.i.si_pcie_gen3_enable.exit_crit_edge, %lor.lhs.false.i.si_pcie_gen3_enable.exit_crit_edge, %if.end46.i.si_pcie_gen3_enable.exit_crit_edge, %if.end6.i.si_pcie_gen3_enable.exit_crit_edge, %if.end4.i.si_pcie_gen3_enable.exit_crit_edge, %if.end.i.si_pcie_gen3_enable.exit_crit_edge, %si_init_golden_registers.exit.si_pcie_gen3_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_aspm to i32))
  %143 = load i32, ptr @amdgpu_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i6 = icmp eq i32 %143, 0
  br i1 %cmp.i6, label %si_pcie_gen3_enable.exit.si_program_aspm.exit_crit_edge, label %if.end.i10

si_pcie_gen3_enable.exit.si_program_aspm.exit_crit_edge: ; preds = %si_pcie_gen3_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_program_aspm.exit

if.end.i10:                                       ; preds = %si_pcie_gen3_enable.exit
  %flags.i7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %144 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags.i7, align 8
  %and.i8 = and i32 %145, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %if.end2.i, label %if.end.i10.si_program_aspm.exit_crit_edge

if.end.i10.si_program_aspm.exit_crit_edge:        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_program_aspm.exit

if.end2.i:                                        ; preds = %if.end.i10
  %pciep_rreg.i11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 41
  %146 = ptrtoint ptr %pciep_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pciep_rreg.i11, align 8
  %call.i12 = call i32 %147(ptr noundef %handle, i32 noundef 163) #8
  %and3.i = and i32 %call.i12, -512
  %or.i = or i32 %and3.i, 292
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i12, i32 %or.i)
  %cmp4.not.i = icmp eq i32 %call.i12, %or.i
  br i1 %cmp4.not.i, label %if.end2.i.if.end6.i14_crit_edge, label %if.then5.i

if.end2.i.if.end6.i14_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i14

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %pciep_wreg.i13 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %148 = ptrtoint ptr %pciep_wreg.i13 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pciep_wreg.i13, align 4
  call void %149(ptr noundef %handle, i32 noundef 163, i32 noundef %or.i) #8
  br label %if.end6.i14

if.end6.i14:                                      ; preds = %if.then5.i, %if.end2.i.if.end6.i14_crit_edge
  %150 = ptrtoint ptr %pciep_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pciep_rreg.i11, align 8
  %call8.i = call i32 %151(ptr noundef %handle, i32 noundef 181) #8
  %or9.i = or i32 %call8.i, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %or9.i)
  %cmp10.not.i = icmp eq i32 %call8.i, %or9.i
  br i1 %cmp10.not.i, label %if.end6.i14.if.end13.i_crit_edge, label %if.then11.i

if.end6.i14.if.end13.i_crit_edge:                 ; preds = %if.end6.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end6.i14
  call void @__sanitizer_cov_trace_pc() #10
  %pciep_wreg12.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %152 = ptrtoint ptr %pciep_wreg12.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pciep_wreg12.i, align 4
  call void %153(ptr noundef %handle, i32 noundef 181, i32 noundef %or9.i) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end6.i14.if.end13.i_crit_edge
  %pcie_rreg.i15 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %154 = ptrtoint ptr %pcie_rreg.i15 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pcie_rreg.i15, align 8
  %call14.i = call i32 %155(ptr noundef %handle, i32 noundef 64) #8
  %or15.i = or i32 %call14.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i, i32 %or15.i)
  %cmp16.not.i = icmp eq i32 %call14.i, %or15.i
  br i1 %cmp16.not.i, label %if.end13.i.if.end18.i_crit_edge, label %if.then17.i16

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then17.i16:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %156 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pcie_wreg.i, align 4
  call void %157(ptr noundef %handle, i32 noundef 64, i32 noundef %or15.i) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i16, %if.end13.i.if.end18.i_crit_edge
  %158 = ptrtoint ptr %pciep_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pciep_rreg.i11, align 8
  %call20.i = call i32 %159(ptr noundef %handle, i32 noundef 160) #8
  %and21.i = and i32 %call20.i, -130817
  %or29.i = or i32 %and21.i, 30464
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %or29.i)
  %cmp31.not.i = icmp eq i32 %call20.i, %or29.i
  br i1 %cmp31.not.i, label %if.end18.i.if.then36.i_crit_edge, label %if.then32.i

if.end18.i.if.then36.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i

if.then32.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %pciep_wreg33.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %160 = ptrtoint ptr %pciep_wreg33.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pciep_wreg33.i, align 4
  call void %161(ptr noundef %handle, i32 noundef 160, i32 noundef %or29.i) #8
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then32.i, %if.end18.i.if.then36.i_crit_edge
  %pcie_idx_lock.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 38
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 18, i32 noundef 0) #8
  %call5.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i.i) #8
  %or39.i = or i32 %call5.i.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i, i32 %or39.i)
  %cmp40.not.i = icmp eq i32 %call5.i.i, %or39.i
  br i1 %cmp40.not.i, label %if.then36.i.if.end42.i_crit_edge, label %if.then41.i

if.then36.i.if.end42.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then41.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i464.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 18, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12, i32 noundef %or39.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i464.i) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %if.then36.i.if.end42.i_crit_edge
  %call2.i466.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 19, i32 noundef 0) #8
  %call5.i467.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i466.i) #8
  %or45.i = or i32 %call5.i467.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i467.i, i32 %or45.i)
  %cmp46.not.i = icmp eq i32 %call5.i467.i, %or45.i
  br i1 %cmp46.not.i, label %if.end42.i.if.end48.i_crit_edge, label %if.then47.i

if.end42.i.if.end48.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i469.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 19, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12, i32 noundef %or45.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i469.i) #8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end42.i.if.end48.i_crit_edge
  %call2.i471.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 18, i32 noundef 0) #8
  %call5.i472.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 20, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i471.i) #8
  %or51.i = or i32 %call5.i472.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i472.i, i32 %or51.i)
  %cmp52.not.i = icmp eq i32 %call5.i472.i, %or51.i
  br i1 %cmp52.not.i, label %if.end48.i.if.end54.i_crit_edge, label %if.then53.i

if.end48.i.if.end54.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i474.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 18, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 20, i32 noundef %or51.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i474.i) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end48.i.if.end54.i_crit_edge
  %call2.i476.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 19, i32 noundef 0) #8
  %call5.i477.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 20, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i476.i) #8
  %or57.i = or i32 %call5.i477.i, 8064
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i477.i, i32 %or57.i)
  %cmp58.not.i = icmp eq i32 %call5.i477.i, %or57.i
  br i1 %cmp58.not.i, label %if.end54.i.if.end60.i_crit_edge, label %if.then59.i

if.end54.i.if.end60.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then59.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i479.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 19, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 20, i32 noundef %or57.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i479.i) #8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %if.end54.i.if.end60.i_crit_edge
  %162 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %asic_type.i, align 8
  %.off.i = add i32 %163, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end60.i.if.end105.i_crit_edge, label %if.then64.i

if.end60.i.if.end105.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.i

if.then64.i:                                      ; preds = %if.end60.i
  %call2.i481.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 18, i32 noundef 0) #8
  %call5.i482.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i481.i) #8
  %and66.i = and i32 %call5.i482.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i482.i, i32 %and66.i)
  %cmp67.not.i = icmp eq i32 %call5.i482.i, %and66.i
  br i1 %cmp67.not.i, label %if.then64.i.if.end69.i_crit_edge, label %if.then68.i

if.then64.i.if.end69.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then68.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i484.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 18, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12, i32 noundef %and66.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i484.i) #8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then68.i, %if.then64.i.if.end69.i_crit_edge
  %call2.i486.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 19, i32 noundef 0) #8
  %call5.i487.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i486.i) #8
  %and71.i18 = and i32 %call5.i487.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i487.i, i32 %and71.i18)
  %cmp72.not.i = icmp eq i32 %call5.i487.i, %and71.i18
  br i1 %cmp72.not.i, label %if.end69.i.if.end74.i_crit_edge, label %if.then73.i

if.end69.i.if.end74.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

if.then73.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i489.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 19, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12, i32 noundef %and71.i18, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i489.i) #8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then73.i, %if.end69.i.if.end74.i_crit_edge
  %call2.i491.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 23, i32 noundef 0) #8
  %call5.i492.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i491.i) #8
  %and76.i = and i32 %call5.i492.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i492.i, i32 %and76.i)
  %cmp77.not.i = icmp eq i32 %call5.i492.i, %and76.i
  br i1 %cmp77.not.i, label %if.end74.i.if.end79.i_crit_edge, label %if.then78.i

if.end74.i.if.end79.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i494.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 23, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12, i32 noundef %and76.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i494.i) #8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then78.i, %if.end74.i.if.end79.i_crit_edge
  %call2.i496.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 24, i32 noundef 0) #8
  %call5.i497.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i496.i) #8
  %and81.i = and i32 %call5.i497.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i497.i, i32 %and81.i)
  %cmp82.not.i = icmp eq i32 %call5.i497.i, %and81.i
  br i1 %cmp82.not.i, label %if.end79.i.if.end84.i_crit_edge, label %if.then83.i

if.end79.i.if.end84.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i

if.then83.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i499.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 24, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12, i32 noundef %and81.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i499.i) #8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then83.i, %if.end79.i.if.end84.i_crit_edge
  %call2.i501.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 18, i32 noundef 0) #8
  %call5.i502.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 20, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i501.i) #8
  %and86.i = and i32 %call5.i502.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i502.i, i32 %and86.i)
  %cmp87.not.i = icmp eq i32 %call5.i502.i, %and86.i
  br i1 %cmp87.not.i, label %if.end84.i.if.end89.i_crit_edge, label %if.then88.i

if.end84.i.if.end89.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then88.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i504.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 18, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 20, i32 noundef %and86.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i504.i) #8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then88.i, %if.end84.i.if.end89.i_crit_edge
  %call2.i506.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 19, i32 noundef 0) #8
  %call5.i507.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 20, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i506.i) #8
  %and91.i = and i32 %call5.i507.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i507.i, i32 %and91.i)
  %cmp92.not.i = icmp eq i32 %call5.i507.i, %and91.i
  br i1 %cmp92.not.i, label %if.end89.i.if.end94.i_crit_edge, label %if.then93.i

if.end89.i.if.end94.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then93.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i509.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 19, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 20, i32 noundef %and91.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i509.i) #8
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then93.i, %if.end89.i.if.end94.i_crit_edge
  %call2.i511.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 23, i32 noundef 0) #8
  %call5.i512.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 20, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i511.i) #8
  %and96.i = and i32 %call5.i512.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i512.i, i32 %and96.i)
  %cmp97.not.i = icmp eq i32 %call5.i512.i, %and96.i
  br i1 %cmp97.not.i, label %if.end94.i.if.end99.i_crit_edge, label %if.then98.i

if.end94.i.if.end99.i_crit_edge:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then98.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i514.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 23, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 20, i32 noundef %and96.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i514.i) #8
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %if.end94.i.if.end99.i_crit_edge
  %call2.i516.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 24, i32 noundef 0) #8
  %call5.i517.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 20, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i516.i) #8
  %and101.i = and i32 %call5.i517.i, -117440513
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i517.i, i32 %and101.i)
  %cmp102.not.i = icmp eq i32 %call5.i517.i, %and101.i
  br i1 %cmp102.not.i, label %if.end99.i.if.end105.i_crit_edge, label %if.then103.i

if.end99.i.if.end105.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.i

if.then103.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i519.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 24, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 20, i32 noundef %and101.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i519.i) #8
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then103.i, %if.end99.i.if.end105.i_crit_edge, %if.end60.i.if.end105.i_crit_edge
  %164 = ptrtoint ptr %pciep_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pciep_rreg.i11, align 8
  %call107.i = call i32 %165(ptr noundef %handle, i32 noundef 162) #8
  %or109.i19 = or i32 %call107.i, 6291456
  call void @__sanitizer_cov_trace_cmp4(i32 %call107.i, i32 %or109.i19)
  %cmp110.not.i = icmp eq i32 %call107.i, %or109.i19
  br i1 %cmp110.not.i, label %if.end105.i.if.end113.i_crit_edge, label %if.then111.i

if.end105.i.if.end113.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i

if.then111.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  %pciep_wreg112.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %166 = ptrtoint ptr %pciep_wreg112.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pciep_wreg112.i, align 4
  call void %167(ptr noundef %handle, i32 noundef 162, i32 noundef %or109.i19) #8
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then111.i, %if.end105.i.if.end113.i_crit_edge
  %call2.i521.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 16, i32 noundef 0) #8
  %call5.i522.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i521.i) #8
  %and115.i = and i32 %call5.i522.i, -917505
  %168 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %asic_type.i, align 8
  %.off458.i = add i32 %169, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off458.i)
  %switch459.i = icmp ult i32 %.off458.i, 2
  %or121.i = or i32 %and115.i, 655360
  %spec.select.i = select i1 %switch459.i, i32 %or121.i, i32 %and115.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i522.i, i32 %spec.select.i)
  %cmp123.not.i = icmp eq i32 %call5.i522.i, %spec.select.i
  br i1 %cmp123.not.i, label %if.end113.i.if.end125.i_crit_edge, label %if.then124.i

if.end113.i.if.end125.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.then124.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i524.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8, i32 noundef 16, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12, i32 noundef %spec.select.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i524.i) #8
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then124.i, %if.end113.i.if.end125.i_crit_edge
  %call2.i526.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 16, i32 noundef 0) #8
  %call5.i527.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 20, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i526.i) #8
  %and127.i = and i32 %call5.i527.i, -917505
  %170 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %asic_type.i, align 8
  %.off460.i = add i32 %171, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off460.i)
  %switch461.i = icmp ult i32 %.off460.i, 2
  %or134.i = or i32 %and127.i, 655360
  %spec.select462.i = select i1 %switch461.i, i32 %or134.i, i32 %and127.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i527.i, i32 %spec.select462.i)
  %cmp136.not.i = icmp eq i32 %call5.i527.i, %spec.select462.i
  br i1 %cmp136.not.i, label %if.end125.i.land.lhs.true140.i_crit_edge, label %if.then137.i

if.end125.i.land.lhs.true140.i_crit_edge:         ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true140.i

if.then137.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i529.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 16, i32 noundef 16, i32 noundef 0) #8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 20, i32 noundef %spec.select462.i, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call2.i529.i) #8
  br label %land.lhs.true140.i

land.lhs.true140.i:                               ; preds = %if.then137.i, %if.end125.i.land.lhs.true140.i_crit_edge
  %172 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev.i, align 4
  %bus.i21 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %bus.i21 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bus.i21, align 8
  %parent.i.i22 = getelementptr inbounds %struct.pci_bus, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %parent.i.i22 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %parent.i.i22, align 8
  %tobool.not.i.i23 = icmp eq ptr %177, null
  br i1 %tobool.not.i.i23, label %land.lhs.true140.i.if.end200.i_crit_edge, label %if.then142.i

land.lhs.true140.i.if.end200.i_crit_edge:         ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i

if.then142.i:                                     ; preds = %land.lhs.true140.i
  %self.i24 = getelementptr inbounds %struct.pci_bus, ptr %175, i32 0, i32 4
  %178 = ptrtoint ptr %self.i24 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %self.i24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnkcap.i) #8
  %180 = ptrtoint ptr %lnkcap.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %lnkcap.i, align 4, !annotation !106
  %call145.i25 = call i32 @pcie_capability_read_dword(ptr noundef %179, i32 noundef 12, ptr noundef nonnull %lnkcap.i) #8
  %181 = ptrtoint ptr %lnkcap.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %lnkcap.i, align 4
  %and146.i = and i32 %182, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.not.i = icmp eq i32 %and146.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnkcap.i) #8
  br i1 %tobool147.not.not.i, label %if.then142.i.if.end200.i_crit_edge, label %if.then152.i

if.then142.i.if.end200.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i

if.then152.i:                                     ; preds = %if.then142.i
  %183 = ptrtoint ptr %pciep_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pciep_rreg.i11, align 8
  %call154.i = call i32 %184(ptr noundef %handle, i32 noundef 177) #8
  %or155.i = or i32 %call154.i, 393216
  call void @__sanitizer_cov_trace_cmp4(i32 %call154.i, i32 %or155.i)
  %cmp156.not.i = icmp eq i32 %call154.i, %or155.i
  br i1 %cmp156.not.i, label %if.then152.i.if.end159.i_crit_edge, label %if.then157.i

if.then152.i.if.end159.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159.i

if.then157.i:                                     ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  %pciep_wreg158.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %185 = ptrtoint ptr %pciep_wreg158.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pciep_wreg158.i, align 4
  call void %186(ptr noundef %handle, i32 noundef 177, i32 noundef %or155.i) #8
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then157.i, %if.then152.i.if.end159.i_crit_edge
  %call160.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 411, i32 noundef 0) #8
  %and161.i = and i32 %call160.i, -65536
  %or162.i26 = or i32 %and161.i, 257
  call void @__sanitizer_cov_trace_cmp4(i32 %call160.i, i32 %or162.i26)
  %cmp163.not.i = icmp eq i32 %call160.i, %or162.i26
  br i1 %cmp163.not.i, label %if.end159.i.if.end165.i_crit_edge, label %if.then164.i

if.end159.i.if.end165.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165.i

if.then164.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 411, i32 noundef %or162.i26, i32 noundef 0) #8
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then164.i, %if.end159.i.if.end165.i_crit_edge
  %call166.i27 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 412, i32 noundef 0) #8
  %and167.i = and i32 %call166.i27, -65536
  %or168.i = or i32 %and167.i, 257
  call void @__sanitizer_cov_trace_cmp4(i32 %call166.i27, i32 %or168.i)
  %cmp169.not.i = icmp eq i32 %call166.i27, %or168.i
  br i1 %cmp169.not.i, label %if.end165.i.if.end171.i_crit_edge, label %if.then170.i

if.end165.i.if.end171.i_crit_edge:                ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171.i

if.then170.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 412, i32 noundef %or168.i, i32 noundef 0) #8
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then170.i, %if.end165.i.if.end171.i_crit_edge
  %call172.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 408, i32 noundef 0) #8
  %and173.i = and i32 %call172.i, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %call172.i, i32 %and173.i)
  %cmp174.not.i = icmp eq i32 %call172.i, %and173.i
  br i1 %cmp174.not.i, label %if.end171.i.if.end176.i_crit_edge, label %if.then175.i

if.end171.i.if.end176.i_crit_edge:                ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176.i

if.then175.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 408, i32 noundef %and173.i, i32 noundef 0) #8
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.then175.i, %if.end171.i.if.end176.i_crit_edge
  %call177.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 409, i32 noundef 0) #8
  %and178.i = and i32 %call177.i, -9
  call void @__sanitizer_cov_trace_cmp4(i32 %call177.i, i32 %and178.i)
  %cmp179.not.i = icmp eq i32 %call177.i, %and178.i
  br i1 %cmp179.not.i, label %if.end176.i.if.end181.i_crit_edge, label %if.then180.i

if.end176.i.if.end181.i_crit_edge:                ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181.i

if.then180.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 409, i32 noundef %and178.i, i32 noundef 0) #8
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.then180.i, %if.end176.i.if.end181.i_crit_edge
  %call182.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 407, i32 noundef 0) #8
  %and183.i = and i32 %call182.i, -65281
  %or184.i = or i32 %and183.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %call182.i, i32 %or184.i)
  %cmp185.not.i = icmp eq i32 %call182.i, %or184.i
  br i1 %cmp185.not.i, label %if.end181.i.if.end187.i_crit_edge, label %if.then186.i

if.end181.i.if.end187.i_crit_edge:                ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187.i

if.then186.i:                                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 407, i32 noundef %or184.i, i32 noundef 0) #8
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.then186.i, %if.end181.i.if.end187.i_crit_edge
  %call188.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 390, i32 noundef 0) #8
  %and189.i = and i32 %call188.i, -201326593
  call void @__sanitizer_cov_trace_cmp4(i32 %call188.i, i32 %and189.i)
  %cmp190.not.i = icmp eq i32 %call188.i, %and189.i
  br i1 %cmp190.not.i, label %if.end187.i.if.end200.i_crit_edge, label %if.then191.i

if.end187.i.if.end200.i_crit_edge:                ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i

if.then191.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 390, i32 noundef %and189.i, i32 noundef 0) #8
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then191.i, %if.end187.i.if.end200.i_crit_edge, %if.then142.i.if.end200.i_crit_edge, %land.lhs.true140.i.if.end200.i_crit_edge
  %187 = ptrtoint ptr %pcie_rreg.i15 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pcie_rreg.i15, align 8
  %call202.i = call i32 %188(ptr noundef %handle, i32 noundef 28) #8
  %or203.i = or i32 %call202.i, 851968
  call void @__sanitizer_cov_trace_cmp4(i32 %call202.i, i32 %or203.i)
  %cmp204.not.i = icmp eq i32 %call202.i, %or203.i
  br i1 %cmp204.not.i, label %if.end200.i.if.then209.i_crit_edge, label %if.then205.i

if.end200.i.if.then209.i_crit_edge:               ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then209.i

if.then205.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg206.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %189 = ptrtoint ptr %pcie_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pcie_wreg206.i, align 4
  call void %190(ptr noundef %handle, i32 noundef 28, i32 noundef %or203.i) #8
  br label %if.then209.i

if.then209.i:                                     ; preds = %if.then205.i, %if.end200.i.if.then209.i_crit_edge
  %191 = ptrtoint ptr %pciep_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pciep_rreg.i11, align 8
  %call211.i = call i32 %192(ptr noundef %handle, i32 noundef 163) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %call211.i)
  %cmp213.i = icmp ugt i32 %call211.i, -16777217
  br i1 %cmp213.i, label %if.then214.i, label %if.then209.i.si_program_aspm.exit_crit_edge

if.then209.i.si_program_aspm.exit_crit_edge:      ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_program_aspm.exit

if.then214.i:                                     ; preds = %if.then209.i
  %193 = ptrtoint ptr %pcie_rreg.i15 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pcie_rreg.i15, align 8
  %call216.i = call i32 %194(ptr noundef %handle, i32 noundef 40) #8
  %195 = and i32 %call216.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %195)
  %.not.i = icmp eq i32 %195, 3
  br i1 %.not.i, label %if.then222.i, label %if.then214.i.si_program_aspm.exit_crit_edge

if.then214.i.si_program_aspm.exit_crit_edge:      ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_program_aspm.exit

if.then222.i:                                     ; preds = %if.then214.i
  %196 = ptrtoint ptr %pciep_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pciep_rreg.i11, align 8
  %call224.i = call i32 %197(ptr noundef %handle, i32 noundef 160) #8
  %and225.i = and i32 %call224.i, -3841
  call void @__sanitizer_cov_trace_cmp4(i32 %call224.i, i32 %and225.i)
  %cmp226.not.i = icmp eq i32 %call224.i, %and225.i
  br i1 %cmp226.not.i, label %if.then222.i.si_program_aspm.exit_crit_edge, label %if.then227.i

if.then222.i.si_program_aspm.exit_crit_edge:      ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_program_aspm.exit

if.then227.i:                                     ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #10
  %pciep_wreg228.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %198 = ptrtoint ptr %pciep_wreg228.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pciep_wreg228.i, align 4
  call void %199(ptr noundef %handle, i32 noundef 160, i32 noundef %and225.i) #8
  br label %si_program_aspm.exit

si_program_aspm.exit:                             ; preds = %if.then227.i, %if.then222.i.si_program_aspm.exit_crit_edge, %if.then214.i.si_program_aspm.exit_crit_edge, %if.then209.i.si_program_aspm.exit_crit_edge, %if.end.i10.si_program_aspm.exit_crit_edge, %si_pcie_gen3_enable.exit.si_program_aspm.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_hw_fini(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_suspend(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_common_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @si_common_hw_init(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si_common_is_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_wait_for_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_soft_reset(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_common_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_smc_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %reg, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 129, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_smc_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %reg, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 129, i32 noundef %v, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_pcie_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12, i32 noundef %reg, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12, i32 noundef 0) #8
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_pcie_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12, i32 noundef %reg, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13, i32 noundef %v, i32 noundef 0) #8
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_pciep_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  %and = and i32 %reg, 255
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 14, i32 noundef %and, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 14, i32 noundef 0) #8
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_pciep_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  %and = and i32 %reg, 255
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 14, i32 noundef %and, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 14, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15, i32 noundef %v, i32 noundef 0) #8
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_uvd_ctx_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uvd_ctx_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 45
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uvd_ctx_idx_lock) #8
  %and = and i32 %reg, 511
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15656, i32 noundef %and, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15657, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uvd_ctx_idx_lock, i32 noundef %call2) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_uvd_ctx_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uvd_ctx_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 45
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uvd_ctx_idx_lock) #8
  %and = and i32 %reg, 511
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15656, i32 noundef %and, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15657, i32 noundef %v, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uvd_ctx_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si_read_disabled_bios(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5384, i32 noundef 0) #8
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 204, i32 noundef 0) #8
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 206, i32 noundef 0) #8
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 192, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %d1vga_control.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %d2vga_control.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %vga_render_control.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1408, i32 noundef 0) #8
  %and = and i32 %call, -3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5384, i32 noundef %and, i32 noundef 0) #8
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and9 = and i32 %d1vga_control.0, -258
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 204, i32 noundef %and9, i32 noundef 0) #8
  %and10 = and i32 %d2vga_control.0, -258
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 206, i32 noundef %and10, i32 noundef 0) #8
  %and11 = and i32 %vga_render_control.0, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 192, i32 noundef %and11, i32 noundef 0) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %or = or i32 %call4, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1408, i32 noundef %or, i32 noundef 0) #8
  %call13 = tail call zeroext i1 @amdgpu_read_bios(ptr noundef %adev) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5384, i32 noundef %call, i32 noundef 0) #8
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %if.end12.if.end18_crit_edge, label %if.then17

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 204, i32 noundef %d1vga_control.0, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 206, i32 noundef %d2vga_control.0, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 192, i32 noundef %vga_render_control.0, i32 noundef 0) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1408, i32 noundef %call4, i32 noundef 0) #8
  ret i1 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si_read_bios_from_rom(ptr noundef %adev, ptr noundef writeonly %bios, i32 noundef %length_bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %bios, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length_bytes)
  %cmp1 = icmp eq i32 %length_bytes, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %add = add i32 %length_bytes, 3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 42, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp717.not = icmp ult i32 %add, 4
  br i1 %cmp717.not, label %if.end5.cleanup_crit_edge, label %for.body.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end5
  %div16 = lshr i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 43, i32 noundef 0) #8
  %arrayidx = getelementptr i32, ptr %bios, i32 %i.018
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %div16
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %if.end5.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_read_register(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef %reg_offset, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr [49 x %struct.amdgpu_allowed_register_entry], ptr @si_allowed_read_registers, i32 0, i32 %i.012
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %reg_offset)
  %cmp3.not = icmp eq i32 %2, %reg_offset
  br i1 %cmp3.not, label %if.end, label %for.inc.critedge

if.end:                                           ; preds = %for.body
  %3 = add nsw i32 %i.012, -46
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %tobool = icmp ult i32 %3, 3
  br i1 %tobool, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %se_num)
  %cmp.i = icmp eq i32 %se_num, -1
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %se_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sh_num)
  %cmp1.i = icmp eq i32 %sh_num, -1
  %cond5.i = select i1 %cmp1.i, i32 0, i32 %sh_num
  %4 = zext i32 %reg_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %reg_offset, label %sw.epilog.i [
    i32 9789, label %sw.bb.i
    i32 9951, label %sw.bb7.i
    i32 41172, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6.i, align 4
  br label %si_get_register_value.exit

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %user_rb_backend_disable.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 1
  %7 = ptrtoint ptr %user_rb_backend_disable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %user_rb_backend_disable.i, align 4
  br label %si_get_register_value.exit

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %raster_config.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 2
  %9 = ptrtoint ptr %raster_config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %raster_config.i, align 4
  br label %si_get_register_value.exit

sw.epilog.i:                                      ; preds = %if.then.i
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #8
  %11 = and i32 %sh_num, %se_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %if.end.thread.i, label %if.then26.i

if.end.thread.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call76.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #8
  br label %if.end30.i

if.then26.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 49
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs.i, align 4
  %select_se_sh.i = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %select_se_sh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %select_se_sh.i, align 4
  tail call void %16(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef -1) #8
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #8
  %17 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs.i, align 4
  %select_se_sh29.i = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %select_se_sh29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %select_se_sh29.i, align 4
  tail call void %20(ptr noundef %adev, i32 noundef -1, i32 noundef -1, i32 noundef -1) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end.thread.i
  %call77.i = phi i32 [ %call76.i, %if.end.thread.i ], [ %call.i, %if.then26.i ]
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #8
  br label %si_get_register_value.exit

if.else.i:                                        ; preds = %if.end
  %21 = zext i32 %reg_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %reg_offset, label %sw.default.i [
    i32 9790, label %sw.bb34.i
    i32 2520, label %sw.bb37.i
    i32 9796, label %if.else.i.sw.bb40.i_crit_edge
    i32 9797, label %if.else.i.sw.bb40.i_crit_edge18
    i32 9798, label %if.else.i.sw.bb40.i_crit_edge19
    i32 9799, label %if.else.i.sw.bb40.i_crit_edge20
    i32 9800, label %if.else.i.sw.bb40.i_crit_edge21
    i32 9801, label %if.else.i.sw.bb40.i_crit_edge22
    i32 9802, label %if.else.i.sw.bb40.i_crit_edge23
    i32 9803, label %if.else.i.sw.bb40.i_crit_edge24
    i32 9804, label %if.else.i.sw.bb40.i_crit_edge25
    i32 9805, label %if.else.i.sw.bb40.i_crit_edge26
    i32 9806, label %if.else.i.sw.bb40.i_crit_edge27
    i32 9807, label %if.else.i.sw.bb40.i_crit_edge28
    i32 9808, label %if.else.i.sw.bb40.i_crit_edge29
    i32 9809, label %if.else.i.sw.bb40.i_crit_edge30
    i32 9810, label %if.else.i.sw.bb40.i_crit_edge31
    i32 9811, label %if.else.i.sw.bb40.i_crit_edge32
    i32 9812, label %if.else.i.sw.bb40.i_crit_edge33
    i32 9813, label %if.else.i.sw.bb40.i_crit_edge34
    i32 9814, label %if.else.i.sw.bb40.i_crit_edge35
    i32 9815, label %if.else.i.sw.bb40.i_crit_edge36
    i32 9816, label %if.else.i.sw.bb40.i_crit_edge37
    i32 9817, label %if.else.i.sw.bb40.i_crit_edge38
    i32 9818, label %if.else.i.sw.bb40.i_crit_edge39
    i32 9819, label %if.else.i.sw.bb40.i_crit_edge40
    i32 9820, label %if.else.i.sw.bb40.i_crit_edge41
    i32 9821, label %if.else.i.sw.bb40.i_crit_edge42
    i32 9822, label %if.else.i.sw.bb40.i_crit_edge43
    i32 9823, label %if.else.i.sw.bb40.i_crit_edge44
    i32 9824, label %if.else.i.sw.bb40.i_crit_edge45
    i32 9825, label %if.else.i.sw.bb40.i_crit_edge46
    i32 9826, label %if.else.i.sw.bb40.i_crit_edge47
    i32 9827, label %if.else.i.sw.bb40.i_crit_edge48
  ]

if.else.i.sw.bb40.i_crit_edge48:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge47:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge46:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge45:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge44:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge43:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge42:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge41:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge40:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge39:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge38:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge37:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge36:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge35:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge34:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge33:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge32:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge31:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge30:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge29:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge28:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge27:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge26:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge25:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge24:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge23:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge22:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge21:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge20:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge19:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge18:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.else.i.sw.bb40.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

sw.bb34.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %22 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gb_addr_config.i, align 4
  br label %si_get_register_value.exit

sw.bb37.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mc_arb_ramcfg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 20
  %24 = ptrtoint ptr %mc_arb_ramcfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mc_arb_ramcfg.i, align 8
  br label %si_get_register_value.exit

sw.bb40.i:                                        ; preds = %if.else.i.sw.bb40.i_crit_edge, %if.else.i.sw.bb40.i_crit_edge18, %if.else.i.sw.bb40.i_crit_edge19, %if.else.i.sw.bb40.i_crit_edge20, %if.else.i.sw.bb40.i_crit_edge21, %if.else.i.sw.bb40.i_crit_edge22, %if.else.i.sw.bb40.i_crit_edge23, %if.else.i.sw.bb40.i_crit_edge24, %if.else.i.sw.bb40.i_crit_edge25, %if.else.i.sw.bb40.i_crit_edge26, %if.else.i.sw.bb40.i_crit_edge27, %if.else.i.sw.bb40.i_crit_edge28, %if.else.i.sw.bb40.i_crit_edge29, %if.else.i.sw.bb40.i_crit_edge30, %if.else.i.sw.bb40.i_crit_edge31, %if.else.i.sw.bb40.i_crit_edge32, %if.else.i.sw.bb40.i_crit_edge33, %if.else.i.sw.bb40.i_crit_edge34, %if.else.i.sw.bb40.i_crit_edge35, %if.else.i.sw.bb40.i_crit_edge36, %if.else.i.sw.bb40.i_crit_edge37, %if.else.i.sw.bb40.i_crit_edge38, %if.else.i.sw.bb40.i_crit_edge39, %if.else.i.sw.bb40.i_crit_edge40, %if.else.i.sw.bb40.i_crit_edge41, %if.else.i.sw.bb40.i_crit_edge42, %if.else.i.sw.bb40.i_crit_edge43, %if.else.i.sw.bb40.i_crit_edge44, %if.else.i.sw.bb40.i_crit_edge45, %if.else.i.sw.bb40.i_crit_edge46, %if.else.i.sw.bb40.i_crit_edge47, %if.else.i.sw.bb40.i_crit_edge48
  %sub.i = add nsw i32 %reg_offset, -9796
  %arrayidx43.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 27, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx43.i, align 4
  br label %si_get_register_value.exit

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call44.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #8
  br label %si_get_register_value.exit

si_get_register_value.exit:                       ; preds = %sw.default.i, %sw.bb40.i, %sw.bb37.i, %sw.bb34.i, %if.end30.i, %sw.bb13.i, %sw.bb7.i, %sw.bb.i
  %retval.2.i = phi i32 [ %call77.i, %if.end30.i ], [ %10, %sw.bb13.i ], [ %8, %sw.bb7.i ], [ %6, %sw.bb.i ], [ %call44.i, %sw.default.i ], [ %27, %sw.bb40.i ], [ %25, %sw.bb37.i ], [ %23, %sw.bb34.i ]
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.2.i, ptr %value, align 4
  br label %cleanup5

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 49
  br i1 %exitcond.not, label %for.inc.critedge.cleanup5_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.critedge.cleanup5_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup5

cleanup5:                                         ; preds = %for.inc.critedge.cleanup5_crit_edge, %si_get_register_value.exit
  %retval.2 = phi i32 [ 0, %si_get_register_value.exit ], [ -22, %for.inc.critedge.cleanup5_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_vga_set_state(ptr noundef %adev, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5385, i32 noundef 0) #8
  %and1 = and i32 %call, -3
  %and = and i32 %call, -4
  %or = or i32 %and, 2
  %temp.0 = select i1 %state, i32 %and1, i32 %or
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5385, i32 noundef %temp.0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_asic_reset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %0 = load i32, ptr @amdgpu_reset_method, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %0, label %do.end.i [
    i32 5, label %do.end
    i32 0, label %entry.do.end4_crit_edge
    i32 -1, label %entry.do.end4_crit_edge13
  ]

entry.do.end4_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %0) #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.1) #11
  %call1 = tail call i32 @amdgpu_device_pci_reset(ptr noundef %adev) #8
  br label %sw.epilog

do.end4:                                          ; preds = %do.end.i, %entry.do.end4_crit_edge, %entry.do.end4_crit_edge13
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.7) #11
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext true) #8
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 384, i32 noundef 0) #8
  %or.i.i = or i32 %call.i.i, 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 384, i32 noundef %or.i.i, i32 noundef 0) #8
  %call1.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 385, i32 noundef 0) #8
  %or2.i.i = or i32 %call1.i.i, 8388608
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 385, i32 noundef %or2.i.i, i32 noundef 0) #8
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %8 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp25.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp25.not.i.i, label %do.end4.si_set_clk_bypass_mode.exit.i_crit_edge, label %do.end4.for.body.i.i_crit_edge

do.end4.for.body.i.i_crit_edge:                   ; preds = %do.end4
  br label %for.body.i.i

do.end4.si_set_clk_bypass_mode.exit.i_crit_edge:  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_set_clk_bypass_mode.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %do.end4.for.body.i.i_crit_edge
  %i.026.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %do.end4.for.body.i.i_crit_edge ]
  %call3.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 389, i32 noundef 0) #8
  %and.i.i = and i32 %call3.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.si_set_clk_bypass_mode.exit.i_crit_edge

for.body.i.i.si_set_clk_bypass_mode.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_set_clk_bypass_mode.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %inc.i.i = add nuw i32 %i.026.i.i, 1
  %11 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %12
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.si_set_clk_bypass_mode.exit.i_crit_edge

if.end.i.i.si_set_clk_bypass_mode.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_set_clk_bypass_mode.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

si_set_clk_bypass_mode.exit.i:                    ; preds = %if.end.i.i.si_set_clk_bypass_mode.exit.i_crit_edge, %for.body.i.i.si_set_clk_bypass_mode.exit.i_crit_edge, %do.end4.si_set_clk_bypass_mode.exit.i_crit_edge
  %call4.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 385, i32 noundef 0) #8
  %and5.i.i = and i32 %call4.i.i, -75497473
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 385, i32 noundef %and5.i.i, i32 noundef 0) #8
  %call6.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2796, i32 noundef 0) #8
  %and7.i.i = and i32 %call6.i.i, -2049
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 2796, i32 noundef %and7.i.i, i32 noundef 0) #8
  %call.i13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 390, i32 noundef 0) #8
  %or.i14.i = or i32 %call.i13.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 390, i32 noundef %or.i14.i, i32 noundef 0) #8
  %call1.i15.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 384, i32 noundef 0) #8
  %or2.i16.i = or i32 %call1.i15.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 384, i32 noundef %or2.i16.i, i32 noundef 0) #8
  %call3.i17.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 384, i32 noundef 0) #8
  %or4.i.i = or i32 %call3.i17.i, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 384, i32 noundef %or4.i.i, i32 noundef 0) #8
  %call5.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 390, i32 noundef 0) #8
  %and.i18.i = and i32 %call5.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 390, i32 noundef %and.i18.i, i32 noundef 0) #8
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_clear_master(ptr noundef %14) #8
  tail call void @amdgpu_device_pci_config_reset(ptr noundef %adev) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #8
  %16 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19.not.i = icmp eq i32 %17, 0
  br i1 %cmp19.not.i, label %si_set_clk_bypass_mode.exit.i.si_gpu_pci_config_reset.exit_crit_edge, label %si_set_clk_bypass_mode.exit.i.for.body.i_crit_edge

si_set_clk_bypass_mode.exit.i.for.body.i_crit_edge: ; preds = %si_set_clk_bypass_mode.exit.i
  br label %for.body.i

si_set_clk_bypass_mode.exit.i.si_gpu_pci_config_reset.exit_crit_edge: ; preds = %si_set_clk_bypass_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_gpu_pci_config_reset.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %si_set_clk_bypass_mode.exit.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %si_set_clk_bypass_mode.exit.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5386, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_set_master(ptr noundef %19) #8
  %has_hw_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 135
  %20 = ptrtoint ptr %has_hw_reset.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %has_hw_reset.i, align 4
  br label %si_gpu_pci_config_reset.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #8
  %inc.i = add nuw i32 %i.020.i, 1
  %22 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.si_gpu_pci_config_reset.exit_crit_edge

if.end.i.si_gpu_pci_config_reset.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si_gpu_pci_config_reset.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

si_gpu_pci_config_reset.exit:                     ; preds = %if.end.i.si_gpu_pci_config_reset.exit_crit_edge, %if.then.i, %si_set_clk_bypass_mode.exit.i.si_gpu_pci_config_reset.exit_crit_edge
  %r.0.i = phi i32 [ 0, %if.then.i ], [ -22, %si_set_clk_bypass_mode.exit.i.si_gpu_pci_config_reset.exit_crit_edge ], [ -22, %if.end.i.si_gpu_pci_config_reset.exit_crit_edge ]
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %si_gpu_pci_config_reset.exit, %do.end
  %r.0 = phi i32 [ %call1, %do.end ], [ %r.0.i, %si_gpu_pci_config_reset.exit ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_asic_reset_method(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %0 = load i32, ptr @amdgpu_reset_method, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %0, label %do.end [
    i32 5, label %entry.return_crit_edge
    i32 0, label %entry.if.end4_crit_edge
    i32 -1, label %entry.if.end4_crit_edge5
  ]

entry.if.end4_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %0) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge, %entry.if.end4_crit_edge5
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_get_xclk(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 409, i32 noundef 0) #8
  %and = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 408, i32 noundef 0) #8
  %and2 = and i32 %call1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %div11 = lshr i32 %1, 2
  %spec.select = select i1 %tobool3.not, i32 %1, i32 %div11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1000, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_set_uvd_clocks(ptr noundef %adev, i32 noundef %vclk, i32 noundef %dclk) #0 align 64 {
entry:
  %fb_div = alloca i32, align 4
  %vclk_div = alloca i32, align 4
  %dclk_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_div) #8
  %0 = ptrtoint ptr %fb_div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fb_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vclk_div) #8
  %1 = ptrtoint ptr %vclk_div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vclk_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclk_div) #8
  %2 = ptrtoint ptr %dclk_div to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dclk_div, align 4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 398, i32 noundef 0) #8
  %and = and i32 %call, -1072693249
  %or = or i32 %and, 34603008
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 398, i32 noundef %or, i32 noundef 0) #8
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %or5 = or i32 %call3, 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %or5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vclk)
  %tobool.not = icmp eq i32 %vclk, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dclk)
  %tobool8.not = icmp eq i32 %dclk, 0
  %or.cond = or i1 %tobool.not, %tobool8.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = call fastcc i32 @si_calc_upll_dividers(ptr noundef %adev, i32 noundef %vclk, i32 noundef %dclk, ptr noundef nonnull %fb_div, ptr noundef nonnull %vclk_div, ptr noundef nonnull %dclk_div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body13:                                        ; preds = %if.end
  %call15 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 402, i32 noundef 0) #8
  %and16 = and i32 %call15, -513
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 402, i32 noundef %and16, i32 noundef 0) #8
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %or24 = or i32 %call22, 1536
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %or24, i32 noundef 0) #8
  %call29 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %and30 = and i32 %call29, -3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %and30, i32 noundef 0) #8
  %call36 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %and37 = and i32 %call36, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %and37, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  %call41 = tail call fastcc i32 @si_uvd_send_upll_ctlreq(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body45, label %do.body13.cleanup_crit_edge

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body45:                                        ; preds = %do.body13
  %call47 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %or49 = or i32 %call47, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %or49, i32 noundef 0) #8
  %call54 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 404, i32 noundef 0) #8
  %and55 = and i32 %call54, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 404, i32 noundef %and55, i32 noundef 0) #8
  %call61 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 399, i32 noundef 0) #8
  %and62 = and i32 %call61, -33554432
  %4 = ptrtoint ptr %fb_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_div, align 4
  %and63 = and i32 %5, 33554431
  %or64 = or i32 %and63, %and62
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 399, i32 noundef %or64, i32 noundef 0) #8
  %call69 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %and70 = and i32 %call69, -4128769
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %and70, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 307200, i32 %5)
  %cmp = icmp ult i32 %5, 307200
  %call77 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 401, i32 noundef 0) #8
  %and78 = and i32 %call77, -131073
  %masksel = select i1 %cmp, i32 0, i32 131072
  %and78.sink = or i32 %and78, %masksel
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 401, i32 noundef %and78.sink, i32 noundef 0) #8
  %call92 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 398, i32 noundef 0) #8
  %and93 = and i32 %call92, -32640
  %6 = ptrtoint ptr %vclk_div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vclk_div, align 4
  %8 = ptrtoint ptr %dclk_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dclk_div, align 4
  %shl95 = shl i32 %9, 8
  %or96 = or i32 %shl95, %7
  %and97 = and i32 %or96, 32639
  %or98 = or i32 %and97, %and93
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 398, i32 noundef %or98, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #8
  %call104 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %and105 = and i32 %call104, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %and105, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #8
  %call117 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %and118 = and i32 %call117, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %and118, i32 noundef 0) #8
  %call122 = tail call fastcc i32 @si_uvd_send_upll_ctlreq(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %do.body126, label %do.body45.cleanup_crit_edge

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body126:                                       ; preds = %do.body45
  %call128 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 398, i32 noundef 0) #8
  %and129 = and i32 %call128, -1072693249
  %or130 = or i32 %and129, 69206016
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 398, i32 noundef %or130, i32 noundef 0) #8
  br label %while.body137

while.body137:                                    ; preds = %while.body137.while.body137_crit_edge, %do.body126
  %__ms133.0217 = phi i32 [ 100, %do.body126 ], [ %dec135, %while.body137.while.body137_crit_edge ]
  %dec135 = add nsw i32 %__ms133.0217, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #8
  %tobool136.not = icmp eq i32 %dec135, 0
  br i1 %tobool136.not, label %while.body137.cleanup_crit_edge, label %while.body137.while.body137_crit_edge

while.body137.while.body137_crit_edge:            ; preds = %while.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body137

while.body137.cleanup_crit_edge:                  ; preds = %while.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body137.cleanup_crit_edge, %do.body45.cleanup_crit_edge, %do.body13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ %call41, %do.body13.cleanup_crit_edge ], [ %call122, %do.body45.cleanup_crit_edge ], [ 0, %while.body137.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclk_div) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vclk_div) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_div) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_set_vce_clocks(ptr noundef %adev, i32 noundef %evclk, i32 noundef %ecclk) #0 align 64 {
entry:
  %fb_div = alloca i32, align 4
  %evclk_div = alloca i32, align 4
  %ecclk_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_div) #8
  %0 = ptrtoint ptr %fb_div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fb_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %evclk_div) #8
  %1 = ptrtoint ptr %evclk_div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %evclk_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ecclk_div) #8
  %2 = ptrtoint ptr %ecclk_div to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ecclk_div, align 4
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %3 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %4(ptr noundef %adev, i32 noundef -1073543679) #8
  %and = and i32 %call, -1072693249
  %or = or i32 %and, 34603008
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %5 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smc_wreg, align 8
  tail call void %6(ptr noundef %adev, i32 noundef -1073543679, i32 noundef %or) #8
  %7 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smc_rreg, align 4
  %call4 = tail call i32 %8(ptr noundef %adev, i32 noundef -1073543680) #8
  %or6 = or i32 %call4, 4
  %9 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smc_wreg, align 8
  tail call void %10(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %or6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %evclk)
  %tobool.not = icmp eq i32 %evclk, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ecclk)
  %tobool10.not = icmp eq i32 %ecclk, 0
  %or.cond = or i1 %tobool.not, %tobool10.not
  br i1 %or.cond, label %do.body11, label %if.end

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smc_rreg, align 4
  %call14 = tail call i32 %12(ptr noundef %adev, i32 noundef -1073543680) #8
  %or16 = or i32 %call14, 2
  %13 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc_wreg, align 8
  tail call void %14(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %or16) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call20 = call fastcc i32 @si_calc_upll_dividers(ptr noundef %adev, i32 noundef %evclk, i32 noundef %ecclk, ptr noundef nonnull %fb_div, ptr noundef nonnull %evclk_div, ptr noundef nonnull %ecclk_div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body24:                                        ; preds = %if.end
  %15 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smc_rreg, align 4
  %call27 = tail call i32 %16(ptr noundef %adev, i32 noundef -1073543676) #8
  %and28 = and i32 %call27, -513
  %17 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smc_wreg, align 8
  tail call void %18(ptr noundef %adev, i32 noundef -1073543676, i32 noundef %and28) #8
  %19 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smc_rreg, align 4
  %call36 = tail call i32 %20(ptr noundef %adev, i32 noundef -1073543680) #8
  %or38 = or i32 %call36, 1536
  %21 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smc_wreg, align 8
  tail call void %22(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %or38) #8
  %23 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smc_rreg, align 4
  %call45 = tail call i32 %24(ptr noundef %adev, i32 noundef -1073543680) #8
  %or47 = or i32 %call45, 2
  %25 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smc_wreg, align 8
  tail call void %26(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %or47) #8
  %27 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smc_rreg, align 4
  %call54 = tail call i32 %28(ptr noundef %adev, i32 noundef -1073543680) #8
  %and55 = and i32 %call54, -3
  %29 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smc_wreg, align 8
  tail call void %30(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %and55) #8
  %31 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smc_rreg, align 4
  %call63 = tail call i32 %32(ptr noundef %adev, i32 noundef -1073543680) #8
  %and64 = and i32 %call63, -2
  %33 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smc_wreg, align 8
  tail call void %34(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %and64) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #8
  %call69 = tail call fastcc i32 @si_vce_send_vcepll_ctlreq(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.body73, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body73:                                        ; preds = %do.body24
  %36 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smc_rreg, align 4
  %call76 = tail call i32 %37(ptr noundef %adev, i32 noundef -1073543680) #8
  %or78 = or i32 %call76, 1
  %38 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smc_wreg, align 8
  tail call void %39(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %or78) #8
  %40 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smc_rreg, align 4
  %call85 = tail call i32 %41(ptr noundef %adev, i32 noundef -1073543674) #8
  %and86 = and i32 %call85, -2
  %42 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smc_wreg, align 8
  tail call void %43(ptr noundef %adev, i32 noundef -1073543674, i32 noundef %and86) #8
  %44 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smc_rreg, align 4
  %call94 = tail call i32 %45(ptr noundef %adev, i32 noundef -1073543678) #8
  %and95 = and i32 %call94, -33554432
  %46 = ptrtoint ptr %fb_div to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fb_div, align 4
  %and96 = and i32 %47, 33554431
  %or97 = or i32 %and96, %and95
  %48 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smc_wreg, align 8
  tail call void %49(ptr noundef %adev, i32 noundef -1073543678, i32 noundef %or97) #8
  %50 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smc_rreg, align 4
  %call104 = tail call i32 %51(ptr noundef %adev, i32 noundef -1073543680) #8
  %and105 = and i32 %call104, -4128769
  %52 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %smc_wreg, align 8
  tail call void %53(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %and105) #8
  %54 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smc_rreg, align 4
  %call113 = tail call i32 %55(ptr noundef %adev, i32 noundef -1073543679) #8
  %and114 = and i32 %call113, -32640
  %56 = ptrtoint ptr %evclk_div to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %evclk_div, align 4
  %58 = ptrtoint ptr %ecclk_div to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ecclk_div, align 4
  %shl116 = shl i32 %59, 8
  %or117 = or i32 %shl116, %57
  %and118 = and i32 %or117, 32639
  %or119 = or i32 %and118, %and114
  %60 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smc_wreg, align 8
  tail call void %61(ptr noundef %adev, i32 noundef -1073543679, i32 noundef %or119) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #8
  %77 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %smc_rreg, align 4
  %call127 = tail call i32 %78(ptr noundef %adev, i32 noundef -1073543680) #8
  %and128 = and i32 %call127, -2
  %79 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %smc_wreg, align 8
  tail call void %80(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %and128) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #8
  %96 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %smc_rreg, align 4
  %call142 = tail call i32 %97(ptr noundef %adev, i32 noundef -1073543680) #8
  %and143 = and i32 %call142, -5
  %98 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %smc_wreg, align 8
  tail call void %99(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %and143) #8
  %call148 = tail call fastcc i32 @si_vce_send_vcepll_ctlreq(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %do.body152, label %do.body73.cleanup_crit_edge

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body152:                                       ; preds = %do.body73
  %100 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %smc_rreg, align 4
  %call155 = tail call i32 %101(ptr noundef %adev, i32 noundef -1073543679) #8
  %and156 = and i32 %call155, -1072693249
  %or157 = or i32 %and156, 553648128
  %102 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %smc_wreg, align 8
  tail call void %103(ptr noundef %adev, i32 noundef -1073543679, i32 noundef %or157) #8
  br label %while.body165

while.body165:                                    ; preds = %while.body165.while.body165_crit_edge, %do.body152
  %__ms161.0277 = phi i32 [ 100, %do.body152 ], [ %dec163, %while.body165.while.body165_crit_edge ]
  %dec163 = add nsw i32 %__ms161.0277, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #8
  %tobool164.not = icmp eq i32 %dec163, 0
  br i1 %tobool164.not, label %while.body165.cleanup_crit_edge, label %while.body165.while.body165_crit_edge

while.body165.while.body165_crit_edge:            ; preds = %while.body165
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body165

while.body165.cleanup_crit_edge:                  ; preds = %while.body165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body165.cleanup_crit_edge, %do.body73.cleanup_crit_edge, %do.body24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body11
  %retval.0 = phi i32 [ 0, %do.body11 ], [ %call20, %if.end.cleanup_crit_edge ], [ %call69, %do.body24.cleanup_crit_edge ], [ %call148, %do.body73.cleanup_crit_edge ], [ 0, %while.body165.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ecclk_div) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %evclk_div) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_div) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_get_pcie_lanes(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pciep_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 41
  %2 = ptrtoint ptr %pciep_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pciep_rreg, align 8
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef 162) #8
  %and1 = lshr i32 %call, 4
  %shr = and i32 %and1, 7
  %switch.tableidx = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.si_get_pcie_lanes, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ 16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_set_pcie_lanes(ptr noundef %adev, i32 noundef %lanes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %lanes to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %lanes, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
    i32 16, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %lanes) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 390, %sw.bb5 ], [ 388, %sw.bb4 ], [ 387, %sw.bb3 ], [ 386, %sw.bb2 ], [ 385, %sw.bb1 ], [ 384, %if.end.sw.epilog_crit_edge ]
  %pciep_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 41
  %3 = ptrtoint ptr %pciep_rreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pciep_rreg, align 8
  %call = tail call i32 %4(ptr noundef %adev, i32 noundef 162) #8
  %and6 = and i32 %call, -392
  %or7 = or i32 %mask.0, %and6
  %pciep_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 42
  %5 = ptrtoint ptr %pciep_wreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pciep_wreg, align 4
  tail call void %6(ptr noundef %adev, i32 noundef 162, i32 noundef %or7) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_get_config_memsize(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5386, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_flush_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5408, i32 noundef 1, i32 noundef 0) #8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5408, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef nonnull %ring, i32 noundef 5408, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_invalidate_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 3020, i32 noundef 1, i32 noundef 0) #8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3020, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef nonnull %ring, i32 noundef 3020, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si_need_full_reset(ptr nocapture noundef readnone %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_get_pcie_usage(ptr noundef %adev, ptr nocapture noundef writeonly %count0, ptr nocapture noundef writeonly %count1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %2 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_wreg, align 4
  tail call void %3(ptr noundef %adev, i32 noundef 129, i32 noundef 26664) #8
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 128, i32 noundef 5) #8
  tail call void @msleep(i32 noundef 1000) #8
  %6 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_wreg, align 4
  tail call void %7(ptr noundef %adev, i32 noundef 128, i32 noundef 2) #8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %8 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %9(ptr noundef %adev, i32 noundef 129) #8
  %and6 = lshr i32 %call, 16
  %10 = and i32 %and6, 255
  %11 = zext i32 %10 to i64
  %shr8 = lshr i32 %call, 24
  %conv9 = zext i32 %shr8 to i64
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %call11 = tail call i32 %13(ptr noundef %adev, i32 noundef 130) #8
  %conv12 = zext i32 %call11 to i64
  %shl = shl nuw nsw i64 %11, 32
  %or13 = or i64 %shl, %conv12
  %14 = ptrtoint ptr %count0 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or13, ptr %count0, align 8
  %15 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_rreg, align 8
  %call15 = tail call i32 %16(ptr noundef %adev, i32 noundef 131) #8
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si_need_reset_on_init(ptr nocapture noundef readnone %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @si_get_pcie_replay_count(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 14) #8
  %conv = zext i32 %call to i64
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call2 = tail call i32 %3(ptr noundef %adev, i32 noundef 15) #8
  %conv3 = zext i32 %call2 to i64
  %add = add nuw nsw i64 %conv3, %conv
  ret i64 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si_asic_supports_baco(ptr nocapture noundef readnone %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @si_pre_asic_init(ptr nocapture noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si_query_video_codecs(ptr nocapture noundef readonly %adev, i1 noundef zeroext %encode, ptr nocapture noundef writeonly %codecs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 0, label %entry.sw.bb_crit_edge20
    i32 1, label %entry.sw.bb_crit_edge21
    i32 3, label %sw.bb1
    i32 4, label %sw.bb6
  ]

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21
  %tahiti_video_codecs_encode.tahiti_video_codecs_decode = select i1 %encode, ptr @tahiti_video_codecs_encode, ptr @tahiti_video_codecs_decode
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hainan_video_codecs_encode.tahiti_video_codecs_decode = select i1 %encode, ptr @hainan_video_codecs_encode, ptr @tahiti_video_codecs_decode
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hainan_video_codecs_encode.hainan_video_codecs_decode = select i1 %encode, ptr @hainan_video_codecs_encode, ptr @hainan_video_codecs_decode
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb6, %sw.bb1, %sw.bb
  %hainan_video_codecs_encode.hainan_video_codecs_decode.sink = phi ptr [ %hainan_video_codecs_encode.hainan_video_codecs_decode, %sw.bb6 ], [ %hainan_video_codecs_encode.tahiti_video_codecs_decode, %sw.bb1 ], [ %tahiti_video_codecs_encode.tahiti_video_codecs_decode, %sw.bb ]
  %3 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hainan_video_codecs_encode.hainan_video_codecs_decode.sink, ptr %codecs, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_read_bios(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_pci_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_pci_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si_calc_upll_dividers(ptr nocapture noundef readonly %adev, i32 noundef %vclk, i32 noundef %dclk, ptr nocapture noundef writeonly %optimal_fb_div, ptr nocapture noundef writeonly %optimal_vclk_div, ptr nocapture noundef writeonly %optimal_dclk_div) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %vclk, i32 %dclk)
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 125000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 250001, i32 %3)
  %cmp744 = icmp ult i32 %3, 250001
  br i1 %cmp744, label %for.body.lr.ph, label %entry.for.end.thread50_crit_edge

entry.for.end.thread50_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread50

for.body.lr.ph:                                   ; preds = %entry
  %.neg = add i32 %dclk, %vclk
  br label %if.then185

if.then185:                                       ; preds = %for.inc.if.then185_crit_edge, %for.body.lr.ph
  %vco_freq.046 = phi i32 [ %3, %for.body.lr.ph ], [ %add231, %for.inc.if.then185_crit_edge ]
  %optimal_score.045 = phi i32 [ -1, %for.body.lr.ph ], [ %optimal_score.1, %for.inc.if.then185_crit_edge ]
  %mul = shl i32 %vco_freq.046, 14
  %div189 = udiv i32 %mul, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %div189)
  %cmp198 = icmp ugt i32 %div189, 67108863
  br i1 %cmp198, label %if.then185.for.end_crit_edge, label %if.end201

if.then185.for.end_crit_edge:                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end201:                                        ; preds = %if.then185
  %div.i = udiv i32 %vco_freq.046, %vclk
  %div1.i = udiv i32 %vco_freq.046, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %vclk)
  %cmp2.i = icmp ugt i32 %div1.i, %vclk
  %add.i = zext i1 %cmp2.i to i32
  %post_div.1.i = add i32 %div.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %post_div.1.i)
  %cmp5.i = icmp ugt i32 %post_div.1.i, 5
  %rem.i = and i32 %post_div.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %not.or.cond.i = and i1 %cmp5.i, %tobool.not.i
  %add7.i = zext i1 %not.or.cond.i to i32
  %post_div.2.i = add i32 %post_div.1.i, %add7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %post_div.2.i)
  %cmp205 = icmp ugt i32 %post_div.2.i, 128
  br i1 %cmp205, label %if.end201.for.end_crit_edge, label %if.end208

if.end201.for.end_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end208:                                        ; preds = %if.end201
  %div.i3 = udiv i32 %vco_freq.046, %dclk
  %div1.i4 = udiv i32 %vco_freq.046, %div.i3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i4, i32 %dclk)
  %cmp2.i5 = icmp ugt i32 %div1.i4, %dclk
  %add.i6 = zext i1 %cmp2.i5 to i32
  %post_div.1.i7 = add i32 %div.i3, %add.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %post_div.1.i7)
  %cmp5.i8 = icmp ugt i32 %post_div.1.i7, 5
  %rem.i9 = and i32 %post_div.1.i7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i9)
  %tobool.not.i10 = icmp ne i32 %rem.i9, 0
  %not.or.cond.i11 = and i1 %cmp5.i8, %tobool.not.i10
  %add7.i12 = zext i1 %not.or.cond.i11 to i32
  %post_div.2.i13 = add i32 %post_div.1.i7, %add7.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %post_div.2.i13)
  %cmp210 = icmp ugt i32 %post_div.2.i13, 128
  br i1 %cmp210, label %if.end208.for.end_crit_edge, label %if.end213

if.end208.for.end_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end213:                                        ; preds = %if.end208
  %div214 = udiv i32 %vco_freq.046, %post_div.2.i
  %div217 = udiv i32 %vco_freq.046, %post_div.2.i13
  %4 = add i32 %div214, %div217
  %sub218 = sub i32 %.neg, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub218, i32 %optimal_score.045)
  %cmp219 = icmp ult i32 %sub218, %optimal_score.045
  br i1 %cmp219, label %if.then221, label %if.end213.for.inc_crit_edge

if.end213.for.inc_crit_edge:                      ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then221:                                       ; preds = %if.end213
  %5 = ptrtoint ptr %optimal_fb_div to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div189, ptr %optimal_fb_div, align 4
  %6 = ptrtoint ptr %optimal_vclk_div to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %post_div.2.i, ptr %optimal_vclk_div, align 4
  %7 = ptrtoint ptr %optimal_dclk_div to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %post_div.2.i13, ptr %optimal_dclk_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub218)
  %cmp223 = icmp eq i32 %sub218, 0
  br i1 %cmp223, label %if.then221.for.end.thread_crit_edge, label %if.then221.for.inc_crit_edge

if.then221.for.inc_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then221.for.end.thread_crit_edge:              ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc:                                          ; preds = %if.then221.for.inc_crit_edge, %if.end213.for.inc_crit_edge
  %optimal_score.1 = phi i32 [ %sub218, %if.then221.for.inc_crit_edge ], [ %optimal_score.045, %if.end213.for.inc_crit_edge ]
  %add231 = add nuw nsw i32 %vco_freq.046, 100
  %cmp7 = icmp ult i32 %vco_freq.046, 249901
  br i1 %cmp7, label %for.inc.if.then185_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.if.then185_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end208.for.end_crit_edge, %if.end201.for.end_crit_edge, %if.then185.for.end_crit_edge
  %optimal_score.0.lcssa = phi i32 [ %optimal_score.1, %for.inc.for.end_crit_edge ], [ %optimal_score.045, %if.then185.for.end_crit_edge ], [ %optimal_score.045, %if.end201.for.end_crit_edge ], [ %optimal_score.045, %if.end208.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %optimal_score.0.lcssa)
  %cmp232 = icmp eq i32 %optimal_score.0.lcssa, -1
  br i1 %cmp232, label %for.end.for.end.thread50_crit_edge, label %for.end.for.end.thread_crit_edge

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.for.end.thread50_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread50

for.end.thread50:                                 ; preds = %for.end.for.end.thread50_crit_edge, %entry.for.end.thread50_crit_edge
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.thread50, %for.end.for.end.thread_crit_edge, %if.then221.for.end.thread_crit_edge
  %8 = phi i32 [ -22, %for.end.thread50 ], [ 0, %for.end.for.end.thread_crit_edge ], [ 0, %if.then221.for.end.thread_crit_edge ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si_uvd_send_upll_ctlreq(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %and = and i32 %call, -9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %and, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %or5 = or i32 %call3, 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %or5, i32 noundef 0) #8
  br label %for.body

for.body:                                         ; preds = %while.body15.preheader.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %while.body15.preheader.for.body_crit_edge ]
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %call8)
  %cmp10 = icmp ugt i32 %call8, -1073741825
  br i1 %cmp10, label %for.body.do.body17_crit_edge, label %while.body15.preheader

for.body.do.body17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

while.body15.preheader:                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %while.body15.preheader.do.body17_crit_edge, label %while.body15.preheader.for.body_crit_edge

while.body15.preheader.for.body_crit_edge:        ; preds = %while.body15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body15.preheader.do.body17_crit_edge:       ; preds = %while.body15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.body17:                                        ; preds = %while.body15.preheader.do.body17_crit_edge, %for.body.do.body17_crit_edge
  %i.0.lcssa = phi i32 [ %i.05, %for.body.do.body17_crit_edge ], [ 100, %while.body15.preheader.do.body17_crit_edge ]
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 397, i32 noundef 0) #8
  %and20 = and i32 %call19, -9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 397, i32 noundef %and20, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.lcssa)
  %cmp24 = icmp eq i32 %i.0.lcssa, 100
  br i1 %cmp24, label %if.then25, label %do.body17.cleanup27_crit_edge

do.body17.cleanup27_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

if.then25:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #8
  br label %cleanup27

cleanup27:                                        ; preds = %if.then25, %do.body17.cleanup27_crit_edge
  %retval.0 = phi i32 [ -110, %if.then25 ], [ 0, %do.body17.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si_vce_send_vcepll_ctlreq(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %0 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef -1073543680) #8
  %and = and i32 %call, -9
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %2 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_wreg, align 8
  tail call void %3(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %and) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  %14 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smc_rreg, align 4
  %call4 = tail call i32 %15(ptr noundef %adev, i32 noundef -1073543680) #8
  %or6 = or i32 %call4, 8
  %16 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smc_wreg, align 8
  tail call void %17(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %or6) #8
  br label %for.body

for.body:                                         ; preds = %while.body18.preheader.for.body_crit_edge, %entry
  %i.059 = phi i32 [ 0, %entry ], [ %inc, %while.body18.preheader.for.body_crit_edge ]
  %18 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smc_rreg, align 4
  %call11 = tail call i32 %19(ptr noundef %adev, i32 noundef -1073543680) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %call11)
  %cmp13 = icmp ugt i32 %call11, -1073741825
  br i1 %cmp13, label %for.body.do.body20_crit_edge, label %while.body18.preheader

for.body.do.body20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

while.body18.preheader:                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #8
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %while.body18.preheader.do.body20_crit_edge, label %while.body18.preheader.for.body_crit_edge

while.body18.preheader.for.body_crit_edge:        ; preds = %while.body18.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body18.preheader.do.body20_crit_edge:       ; preds = %while.body18.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body20:                                        ; preds = %while.body18.preheader.do.body20_crit_edge, %for.body.do.body20_crit_edge
  %i.0.lcssa = phi i32 [ %i.059, %for.body.do.body20_crit_edge ], [ 100, %while.body18.preheader.do.body20_crit_edge ]
  %30 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smc_rreg, align 4
  %call23 = tail call i32 %31(ptr noundef %adev, i32 noundef -1073543680) #8
  %and24 = and i32 %call23, -9
  %32 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smc_wreg, align 8
  tail call void %33(ptr noundef %adev, i32 noundef -1073543680, i32 noundef %and24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.lcssa)
  %cmp29 = icmp eq i32 %i.0.lcssa, 100
  br i1 %cmp29, label %if.then30, label %do.body20.cleanup32_crit_edge

do.body20.cleanup32_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

if.then30:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #8
  br label %cleanup32

cleanup32:                                        ; preds = %if.then30, %do.body20.cleanup32_crit_edge
  %retval.0 = phi i32 [ -110, %if.then30 ], [ 0, %do.body20.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @si_common_ip_block, !1, !"si_common_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 2740, i32 45}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 2724, i32 10}
!4 = !{ptr @si_common_ip_funcs, !5, !"si_common_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 2723, i32 34}
!6 = !{ptr @si_asic_funcs, !7, !"si_asic_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 1994, i32 39}
!8 = !{ptr @si_allowed_read_registers, !9, !"si_allowed_read_registers", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 1112, i32 45}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 1436, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @si_asic_reset._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @si_asic_reset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 1440, i32 3}
!20 = !{ptr @si_asic_reset._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @si_asic_reset._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 1424, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @si_asic_reset_method._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @si_asic_reset_method._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 1664, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 1567, i32 3}
!32 = !{ptr @tahiti_video_codecs_encode, !33, !"tahiti_video_codecs_encode", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 930, i32 41}
!34 = !{ptr @tahiti_video_codecs_decode, !35, !"tahiti_video_codecs_decode", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 976, i32 41}
!36 = !{ptr @tahiti_video_codecs_decode_array, !37, !"tahiti_video_codecs_decode_array", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 944, i32 45}
!38 = !{ptr @hainan_video_codecs_encode, !39, !"hainan_video_codecs_encode", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 937, i32 41}
!40 = !{ptr @hainan_video_codecs_decode, !41, !"hainan_video_codecs_decode", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 983, i32 41}
!42 = !{ptr @tahiti_golden_registers, !43, !"tahiti_golden_registers", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 59, i32 18}
!44 = !{ptr @tahiti_golden_rlc_registers, !45, !"tahiti_golden_rlc_registers", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 104, i32 18}
!46 = !{ptr @tahiti_mgcg_cgcg_init, !47, !"tahiti_mgcg_cgcg_init", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 426, i32 18}
!48 = !{ptr @tahiti_golden_registers2, !49, !"tahiti_golden_registers2", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 99, i32 18}
!50 = !{ptr @pitcairn_golden_registers, !51, !"pitcairn_golden_registers", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 115, i32 18}
!52 = !{ptr @pitcairn_golden_rlc_registers, !53, !"pitcairn_golden_rlc_registers", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 151, i32 18}
!54 = !{ptr @pitcairn_mgcg_cgcg_init, !55, !"pitcairn_mgcg_cgcg_init", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 555, i32 18}
!56 = !{ptr @verde_golden_registers, !57, !"verde_golden_registers", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 298, i32 18}
!58 = !{ptr @verde_golden_rlc_registers, !59, !"verde_golden_rlc_registers", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 288, i32 18}
!60 = !{ptr @verde_mgcg_cgcg_init, !61, !"verde_mgcg_cgcg_init", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 653, i32 18}
!62 = !{ptr @verde_pg_init, !63, !"verde_pg_init", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 161, i32 18}
!64 = !{ptr @oland_golden_registers, !65, !"oland_golden_registers", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 336, i32 18}
!66 = !{ptr @oland_golden_rlc_registers, !67, !"oland_golden_rlc_registers", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 373, i32 18}
!68 = !{ptr @oland_mgcg_cgcg_init, !69, !"oland_mgcg_cgcg_init", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 753, i32 18}
!70 = !{ptr @hainan_golden_registers, !71, !"hainan_golden_registers", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 383, i32 18}
!72 = !{ptr @hainan_golden_registers2, !73, !"hainan_golden_registers2", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 421, i32 18}
!74 = !{ptr @hainan_mgcg_cgcg_init, !75, !"hainan_mgcg_cgcg_init", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 833, i32 18}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 2258, i32 4}
!78 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @si_pcie_gen3_enable._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @si_pcie_gen3_enable._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 2261, i32 3}
!83 = !{ptr @si_pcie_gen3_enable._entry.16, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @si_pcie_gen3_enable._entry_ptr.18, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 2264, i32 4}
!87 = !{ptr @si_pcie_gen3_enable._entry.19, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @si_pcie_gen3_enable._entry_ptr.21, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/si.c", i32 2267, i32 3}
!91 = !{ptr @si_pcie_gen3_enable._entry.22, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @si_pcie_gen3_enable._entry_ptr.24, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
!103 = !{i64 2160574173, i64 2160574670, i64 2160574210, i64 2160574266, i64 2160574300, i64 2160574324, i64 2160574365, i64 2160574386, i64 2160574414, i64 2160574448}
!104 = !{i32 0, i32 33}
!105 = !{i64 2160557027, i64 2160557524, i64 2160557064, i64 2160557120, i64 2160557154, i64 2160557178, i64 2160557219, i64 2160557240, i64 2160557268, i64 2160557302}
!106 = !{!"auto-init"}
