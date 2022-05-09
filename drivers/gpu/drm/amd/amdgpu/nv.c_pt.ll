; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/nv.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/nv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_virt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc15_allowed_register_entry = type { i32, i32, i32, i32, i8 }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_smuio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_gfx_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nv_common_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @nv_common_early_init, ptr @nv_common_late_init, ptr @nv_common_sw_init, ptr @nv_common_sw_fini, ptr null, ptr @nv_common_hw_init, ptr @nv_common_hw_fini, ptr null, ptr @nv_common_suspend, ptr @nv_common_resume, ptr @nv_common_is_idle, ptr @nv_common_wait_for_idle, ptr null, ptr null, ptr @nv_common_soft_reset, ptr null, ptr @nv_common_set_clockgating_state, ptr @nv_common_set_powergating_state, ptr @nv_common_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@nv_common_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 0, i32 1, i32 0, i32 0, ptr @nv_common_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@xgpu_nv_virt_ops = external dso_local constant %struct.amdgpu_virt_ops, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nv_common\00", [22 x i8] zeroinitializer }, align 32
@nv_asic_funcs = internal constant { %struct.amdgpu_asic_funcs, [36 x i8] } { %struct.amdgpu_asic_funcs { ptr @nv_read_disabled_bios, ptr @nv_read_bios_from_rom, ptr @nv_read_register, ptr @nv_vga_set_state, ptr @nv_asic_reset, ptr @nv_asic_reset_method, ptr @nv_get_xclk, ptr @nv_set_uvd_clocks, ptr @nv_set_vce_clocks, ptr null, ptr null, ptr @nv_get_config_memsize, ptr null, ptr null, ptr @nv_need_full_reset, ptr @nv_init_doorbell_index, ptr null, ptr @nv_need_reset_on_init, ptr @nv_get_pcie_replay_count, ptr @amdgpu_dpm_is_baco_supported, ptr @nv_pre_asic_init, ptr @nv_update_umd_stable_pstate, ptr @nv_query_video_codecs }, [36 x i8] zeroinitializer }, align 32
@nv_allowed_read_registers = internal constant { [19 x %struct.soc15_allowed_register_entry], [68 x i8] } { [19 x %struct.soc15_allowed_register_entry] [%struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3492, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3490, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3493, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3494, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3502, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3503, i8 0 }, %struct.soc15_allowed_register_entry { i32 3, i32 0, i32 0, i32 37, i8 0 }, %struct.soc15_allowed_register_entry { i32 4, i32 0, i32 0, i32 1573, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3904, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3901, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3902, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3900, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3624, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3625, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3623, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3621, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3622, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 3620, i8 0 }, %struct.soc15_allowed_register_entry { i32 1, i32 0, i32 0, i32 5086, i8 0 }], [68 x i8] zeroinitializer }, align 32
@nv_asic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu: PCI reset\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv_asic_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/amd/amdgpu/nv.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv_asic_reset._entry_ptr = internal global ptr @nv_asic_reset._entry, section ".printk_index", align 4
@nv_asic_reset._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: BACO reset\0A\00", [44 x i8] zeroinitializer }, align 32
@nv_asic_reset._entry_ptr.8 = internal global ptr @nv_asic_reset._entry.6, section ".printk_index", align 4
@nv_asic_reset._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu: MODE2 reset\0A\00", [43 x i8] zeroinitializer }, align 32
@nv_asic_reset._entry_ptr.11 = internal global ptr @nv_asic_reset._entry.9, section ".printk_index", align 4
@nv_asic_reset._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu: MODE1 reset\0A\00", [43 x i8] zeroinitializer }, align 32
@nv_asic_reset._entry_ptr.14 = internal global ptr @nv_asic_reset._entry.12, section ".printk_index", align 4
@nv_asic_mode2_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 483, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: GPU mode2 reset failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv_asic_mode2_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv_asic_mode2_reset._entry_ptr = internal global ptr @nv_asic_mode2_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amdgpu_reset_method = external dso_local local_unnamed_addr global i32, align 4
@nv_asic_reset_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 512, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"amdgpu: Specified reset method:%d isn't supported, using AUTO instead.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv_asic_reset_method\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nv_asic_reset_method._entry_ptr = internal global ptr @nv_asic_reset_method._entry, section ".printk_index", align 4
@sriov_sc_video_codecs_encode = internal global { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 2, ptr @sriov_sc_video_codecs_encode_array }, [24 x i8] zeroinitializer }, align 32
@sriov_sc_video_codecs_decode = internal global { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 8, ptr @sriov_sc_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@nv_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 2, ptr @nv_video_codecs_encode_array }, [24 x i8] zeroinitializer }, align 32
@sc_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 8, ptr @sc_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@yc_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 4, ptr @yc_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@bg_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } zeroinitializer, align 32
@bg_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 3, ptr @bg_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@nv_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 7, ptr @nv_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@sriov_sc_video_codecs_encode_array = internal global { [2 x %struct.amdgpu_video_codec_info], [56 x i8] } { [2 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 2304, i32 9437184, i32 0 }, %struct.amdgpu_video_codec_info { i32 4, i32 4096, i32 2304, i32 9437184, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sriov_sc_video_codecs_decode_array = internal global { [8 x %struct.amdgpu_video_codec_info], [32 x i8] } { [8 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4906, i32 20094976, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4906, i32 20094976, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4906, i32 20094976, i32 4 }, %struct.amdgpu_video_codec_info { i32 4, i32 8192, i32 4352, i32 35651584, i32 186 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }, %struct.amdgpu_video_codec_info { i32 6, i32 8192, i32 4352, i32 35651584, i32 0 }, %struct.amdgpu_video_codec_info { i32 7, i32 8192, i32 4352, i32 35651584, i32 0 }], [32 x i8] zeroinitializer }, align 32
@nv_video_codecs_encode_array = internal constant { [2 x %struct.amdgpu_video_codec_info], [56 x i8] } { [2 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 2304, i32 9437184, i32 0 }, %struct.amdgpu_video_codec_info { i32 4, i32 4096, i32 2304, i32 9437184, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sc_video_codecs_decode_array = internal constant { [8 x %struct.amdgpu_video_codec_info], [32 x i8] } { [8 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4906, i32 20094976, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4906, i32 20094976, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4906, i32 20094976, i32 4 }, %struct.amdgpu_video_codec_info { i32 4, i32 8192, i32 4352, i32 35651584, i32 186 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }, %struct.amdgpu_video_codec_info { i32 6, i32 8192, i32 4352, i32 35651584, i32 0 }, %struct.amdgpu_video_codec_info { i32 7, i32 8192, i32 4352, i32 35651584, i32 0 }], [32 x i8] zeroinitializer }, align 32
@yc_video_codecs_decode_array = internal constant { [4 x %struct.amdgpu_video_codec_info], [48 x i8] } { [4 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 4, i32 8192, i32 4352, i32 35651584, i32 186 }, %struct.amdgpu_video_codec_info { i32 6, i32 8192, i32 4352, i32 35651584, i32 0 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }], [48 x i8] zeroinitializer }, align 32
@bg_video_codecs_decode_array = internal constant { [3 x %struct.amdgpu_video_codec_info], [36 x i8] } { [3 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 4, i32 8192, i32 4352, i32 35651584, i32 186 }, %struct.amdgpu_video_codec_info { i32 6, i32 8192, i32 4352, i32 35651584, i32 0 }], [36 x i8] zeroinitializer }, align 32
@nv_video_codecs_decode_array = internal constant { [7 x %struct.amdgpu_video_codec_info], [52 x i8] } { [7 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4906, i32 20094976, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4906, i32 20094976, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4906, i32 20094976, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4906, i32 20094976, i32 4 }, %struct.amdgpu_video_codec_info { i32 4, i32 8192, i32 4352, i32 35651584, i32 186 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }, %struct.amdgpu_video_codec_info { i32 6, i32 8192, i32 4352, i32 35651584, i32 0 }], [52 x i8] zeroinitializer }, align 32
@amdgpu_aspm = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 655617, i64 655618, i64 655619, i64 655626, i64 656128, i64 656129, i64 656130, i64 656131, i64 656132, i64 656133]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 131840, i64 131841, i64 131842, i64 197376, i64 197377, i64 197378, i64 197379]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 720903, i64 720907, i64 720908, i64 720909, i64 722176, i64 851969, i64 851971]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 4294967295]
@__sancov_gen_cov_switch_values.25 = internal global [9 x i64] [i64 7, i64 32, i64 720903, i64 720907, i64 720908, i64 720909, i64 722176, i64 851969, i64 851971]
@__sancov_gen_cov_switch_values.26 = internal global [11 x i64] [i64 9, i64 32, i64 131072, i64 131074, i64 196608, i64 196610, i64 196624, i64 196641, i64 196672, i64 196800, i64 196865]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"nv_common_ip_funcs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1139, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"nv_common_ip_block\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 603, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1140, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"nv_asic_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 708, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"nv_allowed_read_registers\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 395, i32 44 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 538, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 542, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 546, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 550, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 483, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 511, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"sriov_sc_video_codecs_encode\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 138, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [29 x i8] c"sriov_sc_video_codecs_decode\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 144, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"nv_video_codecs_encode\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 76, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"sc_video_codecs_decode\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 113, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"yc_video_codecs_decode\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 175, i32 41 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"bg_video_codecs_encode\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 162, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"bg_video_codecs_decode\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 157, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"nv_video_codecs_decode\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 94, i32 41 }
@___asan_gen_.126 = private unnamed_addr constant [35 x i8] c"sriov_sc_video_codecs_encode_array\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 120, i32 39 }
@___asan_gen_.129 = private unnamed_addr constant [35 x i8] c"sriov_sc_video_codecs_decode_array\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 126, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant [29 x i8] c"nv_video_codecs_encode_array\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 70, i32 45 }
@___asan_gen_.135 = private unnamed_addr constant [29 x i8] c"sc_video_codecs_decode_array\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 101, i32 45 }
@___asan_gen_.138 = private unnamed_addr constant [29 x i8] c"yc_video_codecs_decode_array\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 168, i32 45 }
@___asan_gen_.141 = private unnamed_addr constant [29 x i8] c"bg_video_codecs_decode_array\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 151, i32 45 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"nv_video_codecs_decode_array\00", align 1
@___asan_gen_.145 = private constant [35 x i8] c"../drivers/gpu/drm/amd/amdgpu/nv.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 83, i32 45 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @nv_asic_mode2_reset._entry, ptr @nv_asic_mode2_reset._entry_ptr, ptr @nv_asic_reset._entry, ptr @nv_asic_reset._entry.12, ptr @nv_asic_reset._entry.6, ptr @nv_asic_reset._entry.9, ptr @nv_asic_reset._entry_ptr, ptr @nv_asic_reset._entry_ptr.11, ptr @nv_asic_reset._entry_ptr.14, ptr @nv_asic_reset._entry_ptr.8, ptr @nv_asic_reset_method._entry, ptr @nv_asic_reset_method._entry_ptr, ptr @nv_common_ip_funcs, ptr @nv_common_ip_block, ptr @.str, ptr @nv_asic_funcs, ptr @nv_allowed_read_registers, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sriov_sc_video_codecs_encode, ptr @sriov_sc_video_codecs_decode, ptr @nv_video_codecs_encode, ptr @sc_video_codecs_decode, ptr @yc_video_codecs_decode, ptr @bg_video_codecs_encode, ptr @bg_video_codecs_decode, ptr @nv_video_codecs_decode, ptr @sriov_sc_video_codecs_encode_array, ptr @sriov_sc_video_codecs_decode_array, ptr @nv_video_codecs_encode_array, ptr @sc_video_codecs_decode_array, ptr @yc_video_codecs_decode_array, ptr @bg_video_codecs_decode_array, ptr @nv_video_codecs_decode_array], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_common_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_common_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_asic_funcs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_allowed_read_registers to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_asic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_asic_reset._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_asic_reset._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_asic_reset._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_asic_mode2_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_asic_reset_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sriov_sc_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sriov_sc_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yc_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bg_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bg_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sriov_sc_video_codecs_encode_array to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sriov_sc_video_codecs_decode_array to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_video_codecs_encode_array to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_video_codecs_decode_array to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yc_video_codecs_decode_array to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bg_video_codecs_decode_array to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_video_codecs_decode_array to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv_grbm_select(ptr noundef %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %queue, i32 noundef %vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true16

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true16:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %land.lhs.true16.cond.false_crit_edge, label %cond.true

land.lhs.true16.cond.false_crit_edge:             ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 3522
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %or13, i32 noundef 0, i32 noundef 1) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true16.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx28 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx28, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add31 = add i32 %13, 3522
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add31, i32 noundef %or13, i32 noundef 0) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nv_set_virt_ops(ptr nocapture noundef writeonly %adev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgpu_nv_virt_ops, ptr %ops, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  store ptr @nv_pcie_rreg, ptr %pcie_rreg, align 8
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %9 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nv_pcie_wreg, ptr %pcie_wreg, align 4
  %pcie_rreg64 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 43
  %10 = ptrtoint ptr %pcie_rreg64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nv_pcie_rreg64, ptr %pcie_rreg64, align 8
  %pcie_wreg64 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 44
  %11 = ptrtoint ptr %pcie_wreg64 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nv_pcie_wreg64, ptr %pcie_wreg64, align 4
  %pciep_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 41
  %12 = ptrtoint ptr %pciep_rreg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nv_pcie_port_rreg, ptr %pciep_rreg, align 8
  %pciep_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 42
  %13 = ptrtoint ptr %pciep_wreg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nv_pcie_port_wreg, ptr %pciep_wreg, align 4
  %uvd_ctx_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 46
  %14 = ptrtoint ptr %uvd_ctx_rreg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %uvd_ctx_rreg, align 4
  %uvd_ctx_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %15 = ptrtoint ptr %uvd_ctx_wreg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %uvd_ctx_wreg, align 8
  %didt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 49
  %16 = ptrtoint ptr %didt_rreg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nv_didt_rreg, ptr %didt_rreg, align 8
  %didt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 50
  %17 = ptrtoint ptr %didt_wreg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nv_didt_wreg, ptr %didt_wreg, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %18 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nv_asic_funcs, ptr %asic_funcs, align 4
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %19 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs.i, align 8
  %get_rev_id.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %get_rev_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_rev_id.i, align 4
  %call.i = tail call i32 %22(ptr noundef %handle) #7
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 7
  %23 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %rev_id, align 8
  %external_rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 8
  %24 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 255, ptr %external_rev_id, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 1
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.end.cleanup_crit_edge [
    i32 655626, label %sw.bb
    i32 655617, label %sw.bb6
    i32 655618, label %sw.bb12
    i32 656128, label %sw.bb25
    i32 656130, label %sw.bb39
    i32 656129, label %sw.bb45
    i32 656132, label %sw.bb55
    i32 656133, label %sw.bb61
    i32 656131, label %sw.bb67
    i32 655619, label %sw.bb77
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %28 = ptrtoint ptr %cg_flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2030673669, ptr %cg_flags, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %29 = ptrtoint ptr %pg_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 245760, ptr %pg_flags, align 4
  %add4 = add i32 %call.i, 1
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cg_flags7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %30 = ptrtoint ptr %cg_flags7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2030673669, ptr %cg_flags7, align 8
  %pg_flags8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %31 = ptrtoint ptr %pg_flags8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 180224, ptr %pg_flags8, align 4
  %add10 = add i32 %call.i, 20
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %if.end
  %cg_flags13 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %32 = ptrtoint ptr %cg_flags13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2030145479, ptr %cg_flags13, align 8
  %pg_flags14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %33 = ptrtoint ptr %pg_flags14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 245760, ptr %pg_flags14, align 4
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt, align 8
  %and17 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %sw.bb12.if.end21_crit_edge, label %if.then19

sw.bb12.if.end21_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rev_id, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %sw.bb12.if.end21_crit_edge
  %37 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rev_id, align 8
  %add23 = add i32 %38, 10
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end
  %cg_flags26 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %39 = ptrtoint ptr %cg_flags26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1225884429, ptr %cg_flags26, align 8
  %pg_flags27 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %40 = ptrtoint ptr %pg_flags27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 253952, ptr %pg_flags27, align 4
  %41 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %virt, align 8
  %and30 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %sw.bb25.if.end35_crit_edge, label %if.then32

sw.bb25.if.end35_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then32:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %cg_flags26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cg_flags26, align 8
  %44 = ptrtoint ptr %pg_flags27 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %pg_flags27, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %sw.bb25.if.end35_crit_edge
  %add37 = add i32 %call.i, 40
  br label %sw.epilog.sink.split

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cg_flags40 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %45 = ptrtoint ptr %cg_flags40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1225884429, ptr %cg_flags40, align 8
  %pg_flags41 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %46 = ptrtoint ptr %pg_flags41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 253952, ptr %pg_flags41, align 4
  %add43 = add i32 %call.i, 50
  br label %sw.epilog.sink.split

sw.bb45:                                          ; preds = %if.end
  %cg_flags46 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %47 = ptrtoint ptr %cg_flags46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1053814833, ptr %cg_flags46, align 8
  %pg_flags47 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %48 = ptrtoint ptr %pg_flags47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 180225, ptr %pg_flags47, align 4
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %49 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %apu_flags, align 4
  %and48 = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %sw.bb45.sw.epilog_crit_edge, label %if.then50

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then50:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  %add52 = add i32 %call.i, 1
  br label %sw.epilog.sink.split

sw.bb55:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cg_flags56 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %51 = ptrtoint ptr %cg_flags56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1225884429, ptr %cg_flags56, align 8
  %pg_flags57 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %52 = ptrtoint ptr %pg_flags57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 253952, ptr %pg_flags57, align 4
  %add59 = add i32 %call.i, 60
  br label %sw.epilog.sink.split

sw.bb61:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cg_flags62 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %53 = ptrtoint ptr %cg_flags62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 152142605, ptr %cg_flags62, align 8
  %pg_flags63 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %54 = ptrtoint ptr %pg_flags63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 122880, ptr %pg_flags63, align 4
  %add65 = add i32 %call.i, 70
  br label %sw.epilog.sink.split

sw.bb67:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cg_flags68 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %55 = ptrtoint ptr %cg_flags68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -114194481, ptr %cg_flags68, align 8
  %pg_flags69 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %56 = ptrtoint ptr %pg_flags69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 180225, ptr %pg_flags69, align 4
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %57 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5761, i16 %60)
  %cmp = icmp eq i16 %60, 5761
  %add74 = add i32 %call.i, 1
  %spec.select = select i1 %cmp, i32 32, i32 %add74
  br label %sw.epilog.sink.split

sw.bb77:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cg_flags78 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %61 = ptrtoint ptr %cg_flags78 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %cg_flags78, align 8
  %pg_flags79 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %62 = ptrtoint ptr %pg_flags79 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %pg_flags79, align 4
  %add81 = add i32 %call.i, 130
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb77, %sw.bb67, %sw.bb61, %sw.bb55, %if.then50, %sw.bb39, %if.end35, %if.end21, %sw.bb6, %sw.bb
  %.sink = phi i32 [ %add52, %if.then50 ], [ %add81, %sw.bb77 ], [ %add65, %sw.bb61 ], [ %add59, %sw.bb55 ], [ %add43, %sw.bb39 ], [ %add37, %if.end35 ], [ %add23, %if.end21 ], [ %add10, %sw.bb6 ], [ %add4, %sw.bb ], [ %spec.select, %sw.bb67 ]
  %63 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink, ptr %external_rev_id, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb45.sw.epilog_crit_edge
  %harvest_ip_mask = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 123
  %64 = ptrtoint ptr %harvest_ip_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %harvest_ip_mask, align 4
  %and83 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %sw.epilog.if.end88_crit_edge, label %if.then85

sw.epilog.if.end88_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then85:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %pg_flags86 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %66 = ptrtoint ptr %pg_flags86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pg_flags86, align 4
  %and87 = and i32 %67, -180225
  store i32 %and87, ptr %pg_flags86, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %sw.epilog.if.end88_crit_edge
  %68 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %virt, align 8
  %and91 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end88.cleanup_crit_edge, label %if.then93

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_virt_init_setting(ptr noundef %handle) #7
  tail call void @xgpu_nv_mailbox_set_irq_funcs(ptr noundef %handle) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %if.end88.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then93 ], [ 0, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_late_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @xgpu_nv_mailbox_get_irq(ptr noundef %handle) #7
  tail call void @amdgpu_virt_update_sriov_video_codec(ptr noundef %handle, ptr noundef nonnull @sriov_sc_video_codecs_encode_array, i32 noundef 2, ptr noundef nonnull @sriov_sc_video_codecs_decode_array, i32 noundef 8) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @xgpu_nv_mailbox_add_irq_id(ptr noundef %handle) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_common_sw_fini(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %apply_lc_spc_mode_wa = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %apply_lc_spc_mode_wa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apply_lc_spc_mode_wa, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %handle) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %apply_l1_link_width_reconfig_wa = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %apply_l1_link_width_reconfig_wa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apply_l1_link_width_reconfig_wa, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %handle) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_aspm to i32))
  %8 = load i32, ptr @amdgpu_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end11.nv_program_aspm.exit_crit_edge, label %if.end.i

if.end11.nv_program_aspm.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_program_aspm.exit

if.end.i:                                         ; preds = %if.end11
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.nv_program_aspm.exit_crit_edge

if.end.i.nv_program_aspm.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_program_aspm.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs, align 8
  %program_aspm.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %program_aspm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %program_aspm.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.nv_program_aspm.exit_crit_edge, label %if.then3.i

land.lhs.true.i.nv_program_aspm.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_program_aspm.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %14(ptr noundef %handle) #7
  br label %nv_program_aspm.exit

nv_program_aspm.exit:                             ; preds = %if.then3.i, %land.lhs.true.i.nv_program_aspm.exit_crit_edge, %if.end.i.nv_program_aspm.exit_crit_edge, %if.end11.nv_program_aspm.exit_crit_edge
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 8
  %init_registers = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %init_registers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_registers, align 4
  tail call void %18(ptr noundef %handle) #7
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs, align 8
  %remap_hdp_registers = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %remap_hdp_registers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_hdp_registers, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %nv_program_aspm.exit.if.end22_crit_edge, label %land.lhs.true

nv_program_aspm.exit.if.end22_crit_edge:          ; preds = %nv_program_aspm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %nv_program_aspm.exit
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt, align 8
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef %handle) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %land.lhs.true.if.end22_crit_edge, %nv_program_aspm.exit.if.end22_crit_edge
  %25 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs, align 8
  %enable_doorbell_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %enable_doorbell_aperture.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enable_doorbell_aperture.i, align 4
  tail call void %28(ptr noundef %handle, i1 noundef zeroext true) #7
  %29 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs, align 8
  %enable_doorbell_selfring_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %enable_doorbell_selfring_aperture.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enable_doorbell_selfring_aperture.i, align 4
  tail call void %32(ptr noundef %handle, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i, align 8
  %enable_doorbell_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable_doorbell_aperture.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_doorbell_aperture.i, align 4
  tail call void %3(ptr noundef %handle, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 8
  %enable_doorbell_selfring_aperture.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %enable_doorbell_selfring_aperture.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_doorbell_selfring_aperture.i, align 4
  tail call void %7(ptr noundef %handle, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i.i, align 8
  %enable_doorbell_aperture.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable_doorbell_aperture.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_doorbell_aperture.i.i, align 4
  tail call void %3(ptr noundef %handle, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i.i, align 8
  %enable_doorbell_selfring_aperture.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %enable_doorbell_selfring_aperture.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_doorbell_selfring_aperture.i.i, align 4
  tail call void %7(ptr noundef %handle, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i, align 8
  %apply_lc_spc_mode_wa.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %apply_lc_spc_mode_wa.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apply_lc_spc_mode_wa.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %handle) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 8
  %apply_l1_link_width_reconfig_wa.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %apply_l1_link_width_reconfig_wa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apply_l1_link_width_reconfig_wa.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then7.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %handle) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_aspm to i32))
  %8 = load i32, ptr @amdgpu_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.end11.i.nv_program_aspm.exit.i_crit_edge, label %if.end.i.i

if.end11.i.nv_program_aspm.exit.i_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_program_aspm.exit.i

if.end.i.i:                                       ; preds = %if.end11.i
  %flags.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.nv_program_aspm.exit.i_crit_edge

if.end.i.i.nv_program_aspm.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_program_aspm.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs.i, align 8
  %program_aspm.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %program_aspm.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %program_aspm.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.nv_program_aspm.exit.i_crit_edge, label %if.then3.i.i

land.lhs.true.i.i.nv_program_aspm.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_program_aspm.exit.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %14(ptr noundef %handle) #7
  br label %nv_program_aspm.exit.i

nv_program_aspm.exit.i:                           ; preds = %if.then3.i.i, %land.lhs.true.i.i.nv_program_aspm.exit.i_crit_edge, %if.end.i.i.nv_program_aspm.exit.i_crit_edge, %if.end11.i.nv_program_aspm.exit.i_crit_edge
  %15 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs.i, align 8
  %init_registers.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %init_registers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_registers.i, align 4
  tail call void %18(ptr noundef %handle) #7
  %19 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs.i, align 8
  %remap_hdp_registers.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %remap_hdp_registers.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_hdp_registers.i, align 4
  %tobool16.not.i = icmp eq ptr %22, null
  br i1 %tobool16.not.i, label %nv_program_aspm.exit.i.nv_common_hw_init.exit_crit_edge, label %land.lhs.true.i

nv_program_aspm.exit.i.nv_common_hw_init.exit_crit_edge: ; preds = %nv_program_aspm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_common_hw_init.exit

land.lhs.true.i:                                  ; preds = %nv_program_aspm.exit.i
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %23 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %land.lhs.true.i.nv_common_hw_init.exit_crit_edge

land.lhs.true.i.nv_common_hw_init.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_common_hw_init.exit

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef %handle) #7
  br label %nv_common_hw_init.exit

nv_common_hw_init.exit:                           ; preds = %if.then18.i, %land.lhs.true.i.nv_common_hw_init.exit_crit_edge, %nv_program_aspm.exit.i.nv_common_hw_init.exit_crit_edge
  %25 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs.i, align 8
  %enable_doorbell_aperture.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %enable_doorbell_aperture.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enable_doorbell_aperture.i.i, align 4
  tail call void %28(ptr noundef %handle, i1 noundef zeroext true) #7
  %29 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs.i, align 8
  %enable_doorbell_selfring_aperture.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %enable_doorbell_selfring_aperture.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enable_doorbell_selfring_aperture.i.i, align 4
  tail call void %32(ptr noundef %handle, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nv_common_is_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_common_wait_for_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_common_soft_reset(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_common_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 131840, label %if.end.sw.bb_crit_edge
    i32 131841, label %if.end.sw.bb_crit_edge21
    i32 131842, label %if.end.sw.bb_crit_edge22
    i32 197376, label %if.end.sw.bb_crit_edge23
    i32 197377, label %if.end.sw.bb_crit_edge24
    i32 197378, label %if.end.sw.bb_crit_edge25
    i32 197379, label %if.end.sw.bb_crit_edge26
  ]

if.end.sw.bb_crit_edge26:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge25:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge24:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge22:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge21:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge21, %if.end.sw.bb_crit_edge22, %if.end.sw.bb_crit_edge23, %if.end.sw.bb_crit_edge24, %if.end.sw.bb_crit_edge25, %if.end.sw.bb_crit_edge26
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
  tail call void %8(ptr noundef %handle, i1 noundef zeroext %cmp) #7
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 8
  %update_medium_grain_light_sleep = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %update_medium_grain_light_sleep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %update_medium_grain_light_sleep, align 4
  tail call void %12(ptr noundef %handle, i1 noundef zeroext %cmp) #7
  %funcs5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %13 = ptrtoint ptr %funcs5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs5, align 4
  %update_clock_gating = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %update_clock_gating to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update_clock_gating, align 4
  tail call void %16(ptr noundef %handle, i1 noundef zeroext %cmp) #7
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 103
  %17 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smuio, align 4
  %update_rom_clock_gating = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %update_rom_clock_gating to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %update_rom_clock_gating, align 4
  tail call void %20(ptr noundef %handle, i1 noundef zeroext %cmp) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_common_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_common_get_clockgating_state(ptr noundef %handle, ptr noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %6(ptr noundef %handle, ptr noundef %flags) #7
  %funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %7 = ptrtoint ptr %funcs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs1, align 4
  %get_clock_gating_state = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %get_clock_gating_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_clock_gating_state, align 4
  tail call void %10(ptr noundef %handle, ptr noundef %flags) #7
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 103
  %11 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smuio, align 4
  %get_clock_gating_state3 = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %get_clock_gating_state3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_clock_gating_state3, align 4
  tail call void %14(ptr noundef %handle, ptr noundef %flags) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_pcie_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #7
  %call4 = tail call i32 @amdgpu_device_indirect_rreg(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_pcie_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #7
  tail call void @amdgpu_device_indirect_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg, i32 noundef %v) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nv_pcie_rreg64(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #7
  %call4 = tail call i64 @amdgpu_device_indirect_rreg64(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg) #7
  ret i64 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_pcie_wreg64(ptr noundef %adev, i32 noundef %reg, i64 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #7
  tail call void @amdgpu_device_indirect_wreg64(ptr noundef %adev, i32 noundef %call, i32 noundef %call3, i32 noundef %reg, i64 noundef %v) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_pcie_port_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_port_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %get_pcie_port_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_port_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_port_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_pcie_port_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_port_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #7
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #7
  %mul = shl i32 %reg, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef %mul, i32 noundef 0) #7
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call, i32 noundef 0) #7
  %call10 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call6) #7
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_pcie_port_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_port_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %get_pcie_port_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_port_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_port_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_pcie_port_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_port_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #7
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #7
  %mul = shl i32 %reg, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef %mul, i32 noundef 0) #7
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call, i32 noundef 0) #7
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3, i32 noundef %v, i32 noundef 0) #7
  %call10 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_didt_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 8224
  %add7 = add i32 %3, 8225
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #7
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0) #7
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add7, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call9) #7
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_didt_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 8224
  %add7 = add i32 %3, 8225
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #7
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0) #7
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7, i32 noundef %v, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_init_setting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgpu_nv_mailbox_set_irq_funcs(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nv_read_disabled_bios(ptr nocapture noundef readnone %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv_read_bios_from_rom(ptr noundef %adev, ptr noundef writeonly %bios, i32 noundef %length_bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %bios, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length_bytes)
  %cmp1 = icmp eq i32 %length_bytes, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call i32 %5(ptr noundef %adev) #7
  %6 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smuio, align 4
  %get_rom_data_offset = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %get_rom_data_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rom_data_offset, align 4
  %call9 = tail call i32 %9(ptr noundef %adev) #7
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp1027.not = icmp ult i32 %add, 4
  br i1 %cmp1027.not, label %if.end5.cleanup_crit_edge, label %for.body.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end5
  %div26 = lshr i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call9, i32 noundef 0) #7
  %arrayidx = getelementptr i32, ptr %bios, i32 %i.028
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %div26
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %if.end5.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_read_register(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef %reg_offset, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [19 x %struct.soc15_allowed_register_entry], ptr @nv_allowed_read_registers, i32 0, i32 %i.022
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.022)
  %cmp1 = icmp eq i32 %i.022, 7
  br i1 %cmp1, label %land.lhs.true, label %for.body.lor.lhs.false_crit_edge

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %1 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [19 x %struct.soc15_allowed_register_entry], ptr @nv_allowed_read_registers, i32 0, i32 %i.022, i32 1
  %5 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst, align 4
  %arrayidx5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %4, i32 %6
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %seg = getelementptr [19 x %struct.soc15_allowed_register_entry], ptr @nv_allowed_read_registers, i32 0, i32 %i.022, i32 2
  %9 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seg, align 4
  %arrayidx6 = getelementptr i32, ptr %8, i32 %10
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %reg_offset7 = getelementptr [19 x %struct.soc15_allowed_register_entry], ptr @nv_allowed_read_registers, i32 0, i32 %i.022, i32 3
  %13 = ptrtoint ptr %reg_offset7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_offset7, align 4
  %add = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg_offset)
  %cmp8.not = icmp eq i32 %add, %reg_offset
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add.i = add i32 %18, 5086
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %reg_offset)
  %cmp.i = icmp eq i32 %add.i, %reg_offset
  br i1 %cmp.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %19 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gb_addr_config.i, align 4
  br label %nv_get_register_value.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #7
  br label %nv_get_register_value.exit

nv_get_register_value.exit:                       ; preds = %if.end.i, %if.then4.i
  %retval.0.i = phi i32 [ %20, %if.then4.i ], [ %call5.i, %if.end.i ]
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %value, align 4
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %nv_get_register_value.exit
  %retval.0 = phi i32 [ 0, %nv_get_register_value.exit ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nv_vga_set_state(ptr nocapture noundef %adev, i1 noundef zeroext %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_asic_reset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %0 = load i32, ptr @amdgpu_reset_method, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %0, label %do.end.i [
    i32 -1, label %entry.if.end8.i_crit_edge
    i32 5, label %do.end
    i32 4, label %entry.do.end5_crit_edge
    i32 3, label %entry.do.end11_crit_edge
    i32 2, label %entry.do.end16_crit_edge
  ]

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %0) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %entry.if.end8.i_crit_edge
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %sw.default.i [
    i32 722176, label %if.end8.i.do.end11_crit_edge
    i32 851969, label %if.end8.i.do.end11_crit_edge35
    i32 851971, label %if.end8.i.do.end11_crit_edge36
    i32 720903, label %if.end8.i.do.end16_crit_edge
    i32 720907, label %if.end8.i.do.end16_crit_edge37
    i32 720908, label %if.end8.i.do.end16_crit_edge38
    i32 720909, label %if.end8.i.do.end16_crit_edge39
  ]

if.end8.i.do.end16_crit_edge39:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end8.i.do.end16_crit_edge38:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end8.i.do.end16_crit_edge37:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end8.i.do.end16_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end8.i.do.end11_crit_edge36:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end8.i.do.end11_crit_edge35:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end8.i.do.end11_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

sw.default.i:                                     ; preds = %if.end8.i
  %call.i = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #7
  br i1 %call.i, label %sw.default.i.do.end5_crit_edge, label %sw.default.i.do.end16_crit_edge

sw.default.i.do.end16_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

sw.default.i.do.end5_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.1) #10
  %call1 = tail call i32 @amdgpu_device_pci_reset(ptr noundef %adev) #7
  br label %sw.epilog

do.end5:                                          ; preds = %sw.default.i.do.end5_crit_edge, %entry.do.end5_crit_edge
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.7) #10
  %call7 = tail call i32 @amdgpu_dpm_baco_reset(ptr noundef %adev) #7
  br label %sw.epilog

do.end11:                                         ; preds = %if.end8.i.do.end11_crit_edge, %if.end8.i.do.end11_crit_edge35, %if.end8.i.do.end11_crit_edge36, %entry.do.end11_crit_edge
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.10) #10
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext true) #7
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_clear_master(ptr noundef %14) #7
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %call.i27 = tail call zeroext i1 @amdgpu_device_cache_pci_state(ptr noundef %16) #7
  %call2.i = tail call i32 @amdgpu_dpm_mode2_reset(ptr noundef %adev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.end11.if.end.i_crit_edge, label %do.end.i28

do.end11.if.end.i_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i28:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.15) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i28, %do.end11.if.end.i_crit_edge
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %call4.i = tail call zeroext i1 @amdgpu_device_load_pci_state(ptr noundef %20) #7
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %21 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp24.not.i = icmp eq i32 %22, 0
  br i1 %cmp24.not.i, label %if.end.i.nv_asic_mode2_reset.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.nv_asic_mode2_reset.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_asic_mode2_reset.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs.i, align 8
  %get_memsize.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %get_memsize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_memsize.i, align 4
  %call5.i = tail call i32 %26(ptr noundef %adev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, -1
  br i1 %cmp6.not.i, label %for.inc.i, label %for.body.i.nv_asic_mode2_reset.exit_crit_edge

for.body.i.nv_asic_mode2_reset.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_asic_mode2_reset.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  %inc.i = add nuw i32 %i.025.i, 1
  %28 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nv_asic_mode2_reset.exit_crit_edge

for.inc.i.nv_asic_mode2_reset.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv_asic_mode2_reset.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

nv_asic_mode2_reset.exit:                         ; preds = %for.inc.i.nv_asic_mode2_reset.exit_crit_edge, %for.body.i.nv_asic_mode2_reset.exit_crit_edge, %if.end.i.nv_asic_mode2_reset.exit_crit_edge
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext false) #7
  br label %sw.epilog

do.end16:                                         ; preds = %sw.default.i.do.end16_crit_edge, %if.end8.i.do.end16_crit_edge, %if.end8.i.do.end16_crit_edge37, %if.end8.i.do.end16_crit_edge38, %if.end8.i.do.end16_crit_edge39, %entry.do.end16_crit_edge
  %30 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.13) #10
  %call18 = tail call i32 @amdgpu_device_mode1_reset(ptr noundef %adev) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %nv_asic_mode2_reset.exit, %do.end5, %do.end
  %ret.0 = phi i32 [ %call18, %do.end16 ], [ %call2.i, %nv_asic_mode2_reset.exit ], [ %call7, %do.end5 ], [ %call1, %do.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_asic_reset_method(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %0 = load i32, ptr @amdgpu_reset_method, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %0, label %do.end [
    i32 2, label %entry.return_crit_edge
    i32 3, label %entry.return_crit_edge14
    i32 4, label %entry.return_crit_edge15
    i32 5, label %entry.return_crit_edge16
    i32 -1, label %entry.if.end8_crit_edge
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %0) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %sw.default [
    i32 722176, label %if.end8.return_crit_edge
    i32 851969, label %if.end8.return_crit_edge17
    i32 851971, label %if.end8.return_crit_edge18
    i32 720903, label %if.end8.sw.bb10_crit_edge
    i32 720907, label %if.end8.sw.bb10_crit_edge19
    i32 720908, label %if.end8.sw.bb10_crit_edge20
    i32 720909, label %if.end8.sw.bb10_crit_edge21
  ]

if.end8.sw.bb10_crit_edge21:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end8.sw.bb10_crit_edge20:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end8.sw.bb10_crit_edge19:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end8.sw.bb10_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end8.return_crit_edge18:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end8.return_crit_edge17:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb10:                                          ; preds = %if.end8.sw.bb10_crit_edge, %if.end8.sw.bb10_crit_edge19, %if.end8.sw.bb10_crit_edge20, %if.end8.sw.bb10_crit_edge21
  br label %return

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #7
  %. = select i1 %call, i32 4, i32 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb10, %if.end8.return_crit_edge, %if.end8.return_crit_edge17, %if.end8.return_crit_edge18, %entry.return_crit_edge, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16
  %retval.0 = phi i32 [ 2, %sw.bb10 ], [ 3, %if.end8.return_crit_edge ], [ 3, %if.end8.return_crit_edge17 ], [ 3, %if.end8.return_crit_edge18 ], [ %., %sw.default ], [ %0, %entry.return_crit_edge ], [ %0, %entry.return_crit_edge14 ], [ %0, %entry.return_crit_edge15 ], [ %0, %entry.return_crit_edge16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_get_xclk(ptr nocapture noundef readonly %adev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_set_uvd_clocks(ptr nocapture noundef readnone %adev, i32 noundef %vclk, i32 noundef %dclk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_set_vce_clocks(ptr nocapture noundef readnone %adev, i32 noundef %evclk, i32 noundef %ecclk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_get_config_memsize(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_memsize = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %get_memsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_memsize, align 4
  %call = tail call i32 %3(ptr noundef %adev) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nv_need_full_reset(ptr nocapture noundef readnone %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nv_init_doorbell_index(ptr noundef writeonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %gfx_ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 12
  %12 = ptrtoint ptr %gfx_ring1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 140, ptr %gfx_ring1, align 4
  %mes_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 14
  %13 = ptrtoint ptr %mes_ring to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 144, ptr %mes_ring, align 4
  %sdma_engine = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13
  %14 = ptrtoint ptr %sdma_engine to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 256, ptr %sdma_engine, align 4
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 1
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 266, ptr %arrayidx17, align 4
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 2
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 276, ptr %arrayidx20, align 4
  %arrayidx23 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 3
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 286, ptr %arrayidx23, align 4
  %ih = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 15
  %18 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 376, ptr %ih, align 4
  %19 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 392, ptr %19, align 4
  %vcn_ring2_3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 1
  %21 = ptrtoint ptr %vcn_ring2_3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 393, ptr %vcn_ring2_3, align 4
  %vcn_ring4_5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 2
  %22 = ptrtoint ptr %vcn_ring4_5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 394, ptr %vcn_ring4_5, align 4
  %vcn_ring6_7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 16, i32 0, i32 3
  %23 = ptrtoint ptr %vcn_ring6_7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 395, ptr %vcn_ring6_7, align 4
  %first_non_cp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 17
  %24 = ptrtoint ptr %first_non_cp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %first_non_cp, align 4
  %last_non_cp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 18
  %25 = ptrtoint ptr %last_non_cp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 399, ptr %last_non_cp, align 4
  %max_assignment = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 19
  %26 = ptrtoint ptr %max_assignment to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 798, ptr %max_assignment, align 4
  %sdma_doorbell_range = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 20
  %27 = ptrtoint ptr %sdma_doorbell_range to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %sdma_doorbell_range, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv_need_reset_on_init(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 145
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 14) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 145
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add19, i32 noundef 0) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool21.not = icmp ne i32 %cond, 0
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool21.not, %cond.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nv_get_pcie_replay_count(ptr nocapture noundef readnone %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nv_pre_asic_init(ptr nocapture noundef %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_update_umd_stable_pstate(ptr noundef %adev, i1 noundef zeroext %enter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enter, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %adev) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %adev) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 49
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %update_perfmon_mgcg = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %update_perfmon_mgcg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_perfmon_mgcg, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lnot = xor i1 %enter, true
  tail call void %3(ptr noundef %adev, i1 noundef zeroext %lnot) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end7
  %funcs9 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %6 = ptrtoint ptr %funcs9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs9, align 8
  %enable_aspm = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %enable_aspm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_aspm, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true.if.end17_crit_edge, label %if.then11

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %lnot16 = xor i1 %enter, true
  tail call void %9(ptr noundef %adev, i1 noundef zeroext %lnot16) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %land.lhs.true.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_query_video_codecs(ptr nocapture noundef readonly %adev, i1 noundef zeroext %encode, ptr nocapture noundef writeonly %codecs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.return_crit_edge [
    i32 196608, label %entry.sw.bb_crit_edge
    i32 196672, label %entry.sw.bb_crit_edge51
    i32 196800, label %entry.sw.bb_crit_edge52
    i32 196624, label %entry.sw.bb10_crit_edge
    i32 196610, label %entry.sw.bb10_crit_edge53
    i32 196865, label %sw.bb15
    i32 196641, label %sw.bb20
    i32 131072, label %entry.sw.bb25_crit_edge
    i32 131074, label %entry.sw.bb25_crit_edge54
  ]

entry.sw.bb25_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

entry.sw.bb10_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge51:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge51, %entry.sw.bb_crit_edge52
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sriov_sc_video_codecs_encode.sriov_sc_video_codecs_decode = select i1 %encode, ptr @sriov_sc_video_codecs_encode, ptr @sriov_sc_video_codecs_decode
  br label %return.sink.split

if.else4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %nv_video_codecs_encode.sc_video_codecs_decode50 = select i1 %encode, ptr @nv_video_codecs_encode, ptr @sc_video_codecs_decode
  br label %return.sink.split

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge53
  %nv_video_codecs_encode.sc_video_codecs_decode = select i1 %encode, ptr @nv_video_codecs_encode, ptr @sc_video_codecs_decode
  br label %return.sink.split

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nv_video_codecs_encode.yc_video_codecs_decode = select i1 %encode, ptr @nv_video_codecs_encode, ptr @yc_video_codecs_decode
  br label %return.sink.split

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bg_video_codecs_encode.bg_video_codecs_decode = select i1 %encode, ptr @bg_video_codecs_encode, ptr @bg_video_codecs_decode
  br label %return.sink.split

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge54
  %nv_video_codecs_encode.nv_video_codecs_decode = select i1 %encode, ptr @nv_video_codecs_encode, ptr @nv_video_codecs_decode
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb25, %sw.bb20, %sw.bb15, %sw.bb10, %if.else4, %if.then
  %sriov_sc_video_codecs_decode.sink = phi ptr [ %nv_video_codecs_encode.nv_video_codecs_decode, %sw.bb25 ], [ %bg_video_codecs_encode.bg_video_codecs_decode, %sw.bb20 ], [ %nv_video_codecs_encode.yc_video_codecs_decode, %sw.bb15 ], [ %nv_video_codecs_encode.sc_video_codecs_decode, %sw.bb10 ], [ %sriov_sc_video_codecs_encode.sriov_sc_video_codecs_decode, %if.then ], [ %nv_video_codecs_encode.sc_video_codecs_decode50, %if.else4 ]
  %5 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sriov_sc_video_codecs_decode.sink, ptr %codecs, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_pci_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_baco_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_mode1_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_cache_pci_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_mode2_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_load_pci_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgpu_nv_mailbox_get_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_update_sriov_video_codec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgpu_nv_mailbox_add_irq_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @nv_common_ip_block, !1, !"nv_common_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 603, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 1140, i32 10}
!4 = !{ptr @nv_common_ip_funcs, !5, !"nv_common_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 1139, i32 34}
!6 = !{ptr @nv_asic_funcs, !7, !"nv_asic_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 708, i32 39}
!8 = !{ptr @nv_allowed_read_registers, !9, !"nv_allowed_read_registers", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 395, i32 44}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 538, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nv_asic_reset._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @nv_asic_reset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 542, i32 3}
!20 = !{ptr @nv_asic_reset._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nv_asic_reset._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 546, i32 3}
!24 = !{ptr @nv_asic_reset._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nv_asic_reset._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 550, i32 3}
!28 = !{ptr @nv_asic_reset._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nv_asic_reset._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 483, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nv_asic_mode2_reset._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @nv_asic_mode2_reset._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 511, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nv_asic_reset_method._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @nv_asic_reset_method._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sriov_sc_video_codecs_encode, !43, !"sriov_sc_video_codecs_encode", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 138, i32 35}
!44 = !{ptr @sriov_sc_video_codecs_encode_array, !45, !"sriov_sc_video_codecs_encode_array", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 120, i32 39}
!46 = !{ptr @sriov_sc_video_codecs_decode, !47, !"sriov_sc_video_codecs_decode", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 144, i32 35}
!48 = !{ptr @sriov_sc_video_codecs_decode_array, !49, !"sriov_sc_video_codecs_decode_array", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 126, i32 39}
!50 = !{ptr @nv_video_codecs_encode, !51, !"nv_video_codecs_encode", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 76, i32 41}
!52 = !{ptr @nv_video_codecs_encode_array, !53, !"nv_video_codecs_encode_array", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 70, i32 45}
!54 = !{ptr @sc_video_codecs_decode, !55, !"sc_video_codecs_decode", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 113, i32 41}
!56 = !{ptr @sc_video_codecs_decode_array, !57, !"sc_video_codecs_decode_array", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 101, i32 45}
!58 = !{ptr @yc_video_codecs_decode, !59, !"yc_video_codecs_decode", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 175, i32 41}
!60 = !{ptr @yc_video_codecs_decode_array, !61, !"yc_video_codecs_decode_array", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 168, i32 45}
!62 = !{ptr @bg_video_codecs_encode, !63, !"bg_video_codecs_encode", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 162, i32 41}
!64 = !{ptr @bg_video_codecs_decode, !65, !"bg_video_codecs_decode", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 157, i32 41}
!66 = !{ptr @bg_video_codecs_decode_array, !67, !"bg_video_codecs_decode_array", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 151, i32 45}
!68 = !{ptr @nv_video_codecs_decode, !69, !"nv_video_codecs_decode", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 94, i32 41}
!70 = !{ptr @nv_video_codecs_decode_array, !71, !"nv_video_codecs_decode_array", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/nv.c", i32 83, i32 45}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
