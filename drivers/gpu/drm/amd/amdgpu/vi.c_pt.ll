; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/vi.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/vi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_virt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_gfx_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_clock_dividers = type { i32, %union.anon.113, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@xgpu_vi_virt_ops = external dso_local constant %struct.amdgpu_virt_ops, align 4
@vi_common_ip_block = internal constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 0, i32 1, i32 0, i32 0, ptr @vi_common_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gmc_v7_4_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@iceland_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gfx_v8_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@sdma_v2_4_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@pp_smu_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_vkms_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gmc_v8_5_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@tonga_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@sdma_v3_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dm_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v10_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@uvd_v6_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vce_v3_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gmc_v8_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v10_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@uvd_v5_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gmc_v8_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@sdma_v3_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v11_2_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@uvd_v6_3_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vce_v3_4_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@cz_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dce_v11_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vce_v3_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@acp_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gfx_v8_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@uvd_v6_2_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vi_common_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @vi_common_early_init, ptr @vi_common_late_init, ptr @vi_common_sw_init, ptr @vi_common_sw_fini, ptr null, ptr @vi_common_hw_init, ptr @vi_common_hw_fini, ptr null, ptr @vi_common_suspend, ptr @vi_common_resume, ptr @vi_common_is_idle, ptr @vi_common_wait_for_idle, ptr null, ptr null, ptr @vi_common_soft_reset, ptr null, ptr @vi_common_set_clockgating_state, ptr @vi_common_set_powergating_state, ptr @vi_common_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vi_common\00", [22 x i8] zeroinitializer }, align 32
@vi_asic_funcs = internal constant { %struct.amdgpu_asic_funcs, [36 x i8] } { %struct.amdgpu_asic_funcs { ptr @vi_read_disabled_bios, ptr @vi_read_bios_from_rom, ptr @vi_read_register, ptr @vi_vga_set_state, ptr @vi_asic_reset, ptr @vi_asic_reset_method, ptr @vi_get_xclk, ptr @vi_set_uvd_clocks, ptr @vi_set_vce_clocks, ptr null, ptr null, ptr @vi_get_config_memsize, ptr @vi_flush_hdp, ptr @vi_invalidate_hdp, ptr @vi_need_full_reset, ptr @legacy_doorbell_index_init, ptr @vi_get_pcie_usage, ptr @vi_need_reset_on_init, ptr @vi_get_pcie_replay_count, ptr @vi_asic_supports_baco, ptr @vi_pre_asic_init, ptr null, ptr @vi_query_video_codecs }, [36 x i8] zeroinitializer }, align 32
@vi_allowed_read_registers = internal constant { [76 x %struct.amdgpu_allowed_register_entry], [128 x i8] } { [76 x %struct.amdgpu_allowed_register_entry] [%struct.amdgpu_allowed_register_entry { i32 8196, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8194, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8197, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8198, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8206, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8207, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 916, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 915, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 917, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 13325, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 13837, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8608, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8605, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8606, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8604, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8328, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8329, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8327, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8325, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8326, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 8324, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9790, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 2520, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9796, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9797, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9798, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9799, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9800, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9801, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9802, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9803, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9804, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9805, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9806, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9807, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9808, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9809, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9810, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9811, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9812, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9813, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9814, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9815, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9816, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9817, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9818, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9819, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9820, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9821, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9822, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9823, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9824, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9825, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9826, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9827, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9828, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9829, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9830, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9831, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9832, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9833, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9834, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9835, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9836, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9837, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9838, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9839, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9840, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9841, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9842, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9843, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 9789, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 9951, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 9791, i8 0 }, %struct.amdgpu_allowed_register_entry { i32 41172, i8 1 }, %struct.amdgpu_allowed_register_entry { i32 41173, i8 1 }], [128 x i8] zeroinitializer }, align 32
@vi_asic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 964, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: BACO reset\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vi_asic_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/amd/amdgpu/vi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vi_asic_reset._entry_ptr = internal global ptr @vi_asic_reset._entry, section ".printk_index", align 4
@vi_asic_reset._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 967, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: PCI CONFIG reset\0A\00", [38 x i8] zeroinitializer }, align 32
@vi_asic_reset._entry_ptr.8 = internal global ptr @vi_asic_reset._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amdgpu_reset_method = external dso_local local_unnamed_addr global i32, align 4
@vi_asic_reset_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 924, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"amdgpu: Specified reset method:%d isn't supported, using AUTO instead.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vi_asic_reset_method\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vi_asic_reset_method._entry_ptr = internal global ptr @vi_asic_reset_method._entry, section ".printk_index", align 4
@topaz_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } zeroinitializer, align 32
@topaz_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } zeroinitializer, align 32
@tonga_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 1, ptr @tonga_video_codecs_encode_array }, [24 x i8] zeroinitializer }, align 32
@tonga_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 4, ptr @tonga_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@polaris_video_codecs_encode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 2, ptr @polaris_video_codecs_encode_array }, [24 x i8] zeroinitializer }, align 32
@cz_video_codecs_decode = internal constant { %struct.amdgpu_video_codecs, [24 x i8] } { %struct.amdgpu_video_codecs { i32 6, ptr @cz_video_codecs_decode_array }, [24 x i8] zeroinitializer }, align 32
@tonga_video_codecs_encode_array = internal constant { [1 x %struct.amdgpu_video_codec_info], [44 x i8] } { [1 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 2304, i32 9437184, i32 0 }], [44 x i8] zeroinitializer }, align 32
@tonga_video_codecs_decode_array = internal constant { [4 x %struct.amdgpu_video_codec_info], [48 x i8] } { [4 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4096, i32 16777216, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4096, i32 16777216, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4096, i32 16777216, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4096, i32 16777216, i32 4 }], [48 x i8] zeroinitializer }, align 32
@polaris_video_codecs_encode_array = internal constant { [2 x %struct.amdgpu_video_codec_info], [56 x i8] } { [2 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 2304, i32 9437184, i32 0 }, %struct.amdgpu_video_codec_info { i32 4, i32 4096, i32 2304, i32 9437184, i32 0 }], [56 x i8] zeroinitializer }, align 32
@cz_video_codecs_decode_array = internal constant { [6 x %struct.amdgpu_video_codec_info], [40 x i8] } { [6 x %struct.amdgpu_video_codec_info] [%struct.amdgpu_video_codec_info { i32 0, i32 4096, i32 4096, i32 16777216, i32 3 }, %struct.amdgpu_video_codec_info { i32 1, i32 4096, i32 4096, i32 16777216, i32 5 }, %struct.amdgpu_video_codec_info { i32 3, i32 4096, i32 4096, i32 16777216, i32 52 }, %struct.amdgpu_video_codec_info { i32 2, i32 4096, i32 4096, i32 16777216, i32 4 }, %struct.amdgpu_video_codec_info { i32 4, i32 4096, i32 4096, i32 16777216, i32 186 }, %struct.amdgpu_video_codec_info { i32 5, i32 4096, i32 4096, i32 16777216, i32 0 }], [40 x i8] zeroinitializer }, align 32
@iceland_mgcg_cgcg_init = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 0, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 3123, i32 -1073737729, i32 260], [36 x i8] zeroinitializer }, align 32
@fiji_mgcg_cgcg_init = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 5497, i32 -1, i32 6291712, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 0, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260], [44 x i8] zeroinitializer }, align 32
@tonga_mgcg_cgcg_init = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 5497, i32 -1, i32 6291712, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 0, i32 136, i32 -1, i32 -1067450356, i32 137, i32 -1073737729, i32 256, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260], [44 x i8] zeroinitializer }, align 32
@cz_mgcg_cgcg_init = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 5497, i32 -1, i32 6291712, i32 14, i32 -1, i32 20971548, i32 15, i32 983040, i32 0, i32 5497, i32 -16773121, i32 256, i32 3123, i32 -1073737729, i32 260], [36 x i8] zeroinitializer }, align 32
@stoney_mgcg_cgcg_init = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 5497, i32 -1, i32 256, i32 3123, i32 -1, i32 260, i32 2816, i32 -1, i32 251658279], [60 x i8] zeroinitializer }, align 32
@amdgpu_aspm = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.12 = internal global [11 x i64] [i64 9, i64 32, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.13 = internal global [15 x i64] [i64 13, i64 8, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 27009, i64 27015]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 8, i64 192, i64 193, i64 195, i64 199]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 16]
@__sancov_gen_cov_switch_values.18 = internal global [10 x i64] [i64 8, i64 32, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 9789, i64 9951, i64 41172, i64 41173]
@__sancov_gen_cov_switch_values.20 = internal global [52 x i64] [i64 50, i64 32, i64 2520, i64 9790, i64 9796, i64 9797, i64 9798, i64 9799, i64 9800, i64 9801, i64 9802, i64 9803, i64 9804, i64 9805, i64 9806, i64 9807, i64 9808, i64 9809, i64 9810, i64 9811, i64 9812, i64 9813, i64 9814, i64 9815, i64 9816, i64 9817, i64 9818, i64 9819, i64 9820, i64 9821, i64 9822, i64 9823, i64 9824, i64 9825, i64 9826, i64 9827, i64 9828, i64 9829, i64 9830, i64 9831, i64 9832, i64 9833, i64 9834, i64 9835, i64 9836, i64 9837, i64 9838, i64 9839, i64 9840, i64 9841, i64 9842, i64 9843]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.26 = internal global [11 x i64] [i64 9, i64 32, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"vi_common_ip_block\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 2083, i32 45 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"vi_common_ip_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 2065, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 2066, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"vi_asic_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1449, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"vi_allowed_read_registers\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 664, i32 51 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 964, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 967, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 923, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"topaz_video_codecs_encode\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 109, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"topaz_video_codecs_decode\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 159, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"tonga_video_codecs_encode\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 127, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"tonga_video_codecs_decode\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 198, i32 41 }
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"polaris_video_codecs_encode\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 152, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant [23 x i8] c"cz_video_codecs_decode\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 251, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant [32 x i8] c"tonga_video_codecs_encode_array\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 116, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"tonga_video_codecs_decode_array\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 166, i32 45 }
@___asan_gen_.102 = private unnamed_addr constant [34 x i8] c"polaris_video_codecs_encode_array\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 134, i32 45 }
@___asan_gen_.105 = private unnamed_addr constant [29 x i8] c"cz_video_codecs_decode_array\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 205, i32 45 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"iceland_mgcg_cgcg_init\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 460, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"fiji_mgcg_cgcg_init\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 449, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"tonga_mgcg_cgcg_init\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 438, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"cz_mgcg_cgcg_init\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 469, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"stoney_mgcg_cgcg_init\00", align 1
@___asan_gen_.121 = private constant [35 x i8] c"../drivers/gpu/drm/amd/amdgpu/vi.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 478, i32 18 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @vi_asic_reset._entry, ptr @vi_asic_reset._entry.6, ptr @vi_asic_reset._entry_ptr, ptr @vi_asic_reset._entry_ptr.8, ptr @vi_asic_reset_method._entry, ptr @vi_asic_reset_method._entry_ptr, ptr @vi_common_ip_block, ptr @vi_common_ip_funcs, ptr @.str, ptr @vi_asic_funcs, ptr @vi_allowed_read_registers, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @topaz_video_codecs_encode, ptr @topaz_video_codecs_decode, ptr @tonga_video_codecs_encode, ptr @tonga_video_codecs_decode, ptr @polaris_video_codecs_encode, ptr @cz_video_codecs_decode, ptr @tonga_video_codecs_encode_array, ptr @tonga_video_codecs_decode_array, ptr @polaris_video_codecs_encode_array, ptr @cz_video_codecs_decode_array, ptr @iceland_mgcg_cgcg_init, ptr @fiji_mgcg_cgcg_init, ptr @tonga_mgcg_cgcg_init, ptr @cz_mgcg_cgcg_init, ptr @stoney_mgcg_cgcg_init], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_common_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_common_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_asic_funcs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_allowed_read_registers to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_asic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_asic_reset._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vi_asic_reset_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topaz_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topaz_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris_video_codecs_encode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_video_codecs_decode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_video_codecs_encode_array to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_video_codecs_decode_array to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris_video_codecs_encode_array to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_video_codecs_decode_array to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_mgcg_cgcg_init to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_mgcg_cgcg_init to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_mgcg_cgcg_init to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_mgcg_cgcg_init to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stoney_mgcg_cgcg_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vi_srbm_select(ptr noundef %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %queue, i32 noundef %vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 913, i32 noundef %or13, i32 noundef 0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vi_set_virt_ops(ptr nocapture noundef writeonly %adev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgpu_vi_virt_ops, ptr %ops, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vi_set_ip_blocks(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 10, label %sw.bb
    i32 12, label %sw.bb7
    i32 11, label %sw.bb34
    i32 15, label %entry.sw.bb66_crit_edge
    i32 16, label %entry.sw.bb66_crit_edge215
    i32 17, label %entry.sw.bb66_crit_edge216
    i32 18, label %entry.sw.bb66_crit_edge217
    i32 13, label %sw.bb87
    i32 14, label %sw.bb109
  ]

entry.sw.bb66_crit_edge217:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66

entry.sw.bb66_crit_edge216:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66

entry.sw.bb66_crit_edge215:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66

entry.sw.bb66_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vi_common_ip_block) #8
  %call1 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v7_4_ip_block) #8
  %call2 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @iceland_ih_ip_block) #8
  %call3 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v8_0_ip_block) #8
  %call4 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v2_4_ip_block) #8
  %call5 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #8
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %3 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_virtual_display, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vi_common_ip_block) #8
  %call9 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v8_5_ip_block) #8
  %call10 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @tonga_ih_ip_block) #8
  %call11 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v8_0_ip_block) #8
  %call12 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v3_0_ip_block) #8
  %call13 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #8
  %enable_virtual_display14 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %5 = ptrtoint ptr %enable_virtual_display14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_virtual_display14, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool15.not = icmp eq i8 %6, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %sw.bb7.if.end25_crit_edge

sw.bb7.if.end25_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

lor.lhs.false:                                    ; preds = %sw.bb7
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #8
  %dm_ip_block.dce_v10_1_ip_block = select i1 %call19, ptr @dm_ip_block, ptr @dce_v10_1_ip_block
  br label %if.end25

if.end25:                                         ; preds = %if.else, %lor.lhs.false.if.end25_crit_edge, %sw.bb7.if.end25_crit_edge
  %dm_ip_block.sink = phi ptr [ @amdgpu_vkms_ip_block, %lor.lhs.false.if.end25_crit_edge ], [ @amdgpu_vkms_ip_block, %sw.bb7.if.end25_crit_edge ], [ %dm_ip_block.dce_v10_1_ip_block, %if.else ]
  %call21 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %dm_ip_block.sink) #8
  %virt26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %9 = ptrtoint ptr %virt26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt26, align 8
  %and28 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.return.sink.split.sink.split_crit_edge, label %if.end25.return_crit_edge

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end25.return.sink.split.sink.split_crit_edge:  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.sink.split

sw.bb34:                                          ; preds = %entry
  %call35 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vi_common_ip_block) #8
  %call36 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v8_0_ip_block) #8
  %call37 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @tonga_ih_ip_block) #8
  %call38 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v8_0_ip_block) #8
  %call39 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v3_0_ip_block) #8
  %call40 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #8
  %enable_virtual_display41 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %11 = ptrtoint ptr %enable_virtual_display41 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_virtual_display41, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool42.not = icmp eq i8 %12, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %sw.bb34.if.end57_crit_edge

sw.bb34.if.end57_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

lor.lhs.false43:                                  ; preds = %sw.bb34
  %virt44 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %13 = ptrtoint ptr %virt44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %virt44, align 8
  %and46 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else50, label %lor.lhs.false43.if.end57_crit_edge

lor.lhs.false43.if.end57_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else50:                                        ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #8
  %dm_ip_block.dce_v10_0_ip_block = select i1 %call51, ptr @dm_ip_block, ptr @dce_v10_0_ip_block
  br label %if.end57

if.end57:                                         ; preds = %if.else50, %lor.lhs.false43.if.end57_crit_edge, %sw.bb34.if.end57_crit_edge
  %dm_ip_block.sink210 = phi ptr [ @amdgpu_vkms_ip_block, %lor.lhs.false43.if.end57_crit_edge ], [ @amdgpu_vkms_ip_block, %sw.bb34.if.end57_crit_edge ], [ %dm_ip_block.dce_v10_0_ip_block, %if.else50 ]
  %call53 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %dm_ip_block.sink210) #8
  %virt58 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %15 = ptrtoint ptr %virt58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt58, align 8
  %and60 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end57.return.sink.split.sink.split_crit_edge, label %if.end57.return_crit_edge

if.end57.return_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end57.return.sink.split.sink.split_crit_edge:  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.sink.split

sw.bb66:                                          ; preds = %entry.sw.bb66_crit_edge, %entry.sw.bb66_crit_edge215, %entry.sw.bb66_crit_edge216, %entry.sw.bb66_crit_edge217
  %call67 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vi_common_ip_block) #8
  %call68 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v8_1_ip_block) #8
  %call69 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @tonga_ih_ip_block) #8
  %call70 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v8_0_ip_block) #8
  %call71 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v3_1_ip_block) #8
  %call72 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #8
  %enable_virtual_display73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %17 = ptrtoint ptr %enable_virtual_display73 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_virtual_display73, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool74.not = icmp eq i8 %18, 0
  br i1 %tobool74.not, label %if.else77, label %sw.bb66.return.sink.split.sink.split.sink.split_crit_edge

sw.bb66.return.sink.split.sink.split.sink.split_crit_edge: ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.sink.split.sink.split

if.else77:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #8
  %dm_ip_block.dce_v11_2_ip_block = select i1 %call78, ptr @dm_ip_block, ptr @dce_v11_2_ip_block
  br label %return.sink.split.sink.split.sink.split

sw.bb87:                                          ; preds = %entry
  %call88 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vi_common_ip_block) #8
  %call89 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v8_0_ip_block) #8
  %call90 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cz_ih_ip_block) #8
  %call91 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v8_0_ip_block) #8
  %call92 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v3_0_ip_block) #8
  %call93 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #8
  %enable_virtual_display94 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %19 = ptrtoint ptr %enable_virtual_display94 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enable_virtual_display94, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool95.not = icmp eq i8 %20, 0
  br i1 %tobool95.not, label %if.else98, label %sw.bb87.if.end105_crit_edge

sw.bb87.if.end105_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.else98:                                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  %call99 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #8
  %dm_ip_block.dce_v11_0_ip_block = select i1 %call99, ptr @dm_ip_block, ptr @dce_v11_0_ip_block
  br label %if.end105

if.end105:                                        ; preds = %if.else98, %sw.bb87.if.end105_crit_edge
  %dm_ip_block.sink212 = phi ptr [ @amdgpu_vkms_ip_block, %sw.bb87.if.end105_crit_edge ], [ %dm_ip_block.dce_v11_0_ip_block, %if.else98 ]
  %call101 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %dm_ip_block.sink212) #8
  br label %return.sink.split.sink.split.sink.split

sw.bb109:                                         ; preds = %entry
  %call110 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vi_common_ip_block) #8
  %call111 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gmc_v8_0_ip_block) #8
  %call112 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @cz_ih_ip_block) #8
  %call113 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v8_1_ip_block) #8
  %call114 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v3_0_ip_block) #8
  %call115 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #8
  %enable_virtual_display116 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %21 = ptrtoint ptr %enable_virtual_display116 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enable_virtual_display116, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool117.not = icmp eq i8 %22, 0
  br i1 %tobool117.not, label %if.else120, label %sw.bb109.if.end127_crit_edge

sw.bb109.if.end127_crit_edge:                     ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.else120:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  %call121 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #8
  %dm_ip_block.dce_v11_0_ip_block214 = select i1 %call121, ptr @dm_ip_block, ptr @dce_v11_0_ip_block
  br label %if.end127

if.end127:                                        ; preds = %if.else120, %sw.bb109.if.end127_crit_edge
  %dm_ip_block.sink213 = phi ptr [ @amdgpu_vkms_ip_block, %sw.bb109.if.end127_crit_edge ], [ %dm_ip_block.dce_v11_0_ip_block214, %if.else120 ]
  %call123 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %dm_ip_block.sink213) #8
  br label %return.sink.split.sink.split.sink.split

return.sink.split.sink.split.sink.split:          ; preds = %if.end127, %if.end105, %if.else77, %sw.bb66.return.sink.split.sink.split.sink.split_crit_edge
  %dm_ip_block.sink211.sink = phi ptr [ @uvd_v6_0_ip_block, %if.end105 ], [ @uvd_v6_2_ip_block, %if.end127 ], [ @amdgpu_vkms_ip_block, %sw.bb66.return.sink.split.sink.split.sink.split_crit_edge ], [ %dm_ip_block.dce_v11_2_ip_block, %if.else77 ]
  %uvd_v5_0_ip_block.sink.ph = phi ptr [ @vce_v3_1_ip_block, %if.end105 ], [ @vce_v3_4_ip_block, %if.end127 ], [ @uvd_v6_3_ip_block, %sw.bb66.return.sink.split.sink.split.sink.split_crit_edge ], [ @uvd_v6_3_ip_block, %if.else77 ]
  %vce_v3_4_ip_block.sink.ph.ph = phi ptr [ @acp_ip_block, %if.end105 ], [ @acp_ip_block, %if.end127 ], [ @vce_v3_4_ip_block, %sw.bb66.return.sink.split.sink.split.sink.split_crit_edge ], [ @vce_v3_4_ip_block, %if.else77 ]
  %call80 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %dm_ip_block.sink211.sink) #8
  br label %return.sink.split.sink.split

return.sink.split.sink.split:                     ; preds = %return.sink.split.sink.split.sink.split, %if.end57.return.sink.split.sink.split_crit_edge, %if.end25.return.sink.split.sink.split_crit_edge
  %uvd_v5_0_ip_block.sink = phi ptr [ @uvd_v6_0_ip_block, %if.end25.return.sink.split.sink.split_crit_edge ], [ @uvd_v5_0_ip_block, %if.end57.return.sink.split.sink.split_crit_edge ], [ %uvd_v5_0_ip_block.sink.ph, %return.sink.split.sink.split.sink.split ]
  %vce_v3_4_ip_block.sink.ph = phi ptr [ @vce_v3_0_ip_block, %if.end25.return.sink.split.sink.split_crit_edge ], [ @vce_v3_0_ip_block, %if.end57.return.sink.split.sink.split_crit_edge ], [ %vce_v3_4_ip_block.sink.ph.ph, %return.sink.split.sink.split.sink.split ]
  %call63 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %uvd_v5_0_ip_block.sink) #8
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %sw.bb.return.sink.split_crit_edge
  %vce_v3_4_ip_block.sink = phi ptr [ @amdgpu_vkms_ip_block, %sw.bb.return.sink.split_crit_edge ], [ %vce_v3_4_ip_block.sink.ph, %return.sink.split.sink.split ]
  %call86 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %vce_v3_4_ip_block.sink) #8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end57.return_crit_edge, %if.end25.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end57.return_crit_edge ], [ 0, %if.end25.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_block_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @legacy_doorbell_index_init(ptr nocapture noundef writeonly %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %doorbell_index = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144
  %0 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %doorbell_index, align 4
  %mec_ring0 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 1
  %1 = ptrtoint ptr %mec_ring0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %mec_ring0, align 4
  %mec_ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 2
  %2 = ptrtoint ptr %mec_ring1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17, ptr %mec_ring1, align 4
  %mec_ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 3
  %3 = ptrtoint ptr %mec_ring2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 18, ptr %mec_ring2, align 4
  %mec_ring3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 4
  %4 = ptrtoint ptr %mec_ring3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 19, ptr %mec_ring3, align 4
  %mec_ring4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 5
  %5 = ptrtoint ptr %mec_ring4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %mec_ring4, align 4
  %mec_ring5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 6
  %6 = ptrtoint ptr %mec_ring5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 21, ptr %mec_ring5, align 4
  %mec_ring6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 7
  %7 = ptrtoint ptr %mec_ring6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 22, ptr %mec_ring6, align 4
  %mec_ring7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 8
  %8 = ptrtoint ptr %mec_ring7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 23, ptr %mec_ring7, align 4
  %gfx_ring0 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 11
  %9 = ptrtoint ptr %gfx_ring0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %gfx_ring0, align 4
  %sdma_engine = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13
  %10 = ptrtoint ptr %sdma_engine to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 480, ptr %sdma_engine, align 4
  %arrayidx13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13, i32 1
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 481, ptr %arrayidx13, align 4
  %ih = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 15
  %12 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 488, ptr %ih, align 4
  %max_assignment = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 19
  %13 = ptrtoint ptr %max_assignment to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1023, ptr %max_assignment, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, ptr @vi_smc_rreg, ptr @cz_smc_rreg
  %spec.select141 = select i1 %tobool.not, ptr @vi_smc_wreg, ptr @cz_smc_wreg
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 4
  %4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select141, ptr %4, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %6 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vi_pcie_rreg, ptr %pcie_rreg, align 8
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %7 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vi_pcie_wreg, ptr %pcie_wreg, align 4
  %uvd_ctx_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 46
  %8 = ptrtoint ptr %uvd_ctx_rreg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vi_uvd_ctx_rreg, ptr %uvd_ctx_rreg, align 4
  %uvd_ctx_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %9 = ptrtoint ptr %uvd_ctx_wreg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vi_uvd_ctx_wreg, ptr %uvd_ctx_wreg, align 8
  %didt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 49
  %10 = ptrtoint ptr %didt_rreg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vi_didt_rreg, ptr %didt_rreg, align 8
  %didt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 50
  %11 = ptrtoint ptr %didt_wreg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vi_didt_wreg, ptr %didt_wreg, align 4
  %gc_cac_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 52
  %12 = ptrtoint ptr %gc_cac_rreg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vi_gc_cac_rreg, ptr %gc_cac_rreg, align 4
  %gc_cac_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 53
  %13 = ptrtoint ptr %gc_cac_wreg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vi_gc_cac_wreg, ptr %gc_cac_wreg, align 8
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %14 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vi_asic_funcs, ptr %asic_funcs, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %call.i = tail call i32 %16(ptr noundef %handle, i32 noundef -1073659836) #8
  %and1.i = lshr i32 %call.i, 9
  %shr.i = and i32 %and1.i, 15
  br label %vi_get_rev_id.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 4035, i32 noundef 0) #8
  %shr4.i = lshr i32 %call2.i, 28
  br label %vi_get_rev_id.exit

vi_get_rev_id.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %shr.i, %if.then.i ], [ %shr4.i, %if.else.i ]
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 7
  %17 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %rev_id, align 8
  %external_rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 8
  %18 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 255, ptr %external_rev_id, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %19 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %asic_type, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %20, label %vi_get_rev_id.exit.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 12, label %sw.bb4
    i32 11, label %sw.bb9
    i32 16, label %sw.bb15
    i32 15, label %sw.bb21
    i32 17, label %sw.bb27
    i32 18, label %sw.bb33
    i32 13, label %sw.bb39
    i32 14, label %sw.bb68
  ]

vi_get_rev_id.exit.cleanup_crit_edge:             ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %22 = ptrtoint ptr %cg_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cg_flags, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %23 = ptrtoint ptr %pg_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pg_flags, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %24 = ptrtoint ptr %cg_flags5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 245759, ptr %cg_flags5, align 8
  %pg_flags6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %25 = ptrtoint ptr %pg_flags6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pg_flags6, align 4
  %add = add nuw nsw i32 %retval.0.i, 60
  br label %sw.epilog

sw.bb9:                                           ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags10 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %26 = ptrtoint ptr %cg_flags10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 507661, ptr %cg_flags10, align 8
  %pg_flags11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %27 = ptrtoint ptr %pg_flags11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %pg_flags11, align 4
  %add13 = add nuw nsw i32 %retval.0.i, 20
  br label %sw.epilog

sw.bb15:                                          ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %28 = ptrtoint ptr %cg_flags16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4194253, ptr %cg_flags16, align 8
  %pg_flags17 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %29 = ptrtoint ptr %pg_flags17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %pg_flags17, align 4
  %add19 = add nuw nsw i32 %retval.0.i, 90
  br label %sw.epilog

sw.bb21:                                          ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags22 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %30 = ptrtoint ptr %cg_flags22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4194253, ptr %cg_flags22, align 8
  %pg_flags23 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %31 = ptrtoint ptr %pg_flags23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %pg_flags23, align 4
  %add25 = or i32 %retval.0.i, 80
  br label %sw.epilog

sw.bb27:                                          ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags28 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %32 = ptrtoint ptr %cg_flags28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4194253, ptr %cg_flags28, align 8
  %pg_flags29 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %33 = ptrtoint ptr %pg_flags29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pg_flags29, align 4
  %add31 = add nuw nsw i32 %retval.0.i, 100
  br label %sw.epilog

sw.bb33:                                          ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags34 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %34 = ptrtoint ptr %cg_flags34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cg_flags34, align 8
  %pg_flags35 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %35 = ptrtoint ptr %pg_flags35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %pg_flags35, align 4
  %add37 = add nuw nsw i32 %retval.0.i, 110
  br label %sw.epilog

sw.bb39:                                          ; preds = %vi_get_rev_id.exit
  %cg_flags40 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %36 = ptrtoint ptr %cg_flags40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 130303, ptr %cg_flags40, align 8
  %pg_flags41 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %37 = ptrtoint ptr %pg_flags41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pg_flags41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb39.if.then62_crit_edge

sw.bb39.if.then62_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false:                                    ; preds = %sw.bb39
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %revision, align 4
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %41, label %lor.lhs.false.if.end64_crit_edge [
    i8 -26, label %lor.lhs.false.if.then62_crit_edge
    i8 -27, label %lor.lhs.false.if.then62_crit_edge142
    i8 -28, label %lor.lhs.false.if.then62_crit_edge143
    i8 -29, label %lor.lhs.false.if.then62_crit_edge144
    i8 -30, label %lor.lhs.false.if.then62_crit_edge145
    i8 -31, label %lor.lhs.false.if.then62_crit_edge146
    i8 -50, label %lor.lhs.false.if.then62_crit_edge147
    i8 -51, label %lor.lhs.false.if.then62_crit_edge148
    i8 -52, label %lor.lhs.false.if.then62_crit_edge149
    i8 -53, label %lor.lhs.false.if.then62_crit_edge150
    i8 -54, label %lor.lhs.false.if.then62_crit_edge151
    i8 -55, label %lor.lhs.false.if.then62_crit_edge152
    i8 -56, label %lor.lhs.false.if.then62_crit_edge153
  ]

lor.lhs.false.if.then62_crit_edge153:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge152:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge151:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge150:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge149:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge148:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge147:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge146:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge145:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge144:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge143:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge142:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %lor.lhs.false.if.then62_crit_edge142, %lor.lhs.false.if.then62_crit_edge143, %lor.lhs.false.if.then62_crit_edge144, %lor.lhs.false.if.then62_crit_edge145, %lor.lhs.false.if.then62_crit_edge146, %lor.lhs.false.if.then62_crit_edge147, %lor.lhs.false.if.then62_crit_edge148, %lor.lhs.false.if.then62_crit_edge149, %lor.lhs.false.if.then62_crit_edge150, %lor.lhs.false.if.then62_crit_edge151, %lor.lhs.false.if.then62_crit_edge152, %lor.lhs.false.if.then62_crit_edge153, %sw.bb39.if.then62_crit_edge
  %43 = ptrtoint ptr %pg_flags41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4154, ptr %pg_flags41, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %lor.lhs.false.if.end64_crit_edge
  %add66 = add nuw nsw i32 %retval.0.i, 1
  br label %sw.epilog

sw.bb68:                                          ; preds = %vi_get_rev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cg_flags69 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %44 = ptrtoint ptr %cg_flags69 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 130299, ptr %cg_flags69, align 8
  %pg_flags70 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %45 = ptrtoint ptr %pg_flags70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4155, ptr %pg_flags70, align 4
  %add72 = add nuw nsw i32 %retval.0.i, 97
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb68, %if.end64, %sw.bb33, %sw.bb27, %sw.bb21, %sw.bb15, %sw.bb9, %sw.bb4, %sw.bb
  %add72.sink = phi i32 [ %add72, %sw.bb68 ], [ %add66, %if.end64 ], [ %add37, %sw.bb33 ], [ %add31, %sw.bb27 ], [ %add25, %sw.bb21 ], [ %add19, %sw.bb15 ], [ %add13, %sw.bb9 ], [ %add, %sw.bb4 ], [ 1, %sw.bb ]
  %46 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add72.sink, ptr %external_rev_id, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %47 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %virt, align 8
  %and74 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %sw.epilog.cleanup_crit_edge, label %if.then76

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then76:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_virt_init_setting(ptr noundef %handle) #8
  tail call void @xgpu_vi_mailbox_set_irq_funcs(ptr noundef %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %sw.epilog.cleanup_crit_edge, %vi_get_rev_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vi_get_rev_id.exit.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_late_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @xgpu_vi_mailbox_get_irq(ptr noundef %handle) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @xgpu_vi_mailbox_add_irq_id(ptr noundef %handle) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vi_common_sw_fini(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %data1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xgpu_vi_init_golden_registers(ptr noundef %handle) #8
  br label %vi_init_golden_registers.exit

if.end.i:                                         ; preds = %entry
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %if.end.i.vi_init_golden_registers.exit_crit_edge [
    i32 10, label %sw.bb.i
    i32 12, label %sw.bb2.i
    i32 11, label %sw.bb3.i
    i32 13, label %sw.bb4.i
    i32 14, label %sw.bb5.i
  ]

if.end.i.vi_init_golden_registers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_init_golden_registers.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @iceland_mgcg_cgcg_init, i32 noundef 15) #8
  br label %vi_init_golden_registers.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @fiji_mgcg_cgcg_init, i32 noundef 21) #8
  br label %vi_init_golden_registers.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @tonga_mgcg_cgcg_init, i32 noundef 21) #8
  br label %vi_init_golden_registers.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @cz_mgcg_cgcg_init, i32 noundef 15) #8
  br label %vi_init_golden_registers.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @stoney_mgcg_cgcg_init, i32 noundef 9) #8
  br label %vi_init_golden_registers.exit

vi_init_golden_registers.exit:                    ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.end.i.vi_init_golden_registers.exit_crit_edge, %if.then.i
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data1.i) #8
  %5 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %data1.i, align 4, !annotation !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_aspm to i32))
  %6 = load i32, ptr @amdgpu_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i4 = icmp eq i32 %6, 0
  br i1 %tobool.not.i4, label %vi_init_golden_registers.exit.vi_program_aspm.exit_crit_edge, label %if.end.i6

vi_init_golden_registers.exit.vi_program_aspm.exit_crit_edge: ; preds = %vi_init_golden_registers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_program_aspm.exit

if.end.i6:                                        ; preds = %vi_init_golden_registers.exit
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i5 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool1.not.i = icmp eq i32 %and.i5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i6.vi_program_aspm.exit_crit_edge

if.end.i6.vi_program_aspm.exit_crit_edge:         ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_program_aspm.exit

lor.lhs.false.i:                                  ; preds = %if.end.i6
  %asic_type.i7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %9 = ptrtoint ptr %asic_type.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_type.i7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp.i = icmp ult i32 %10, 15
  br i1 %cmp.i, label %lor.lhs.false.i.vi_program_aspm.exit_crit_edge, label %if.end3.i

lor.lhs.false.i.vi_program_aspm.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_program_aspm.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %11 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i = tail call i32 %12(ptr noundef %handle, i32 noundef 268501152) #8
  %and5.i = and i32 %call.i, -130817
  %or.i = or i32 %and5.i, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %or.i)
  %cmp6.not.i = icmp eq i32 %call.i, %or.i
  br i1 %cmp6.not.i, label %if.end3.i.if.end8.i_crit_edge, label %if.then7.i

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %13 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %14(ptr noundef %handle, i32 noundef 268501152, i32 noundef %or.i) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end3.i.if.end8.i_crit_edge
  %15 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_rreg.i, align 8
  %call10.i = tail call i32 %16(ptr noundef %handle, i32 noundef 268501155) #8
  %and11.i = and i32 %call10.i, -512
  %or13.i = or i32 %and11.i, 292
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %or13.i)
  %cmp14.not.i = icmp eq i32 %call10.i, %or13.i
  br i1 %cmp14.not.i, label %if.end8.i.if.end17.i_crit_edge, label %if.then15.i

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg16.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %17 = ptrtoint ptr %pcie_wreg16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie_wreg16.i, align 4
  tail call void %18(ptr noundef %handle, i32 noundef 268501155, i32 noundef %or13.i) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end8.i.if.end17.i_crit_edge
  %19 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie_rreg.i, align 8
  %call19.i = tail call i32 %20(ptr noundef %handle, i32 noundef 268501173) #8
  %or20.i = or i32 %call19.i, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %or20.i)
  %cmp21.not.i = icmp eq i32 %call19.i, %or20.i
  br i1 %cmp21.not.i, label %if.end17.i.if.end24.i_crit_edge, label %if.then22.i

if.end17.i.if.end24.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg23.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %21 = ptrtoint ptr %pcie_wreg23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcie_wreg23.i, align 4
  tail call void %22(ptr noundef %handle, i32 noundef 268501173, i32 noundef %or20.i) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end24.i_crit_edge
  %23 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcie_rreg.i, align 8
  %call26.i = tail call i32 %24(ptr noundef %handle, i32 noundef 20971584) #8
  %or27.i = or i32 %call26.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %or27.i)
  %cmp28.not.i = icmp eq i32 %call26.i, %or27.i
  br i1 %cmp28.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then29.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg30.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %25 = ptrtoint ptr %pcie_wreg30.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie_wreg30.i, align 4
  tail call void %26(ptr noundef %handle, i32 noundef 20971584, i32 noundef %or27.i) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end24.i.if.end31.i_crit_edge
  %27 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcie_rreg.i, align 8
  %call33.i = tail call i32 %28(ptr noundef %handle, i32 noundef 268501190) #8
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call33.i, ptr %data.i, align 4
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 4
  %call34.i = call i32 @pci_read_config_dword(ptr noundef %31, i32 noundef 888, ptr noundef nonnull %data1.i) #8
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data.i, align 4
  %and35.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %and37.i = and i32 %33, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %or.cond.i = or i1 %tobool36.not.i, %tobool38.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.end31.i.if.end44.i_crit_edge

if.end31.i.if.end44.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data1.i, align 4
  %and40.i = and i32 %35, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp ne i32 %and40.i, 0
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i, %if.end31.i.if.end44.i_crit_edge
  %bL1SS.0.off0.i = phi i1 [ true, %if.end31.i.if.end44.i_crit_edge ], [ %tobool41.not.i, %if.else.i ]
  %36 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcie_rreg.i, align 8
  %call46.i = call i32 %37(ptr noundef %handle, i32 noundef 268501179) #8
  %or47.i = or i32 %call46.i, 2097152
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or47.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call46.i, i32 %or47.i)
  %cmp48.not.i = icmp eq i32 %call46.i, %or47.i
  br i1 %cmp48.not.i, label %if.end44.i.if.end51.i_crit_edge, label %if.then49.i

if.end44.i.if.end51.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg50.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %39 = ptrtoint ptr %pcie_wreg50.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcie_wreg50.i, align 4
  call void %40(ptr noundef %handle, i32 noundef 268501179, i32 noundef %or47.i) #8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end51.i_crit_edge
  %41 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcie_rreg.i, align 8
  %call53.i = call i32 %42(ptr noundef %handle, i32 noundef 268501154) #8
  %or54.i = or i32 %call53.i, 6291456
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or54.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call53.i, i32 %or54.i)
  %cmp55.not.i = icmp eq i32 %call53.i, %or54.i
  br i1 %cmp55.not.i, label %if.end51.i.if.end58.i_crit_edge, label %if.then56.i

if.end51.i.if.end58.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg57.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %44 = ptrtoint ptr %pcie_wreg57.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcie_wreg57.i, align 4
  call void %45(ptr noundef %handle, i32 noundef 268501154, i32 noundef %or54.i) #8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %if.end51.i.if.end58.i_crit_edge
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 4
  %call60.i = call i32 @pci_read_config_dword(ptr noundef %47, i32 noundef 100, ptr noundef nonnull %data.i) #8
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data.i, align 4
  %and61.i = and i32 %49, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end58.i.if.end150.i_crit_edge, label %if.then66.i

if.end58.i.if.end150.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

if.then66.i:                                      ; preds = %if.end58.i
  %smc_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %50 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smc_rreg.i, align 4
  %call67.i = call i32 %51(ptr noundef %handle, i32 noundef -1068498520) #8
  %and68.i = and i32 %call67.i, -65536
  %or69.i = or i32 %and68.i, 257
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or69.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call67.i, i32 %or69.i)
  %cmp70.not.i = icmp eq i32 %call67.i, %or69.i
  br i1 %cmp70.not.i, label %if.then66.i.if.end72.i_crit_edge, label %if.then71.i

if.then66.i.if.end72.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then71.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #10
  %smc_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %53 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %smc_wreg.i, align 8
  call void %54(ptr noundef %handle, i32 noundef -1068498520, i32 noundef %or69.i) #8
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then71.i, %if.then66.i.if.end72.i_crit_edge
  %55 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smc_rreg.i, align 4
  %call74.i = call i32 %56(ptr noundef %handle, i32 noundef -1068498516) #8
  %and75.i = and i32 %call74.i, -16777216
  %or77.i = or i32 %and75.i, 2097409
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or77.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call74.i, i32 %or77.i)
  %cmp78.not.i = icmp eq i32 %call74.i, %or77.i
  br i1 %cmp78.not.i, label %if.end72.i.if.end81.i_crit_edge, label %if.then79.i

if.end72.i.if.end81.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then79.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  %smc_wreg80.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %58 = ptrtoint ptr %smc_wreg80.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %smc_wreg80.i, align 8
  call void %59(ptr noundef %handle, i32 noundef -1068498516, i32 noundef %or77.i) #8
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then79.i, %if.end72.i.if.end81.i_crit_edge
  %60 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smc_rreg.i, align 4
  %call83.i = call i32 %61(ptr noundef %handle, i32 noundef -1068498528) #8
  %or84.i = or i32 %call83.i, 2
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or84.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call83.i, i32 %or84.i)
  %cmp85.not.i = icmp eq i32 %call83.i, %or84.i
  br i1 %cmp85.not.i, label %if.end81.i.if.end88.i_crit_edge, label %if.then86.i

if.end81.i.if.end88.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.then86.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %smc_wreg87.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %63 = ptrtoint ptr %smc_wreg87.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %smc_wreg87.i, align 8
  call void %64(ptr noundef %handle, i32 noundef -1068498528, i32 noundef %or84.i) #8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then86.i, %if.end81.i.if.end88.i_crit_edge
  %65 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %smc_rreg.i, align 4
  %call90.i = call i32 %66(ptr noundef %handle, i32 noundef -1068498524) #8
  %or91.i = or i32 %call90.i, 1
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or91.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call90.i, i32 %or91.i)
  %cmp92.not.i = icmp eq i32 %call90.i, %or91.i
  br i1 %cmp92.not.i, label %if.end88.i.if.end95.i_crit_edge, label %if.then93.i

if.end88.i.if.end95.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.i

if.then93.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  %smc_wreg94.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %68 = ptrtoint ptr %smc_wreg94.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %smc_wreg94.i, align 8
  call void %69(ptr noundef %handle, i32 noundef -1068498528, i32 noundef %or91.i) #8
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then93.i, %if.end88.i.if.end95.i_crit_edge
  %70 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %smc_rreg.i, align 4
  %call97.i = call i32 %71(ptr noundef %handle, i32 noundef -1068498532) #8
  %and98.i = and i32 %call97.i, -65281
  %or99.i = or i32 %and98.i, 1024
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or99.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call97.i, i32 %or99.i)
  %cmp100.not.i = icmp eq i32 %call97.i, %or99.i
  br i1 %cmp100.not.i, label %if.end95.i.if.end103.i_crit_edge, label %if.then101.i

if.end95.i.if.end103.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then101.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  %smc_wreg102.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %73 = ptrtoint ptr %smc_wreg102.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %smc_wreg102.i, align 8
  call void %74(ptr noundef %handle, i32 noundef -1068498532, i32 noundef %or99.i) #8
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then101.i, %if.end95.i.if.end103.i_crit_edge
  %75 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcie_rreg.i, align 8
  %call105.i = call i32 %76(ptr noundef %handle, i32 noundef 20971800) #8
  %or106.i = or i32 %call105.i, 20971520
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or106.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call105.i, i32 %or106.i)
  %cmp107.not.i = icmp eq i32 %call105.i, %or106.i
  br i1 %cmp107.not.i, label %if.end103.i.if.end110.i_crit_edge, label %if.then108.i

if.end103.i.if.end110.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.i

if.then108.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg109.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %78 = ptrtoint ptr %pcie_wreg109.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcie_wreg109.i, align 4
  call void %79(ptr noundef %handle, i32 noundef 20971800, i32 noundef %or106.i) #8
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then108.i, %if.end103.i.if.end110.i_crit_edge
  %80 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pcie_rreg.i, align 8
  %call112.i = call i32 %81(ptr noundef %handle, i32 noundef 20971537) #8
  %and113.i = and i32 %call112.i, -16
  %or114.i = or i32 %and113.i, 14
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or114.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call112.i, i32 %or114.i)
  %cmp115.not.i = icmp eq i32 %call112.i, %or114.i
  br i1 %cmp115.not.i, label %if.end110.i.if.end118.i_crit_edge, label %if.then116.i

if.end110.i.if.end118.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.then116.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg117.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %83 = ptrtoint ptr %pcie_wreg117.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcie_wreg117.i, align 4
  call void %84(ptr noundef %handle, i32 noundef 20971537, i32 noundef %or114.i) #8
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then116.i, %if.end110.i.if.end118.i_crit_edge
  %call119.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5317, i32 noundef 0) #8
  %or120.i = or i32 %call119.i, 1
  %85 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or120.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call119.i, i32 %or120.i)
  %cmp121.not.i = icmp eq i32 %call119.i, %or120.i
  br i1 %cmp121.not.i, label %if.end118.i.if.end123.i_crit_edge, label %if.then122.i

if.end118.i.if.end123.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123.i

if.then122.i:                                     ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5317, i32 noundef %or120.i, i32 noundef 0) #8
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then122.i, %if.end118.i.if.end123.i_crit_edge
  %86 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcie_rreg.i, align 8
  %call125.i = call i32 %87(ptr noundef %handle, i32 noundef 268501180) #8
  %or126.i = or i32 %call125.i, 1024
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or126.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call125.i, i32 %or126.i)
  %cmp127.not.i = icmp eq i32 %call125.i, %or126.i
  br i1 %cmp127.not.i, label %if.end123.i.if.end130.i_crit_edge, label %if.then128.i

if.end123.i.if.end130.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130.i

if.then128.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg129.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %89 = ptrtoint ptr %pcie_wreg129.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcie_wreg129.i, align 4
  call void %90(ptr noundef %handle, i32 noundef 268501180, i32 noundef %or126.i) #8
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then128.i, %if.end123.i.if.end130.i_crit_edge
  %91 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcie_rreg.i, align 8
  %call132.i = call i32 %92(ptr noundef %handle, i32 noundef 20971522) #8
  %or133.i = or i32 %call132.i, 2
  %93 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or133.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call132.i, i32 %or133.i)
  %cmp134.not.i = icmp eq i32 %call132.i, %or133.i
  br i1 %cmp134.not.i, label %if.end130.i.if.end137.i_crit_edge, label %if.then135.i

if.end130.i.if.end137.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137.i

if.then135.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg136.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %94 = ptrtoint ptr %pcie_wreg136.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pcie_wreg136.i, align 4
  call void %95(ptr noundef %handle, i32 noundef 20971522, i32 noundef %or133.i) #8
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then135.i, %if.end130.i.if.end137.i_crit_edge
  %96 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pcie_rreg.i, align 8
  %call139.i = call i32 %97(ptr noundef %handle, i32 noundef 268501169) #8
  %or141.i = or i32 %call139.i, 393216
  %and144.i = and i32 %or141.i, -131073
  %spec.select366.i = select i1 %bL1SS.0.off0.i, i32 %and144.i, i32 %or141.i
  %98 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %spec.select366.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call139.i, i32 %spec.select366.i)
  %cmp146.not.i = icmp eq i32 %call139.i, %spec.select366.i
  br i1 %cmp146.not.i, label %if.end137.i.if.end150.i_crit_edge, label %if.then147.i

if.end137.i.if.end150.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

if.then147.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg148.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %99 = ptrtoint ptr %pcie_wreg148.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcie_wreg148.i, align 4
  call void %100(ptr noundef %handle, i32 noundef 268501169, i32 noundef %spec.select366.i) #8
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then147.i, %if.end137.i.if.end150.i_crit_edge, %if.end58.i.if.end150.i_crit_edge
  %101 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i.i = call i32 %102(ptr noundef %handle, i32 noundef 268501152) #8
  %or1.i.i = and i32 %call.i.i, -268539649
  %or2.i.i = or i32 %or1.i.i, 268474112
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %or2.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %or2.i.i
  br i1 %cmp.not.i.i, label %if.end150.i.vi_enable_aspm.exit.i_crit_edge, label %if.then.i.i

if.end150.i.vi_enable_aspm.exit.i_crit_edge:      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_enable_aspm.exit.i

if.then.i.i:                                      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %103 = ptrtoint ptr %pcie_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pcie_wreg.i.i, align 4
  call void %104(ptr noundef %handle, i32 noundef 268501152, i32 noundef %or2.i.i) #8
  br label %vi_enable_aspm.exit.i

vi_enable_aspm.exit.i:                            ; preds = %if.then.i.i, %if.end150.i.vi_enable_aspm.exit.i_crit_edge
  %105 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pcie_rreg.i, align 8
  %call152.i = call i32 %106(ptr noundef %handle, i32 noundef 268501155) #8
  %107 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call152.i, ptr %data.i, align 4
  %108 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pcie_rreg.i, align 8
  %call154.i = call i32 %109(ptr noundef %handle, i32 noundef 20971560) #8
  %110 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call154.i, ptr %data1.i, align 4
  %111 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %112)
  %cmp156.i = icmp ult i32 %112, -16777216
  %and158.i = and i32 %call154.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  %or.cond367.i = select i1 %cmp156.i, i1 true, i1 %tobool159.not.i
  %and161.i = and i32 %call154.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  %or.cond368.i = select i1 %or.cond367.i, i1 true, i1 %tobool162.not.i
  br i1 %or.cond368.i, label %vi_enable_aspm.exit.i.if.end171.i_crit_edge, label %if.then163.i

vi_enable_aspm.exit.i.if.end171.i_crit_edge:      ; preds = %vi_enable_aspm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171.i

if.then163.i:                                     ; preds = %vi_enable_aspm.exit.i
  %113 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pcie_rreg.i, align 8
  %call165.i = call i32 %114(ptr noundef %handle, i32 noundef 268501152) #8
  %and166.i = and i32 %call165.i, -3841
  %115 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and166.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call165.i, i32 %and166.i)
  %cmp167.not.i = icmp eq i32 %call165.i, %and166.i
  br i1 %cmp167.not.i, label %if.then163.i.if.end171.i_crit_edge, label %if.then168.i

if.then163.i.if.end171.i_crit_edge:               ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171.i

if.then168.i:                                     ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg169.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %116 = ptrtoint ptr %pcie_wreg169.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pcie_wreg169.i, align 4
  call void %117(ptr noundef %handle, i32 noundef 268501152, i32 noundef %and166.i) #8
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then168.i, %if.then163.i.if.end171.i_crit_edge, %vi_enable_aspm.exit.i.if.end171.i_crit_edge
  %118 = ptrtoint ptr %asic_type.i7 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %asic_type.i7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %119)
  %cmp173.i = icmp eq i32 %119, 17
  br i1 %cmp173.i, label %land.lhs.true174.i, label %lor.lhs.false225.i

land.lhs.true174.i:                               ; preds = %if.end171.i
  %120 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %device.i, align 2
  %124 = zext i16 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %123, label %land.lhs.true174.i.if.then236.i_crit_edge [
    i16 27015, label %land.lhs.true178.i
    i16 27009, label %land.lhs.true207.i
  ]

land.lhs.true174.i.if.then236.i_crit_edge:        ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then236.i

land.lhs.true178.i:                               ; preds = %land.lhs.true174.i
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 12
  %125 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %revision.i, align 4
  %127 = zext i8 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %126, label %land.lhs.true178.i.if.then236.i_crit_edge [
    i8 -64, label %land.lhs.true178.i.land.lhs.true233.i_crit_edge
    i8 -63, label %land.lhs.true178.i.land.lhs.true233.i_crit_edge13
    i8 -61, label %land.lhs.true178.i.land.lhs.true233.i_crit_edge14
    i8 -57, label %land.lhs.true178.i.land.lhs.true233.i_crit_edge15
  ]

land.lhs.true178.i.land.lhs.true233.i_crit_edge15: ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true178.i.land.lhs.true233.i_crit_edge14: ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true178.i.land.lhs.true233.i_crit_edge13: ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true178.i.land.lhs.true233.i_crit_edge:  ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true178.i.if.then236.i_crit_edge:        ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then236.i

land.lhs.true207.i:                               ; preds = %land.lhs.true174.i
  %revision209.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 12
  %128 = ptrtoint ptr %revision209.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %revision209.i, align 4
  %130 = zext i8 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %129, label %land.lhs.true207.i.if.then236.i_crit_edge [
    i8 0, label %land.lhs.true207.i.land.lhs.true233.i_crit_edge
    i8 1, label %land.lhs.true207.i.land.lhs.true233.i_crit_edge16
    i8 16, label %land.lhs.true207.i.land.lhs.true233.i_crit_edge17
  ]

land.lhs.true207.i.land.lhs.true233.i_crit_edge17: ; preds = %land.lhs.true207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true207.i.land.lhs.true233.i_crit_edge16: ; preds = %land.lhs.true207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true207.i.land.lhs.true233.i_crit_edge:  ; preds = %land.lhs.true207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true207.i.if.then236.i_crit_edge:        ; preds = %land.lhs.true207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then236.i

lor.lhs.false225.i:                               ; preds = %if.end171.i
  %131 = add i32 %119, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %132 = icmp ult i32 %131, 3
  br i1 %132, label %lor.lhs.false225.i.land.lhs.true233.i_crit_edge, label %lor.lhs.false225.i.vi_program_aspm.exit_crit_edge

lor.lhs.false225.i.vi_program_aspm.exit_crit_edge: ; preds = %lor.lhs.false225.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_program_aspm.exit

lor.lhs.false225.i.land.lhs.true233.i_crit_edge:  ; preds = %lor.lhs.false225.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true233.i

land.lhs.true233.i:                               ; preds = %lor.lhs.false225.i.land.lhs.true233.i_crit_edge, %land.lhs.true207.i.land.lhs.true233.i_crit_edge, %land.lhs.true207.i.land.lhs.true233.i_crit_edge16, %land.lhs.true207.i.land.lhs.true233.i_crit_edge17, %land.lhs.true178.i.land.lhs.true233.i_crit_edge, %land.lhs.true178.i.land.lhs.true233.i_crit_edge13, %land.lhs.true178.i.land.lhs.true233.i_crit_edge14, %land.lhs.true178.i.land.lhs.true233.i_crit_edge15
  %external_rev_id.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 8
  %133 = ptrtoint ptr %external_rev_id.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %external_rev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %134)
  %cmp234.i = icmp ugt i32 %134, 109
  br i1 %cmp234.i, label %land.lhs.true233.i.if.then236.i_crit_edge, label %land.lhs.true233.i.vi_program_aspm.exit_crit_edge

land.lhs.true233.i.vi_program_aspm.exit_crit_edge: ; preds = %land.lhs.true233.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_program_aspm.exit

land.lhs.true233.i.if.then236.i_crit_edge:        ; preds = %land.lhs.true233.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then236.i

if.then236.i:                                     ; preds = %land.lhs.true233.i.if.then236.i_crit_edge, %land.lhs.true207.i.if.then236.i_crit_edge, %land.lhs.true178.i.if.then236.i_crit_edge, %land.lhs.true174.i.if.then236.i_crit_edge
  %135 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pcie_rreg.i, align 8
  %call238.i = call i32 %136(ptr noundef %handle, i32 noundef 268501153) #8
  %and239.i = and i32 %call238.i, -8193
  %137 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %and239.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call238.i, i32 %and239.i)
  %cmp240.not.i = icmp eq i32 %call238.i, %and239.i
  br i1 %cmp240.not.i, label %if.then236.i.vi_program_aspm.exit_crit_edge, label %if.then242.i

if.then236.i.vi_program_aspm.exit_crit_edge:      ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_program_aspm.exit

if.then242.i:                                     ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg243.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %138 = ptrtoint ptr %pcie_wreg243.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pcie_wreg243.i, align 4
  call void %139(ptr noundef %handle, i32 noundef 268501153, i32 noundef %and239.i) #8
  br label %vi_program_aspm.exit

vi_program_aspm.exit:                             ; preds = %if.then242.i, %if.then236.i.vi_program_aspm.exit_crit_edge, %land.lhs.true233.i.vi_program_aspm.exit_crit_edge, %lor.lhs.false225.i.vi_program_aspm.exit_crit_edge, %lor.lhs.false.i.vi_program_aspm.exit_crit_edge, %if.end.i6.vi_program_aspm.exit_crit_edge, %vi_init_golden_registers.exit.vi_program_aspm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data1.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #8
  %flags.i8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %140 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i8, align 8
  %and.i9 = and i32 %141, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %if.end.i12, label %vi_program_aspm.exit.vi_enable_doorbell_aperture.exit_crit_edge

vi_program_aspm.exit.vi_enable_doorbell_aperture.exit_crit_edge: ; preds = %vi_program_aspm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_enable_doorbell_aperture.exit

if.end.i12:                                       ; preds = %vi_program_aspm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i11 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5377, i32 noundef 0) #8
  %tmp.0.i = or i32 %call.i11, 1
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5377, i32 noundef %tmp.0.i, i32 noundef 0) #8
  br label %vi_enable_doorbell_aperture.exit

vi_enable_doorbell_aperture.exit:                 ; preds = %if.end.i12, %vi_program_aspm.exit.vi_enable_doorbell_aperture.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vi_enable_doorbell_aperture.exit_crit_edge

entry.vi_enable_doorbell_aperture.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_enable_doorbell_aperture.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5377, i32 noundef 0) #8
  %and4.i = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5377, i32 noundef %and4.i, i32 noundef 0) #8
  br label %vi_enable_doorbell_aperture.exit

vi_enable_doorbell_aperture.exit:                 ; preds = %if.end.i, %entry.vi_enable_doorbell_aperture.exit_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %vi_enable_doorbell_aperture.exit.if.end_crit_edge, label %if.then

vi_enable_doorbell_aperture.exit.if.end_crit_edge: ; preds = %vi_enable_doorbell_aperture.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %vi_enable_doorbell_aperture.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xgpu_vi_mailbox_put_irq(ptr noundef %handle) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %vi_enable_doorbell_aperture.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.vi_enable_doorbell_aperture.exit.i_crit_edge

entry.vi_enable_doorbell_aperture.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_enable_doorbell_aperture.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5377, i32 noundef 0) #8
  %and4.i.i = and i32 %call.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5377, i32 noundef %and4.i.i, i32 noundef 0) #8
  br label %vi_enable_doorbell_aperture.exit.i

vi_enable_doorbell_aperture.exit.i:               ; preds = %if.end.i.i, %entry.vi_enable_doorbell_aperture.exit.i_crit_edge
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %vi_enable_doorbell_aperture.exit.i.vi_common_hw_fini.exit_crit_edge, label %if.then.i

vi_enable_doorbell_aperture.exit.i.vi_common_hw_fini.exit_crit_edge: ; preds = %vi_enable_doorbell_aperture.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_common_hw_fini.exit

if.then.i:                                        ; preds = %vi_enable_doorbell_aperture.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xgpu_vi_mailbox_put_irq(ptr noundef %handle) #8
  br label %vi_common_hw_fini.exit

vi_common_hw_fini.exit:                           ; preds = %if.then.i, %vi_enable_doorbell_aperture.exit.i.vi_common_hw_fini.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vi_common_hw_init(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vi_common_is_idle(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vi_common_wait_for_idle(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vi_common_soft_reset(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_common_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 13, label %if.end.sw.bb4_crit_edge
    i32 14, label %if.end.sw.bb4_crit_edge129
    i32 11, label %if.end.sw.bb9_crit_edge
    i32 15, label %if.end.sw.bb9_crit_edge130
    i32 16, label %if.end.sw.bb9_crit_edge131
    i32 17, label %if.end.sw.bb9_crit_edge132
    i32 18, label %if.end.sw.bb9_crit_edge133
  ]

if.end.sw.bb9_crit_edge133:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.end.sw.bb9_crit_edge132:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.end.sw.bb9_crit_edge131:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.end.sw.bb9_crit_edge130:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.end.sw.bb4_crit_edge129:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %5 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i = tail call i32 %6(ptr noundef %handle, i32 noundef 20971548) #8
  br i1 %cmp, label %land.lhs.true.i, label %sw.bb.if.else.i_crit_edge

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %7 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %call.i, 851968
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  %and2.i = and i32 %call.i, -851969
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %or.i, %if.then.i ], [ %and2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %data.0.i)
  %cmp.not.i = icmp eq i32 %call.i, %data.0.i
  br i1 %cmp.not.i, label %if.end.i.vi_update_bif_medium_grain_light_sleep.exit_crit_edge, label %if.then3.i

if.end.i.vi_update_bif_medium_grain_light_sleep.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_update_bif_medium_grain_light_sleep.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %9 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %10(ptr noundef %handle, i32 noundef 20971548, i32 noundef %data.0.i) #8
  br label %vi_update_bif_medium_grain_light_sleep.exit

vi_update_bif_medium_grain_light_sleep.exit:      ; preds = %if.then3.i, %if.end.i.vi_update_bif_medium_grain_light_sleep.exit_crit_edge
  %call.i28 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2816, i32 noundef 0) #8
  br i1 %cmp, label %land.lhs.true.i32, label %vi_update_bif_medium_grain_light_sleep.exit.if.else.i36_crit_edge

vi_update_bif_medium_grain_light_sleep.exit.if.else.i36_crit_edge: ; preds = %vi_update_bif_medium_grain_light_sleep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i36

land.lhs.true.i32:                                ; preds = %vi_update_bif_medium_grain_light_sleep.exit
  %cg_flags.i29 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %11 = ptrtoint ptr %cg_flags.i29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cg_flags.i29, align 8
  %and.i30 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool1.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool1.not.i31, label %land.lhs.true.i32.if.else.i36_crit_edge, label %if.then.i34

land.lhs.true.i32.if.else.i36_crit_edge:          ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i36

if.then.i34:                                      ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i33 = and i32 %call.i28, -8388609
  br label %if.end.i39

if.else.i36:                                      ; preds = %land.lhs.true.i32.if.else.i36_crit_edge, %vi_update_bif_medium_grain_light_sleep.exit.if.else.i36_crit_edge
  %or.i35 = or i32 %call.i28, 8388608
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.else.i36, %if.then.i34
  %data.0.i37 = phi i32 [ %and2.i33, %if.then.i34 ], [ %or.i35, %if.else.i36 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i28, i32 %data.0.i37)
  %cmp.not.i38 = icmp eq i32 %call.i28, %data.0.i37
  br i1 %cmp.not.i38, label %if.end.i39.vi_update_hdp_medium_grain_clock_gating.exit_crit_edge, label %if.then3.i40

if.end.i39.vi_update_hdp_medium_grain_clock_gating.exit_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_update_hdp_medium_grain_clock_gating.exit

if.then3.i40:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2816, i32 noundef %data.0.i37, i32 noundef 0) #8
  br label %vi_update_hdp_medium_grain_clock_gating.exit

vi_update_hdp_medium_grain_clock_gating.exit:     ; preds = %if.then3.i40, %if.end.i39.vi_update_hdp_medium_grain_clock_gating.exit_crit_edge
  %call.i41 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3028, i32 noundef 0) #8
  br i1 %cmp, label %land.lhs.true.i45, label %vi_update_hdp_medium_grain_clock_gating.exit.if.else.i49_crit_edge

vi_update_hdp_medium_grain_clock_gating.exit.if.else.i49_crit_edge: ; preds = %vi_update_hdp_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i49

land.lhs.true.i45:                                ; preds = %vi_update_hdp_medium_grain_clock_gating.exit
  %cg_flags.i42 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %13 = ptrtoint ptr %cg_flags.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cg_flags.i42, align 8
  %and.i43 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool1.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool1.not.i44, label %land.lhs.true.i45.if.else.i49_crit_edge, label %if.then.i47

land.lhs.true.i45.if.else.i49_crit_edge:          ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i49

if.then.i47:                                      ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #10
  %or.i46 = or i32 %call.i41, 1
  br label %if.end.i52

if.else.i49:                                      ; preds = %land.lhs.true.i45.if.else.i49_crit_edge, %vi_update_hdp_medium_grain_clock_gating.exit.if.else.i49_crit_edge
  %and2.i48 = and i32 %call.i41, -2
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.else.i49, %if.then.i47
  %data.0.i50 = phi i32 [ %or.i46, %if.then.i47 ], [ %and2.i48, %if.else.i49 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i41, i32 %data.0.i50)
  %cmp.not.i51 = icmp eq i32 %call.i41, %data.0.i50
  br i1 %cmp.not.i51, label %if.end.i52.vi_update_hdp_light_sleep.exit_crit_edge, label %if.then3.i53

if.end.i52.vi_update_hdp_light_sleep.exit_crit_edge: ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_update_hdp_light_sleep.exit

if.then3.i53:                                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3028, i32 noundef %data.0.i50, i32 noundef 0) #8
  br label %vi_update_hdp_light_sleep.exit

vi_update_hdp_light_sleep.exit:                   ; preds = %if.then3.i53, %if.end.i52.vi_update_hdp_light_sleep.exit_crit_edge
  %smc_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %15 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smc_rreg.i, align 4
  %call.i54 = tail call i32 %16(ptr noundef %handle, i32 noundef -1067450356) #8
  br i1 %cmp, label %land.lhs.true.i58, label %vi_update_hdp_light_sleep.exit.if.else.i62_crit_edge

vi_update_hdp_light_sleep.exit.if.else.i62_crit_edge: ; preds = %vi_update_hdp_light_sleep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i62

land.lhs.true.i58:                                ; preds = %vi_update_hdp_light_sleep.exit
  %cg_flags.i55 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %17 = ptrtoint ptr %cg_flags.i55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cg_flags.i55, align 8
  %and.i56 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool1.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool1.not.i57, label %land.lhs.true.i58.if.else.i62_crit_edge, label %if.then.i60

land.lhs.true.i58.if.else.i62_crit_edge:          ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i62

if.then.i60:                                      ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i59 = and i32 %call.i54, 1073741823
  br label %if.end.i65

if.else.i62:                                      ; preds = %land.lhs.true.i58.if.else.i62_crit_edge, %vi_update_hdp_light_sleep.exit.if.else.i62_crit_edge
  %or.i61 = or i32 %call.i54, -1073741824
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.else.i62, %if.then.i60
  %data.0.i63 = phi i32 [ %and2.i59, %if.then.i60 ], [ %or.i61, %if.else.i62 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i54, i32 %data.0.i63)
  %cmp.not.i64 = icmp eq i32 %call.i54, %data.0.i63
  br i1 %cmp.not.i64, label %if.end.i65.cleanup_crit_edge, label %if.then3.i66

if.end.i65.cleanup_crit_edge:                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i66:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %smc_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %19 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smc_wreg.i, align 8
  tail call void %20(ptr noundef %handle, i32 noundef -1067450356, i32 noundef %data.0.i63) #8
  br label %cleanup

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp5 = icmp eq i32 %state, 0
  %pcie_rreg.i67 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %21 = ptrtoint ptr %pcie_rreg.i67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcie_rreg.i67, align 8
  %call.i68 = tail call i32 %22(ptr noundef %handle, i32 noundef 20971548) #8
  br i1 %cmp5, label %land.lhs.true.i72, label %sw.bb4.if.else.i76_crit_edge

sw.bb4.if.else.i76_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i76

land.lhs.true.i72:                                ; preds = %sw.bb4
  %cg_flags.i69 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %23 = ptrtoint ptr %cg_flags.i69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cg_flags.i69, align 8
  %and.i70 = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool1.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool1.not.i71, label %land.lhs.true.i72.if.else.i76_crit_edge, label %if.then.i74

land.lhs.true.i72.if.else.i76_crit_edge:          ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i76

if.then.i74:                                      ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #10
  %or.i73 = or i32 %call.i68, 851968
  br label %if.end.i79

if.else.i76:                                      ; preds = %land.lhs.true.i72.if.else.i76_crit_edge, %sw.bb4.if.else.i76_crit_edge
  %and2.i75 = and i32 %call.i68, -851969
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.else.i76, %if.then.i74
  %data.0.i77 = phi i32 [ %or.i73, %if.then.i74 ], [ %and2.i75, %if.else.i76 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i68, i32 %data.0.i77)
  %cmp.not.i78 = icmp eq i32 %call.i68, %data.0.i77
  br i1 %cmp.not.i78, label %if.end.i79.vi_update_bif_medium_grain_light_sleep.exit82_crit_edge, label %if.then3.i81

if.end.i79.vi_update_bif_medium_grain_light_sleep.exit82_crit_edge: ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_update_bif_medium_grain_light_sleep.exit82

if.then3.i81:                                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg.i80 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %25 = ptrtoint ptr %pcie_wreg.i80 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie_wreg.i80, align 4
  tail call void %26(ptr noundef %handle, i32 noundef 20971548, i32 noundef %data.0.i77) #8
  br label %vi_update_bif_medium_grain_light_sleep.exit82

vi_update_bif_medium_grain_light_sleep.exit82:    ; preds = %if.then3.i81, %if.end.i79.vi_update_bif_medium_grain_light_sleep.exit82_crit_edge
  %call.i83 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2816, i32 noundef 0) #8
  br i1 %cmp5, label %land.lhs.true.i87, label %vi_update_bif_medium_grain_light_sleep.exit82.if.else.i91_crit_edge

vi_update_bif_medium_grain_light_sleep.exit82.if.else.i91_crit_edge: ; preds = %vi_update_bif_medium_grain_light_sleep.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i91

land.lhs.true.i87:                                ; preds = %vi_update_bif_medium_grain_light_sleep.exit82
  %cg_flags.i84 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %27 = ptrtoint ptr %cg_flags.i84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cg_flags.i84, align 8
  %and.i85 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool1.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool1.not.i86, label %land.lhs.true.i87.if.else.i91_crit_edge, label %if.then.i89

land.lhs.true.i87.if.else.i91_crit_edge:          ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i91

if.then.i89:                                      ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i88 = and i32 %call.i83, -8388609
  br label %if.end.i94

if.else.i91:                                      ; preds = %land.lhs.true.i87.if.else.i91_crit_edge, %vi_update_bif_medium_grain_light_sleep.exit82.if.else.i91_crit_edge
  %or.i90 = or i32 %call.i83, 8388608
  br label %if.end.i94

if.end.i94:                                       ; preds = %if.else.i91, %if.then.i89
  %data.0.i92 = phi i32 [ %and2.i88, %if.then.i89 ], [ %or.i90, %if.else.i91 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i83, i32 %data.0.i92)
  %cmp.not.i93 = icmp eq i32 %call.i83, %data.0.i92
  br i1 %cmp.not.i93, label %if.end.i94.vi_update_hdp_medium_grain_clock_gating.exit96_crit_edge, label %if.then3.i95

if.end.i94.vi_update_hdp_medium_grain_clock_gating.exit96_crit_edge: ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_update_hdp_medium_grain_clock_gating.exit96

if.then3.i95:                                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2816, i32 noundef %data.0.i92, i32 noundef 0) #8
  br label %vi_update_hdp_medium_grain_clock_gating.exit96

vi_update_hdp_medium_grain_clock_gating.exit96:   ; preds = %if.then3.i95, %if.end.i94.vi_update_hdp_medium_grain_clock_gating.exit96_crit_edge
  %call.i97 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3028, i32 noundef 0) #8
  br i1 %cmp5, label %land.lhs.true.i101, label %vi_update_hdp_medium_grain_clock_gating.exit96.if.else.i105_crit_edge

vi_update_hdp_medium_grain_clock_gating.exit96.if.else.i105_crit_edge: ; preds = %vi_update_hdp_medium_grain_clock_gating.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i105

land.lhs.true.i101:                               ; preds = %vi_update_hdp_medium_grain_clock_gating.exit96
  %cg_flags.i98 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %29 = ptrtoint ptr %cg_flags.i98 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cg_flags.i98, align 8
  %and.i99 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool1.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool1.not.i100, label %land.lhs.true.i101.if.else.i105_crit_edge, label %if.then.i103

land.lhs.true.i101.if.else.i105_crit_edge:        ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i105

if.then.i103:                                     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #10
  %or.i102 = or i32 %call.i97, 1
  br label %if.end.i108

if.else.i105:                                     ; preds = %land.lhs.true.i101.if.else.i105_crit_edge, %vi_update_hdp_medium_grain_clock_gating.exit96.if.else.i105_crit_edge
  %and2.i104 = and i32 %call.i97, -2
  br label %if.end.i108

if.end.i108:                                      ; preds = %if.else.i105, %if.then.i103
  %data.0.i106 = phi i32 [ %or.i102, %if.then.i103 ], [ %and2.i104, %if.else.i105 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i97, i32 %data.0.i106)
  %cmp.not.i107 = icmp eq i32 %call.i97, %data.0.i106
  br i1 %cmp.not.i107, label %if.end.i108.vi_update_hdp_light_sleep.exit110_crit_edge, label %if.then3.i109

if.end.i108.vi_update_hdp_light_sleep.exit110_crit_edge: ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_update_hdp_light_sleep.exit110

if.then3.i109:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3028, i32 noundef %data.0.i106, i32 noundef 0) #8
  br label %vi_update_hdp_light_sleep.exit110

vi_update_hdp_light_sleep.exit110:                ; preds = %if.then3.i109, %if.end.i108.vi_update_hdp_light_sleep.exit110_crit_edge
  %call.i111 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5498, i32 noundef 0) #8
  br i1 %cmp5, label %land.lhs.true.i115, label %vi_update_hdp_light_sleep.exit110.if.else.i119_crit_edge

vi_update_hdp_light_sleep.exit110.if.else.i119_crit_edge: ; preds = %vi_update_hdp_light_sleep.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i119

land.lhs.true.i115:                               ; preds = %vi_update_hdp_light_sleep.exit110
  %cg_flags.i112 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %31 = ptrtoint ptr %cg_flags.i112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cg_flags.i112, align 8
  %and.i113 = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool1.not.i114 = icmp eq i32 %and.i113, 0
  br i1 %tobool1.not.i114, label %land.lhs.true.i115.if.else.i119_crit_edge, label %if.then.i117

land.lhs.true.i115.if.else.i119_crit_edge:        ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i119

if.then.i117:                                     ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #10
  %or.i116 = or i32 %call.i111, 1
  br label %if.end.i122

if.else.i119:                                     ; preds = %land.lhs.true.i115.if.else.i119_crit_edge, %vi_update_hdp_light_sleep.exit110.if.else.i119_crit_edge
  %and2.i118 = and i32 %call.i111, -2
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.else.i119, %if.then.i117
  %data.0.i120 = phi i32 [ %or.i116, %if.then.i117 ], [ %and2.i118, %if.else.i119 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i111, i32 %data.0.i120)
  %cmp.not.i121 = icmp eq i32 %call.i111, %data.0.i120
  br i1 %cmp.not.i121, label %if.end.i122.cleanup_crit_edge, label %if.then3.i123

if.end.i122.cleanup_crit_edge:                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i123:                                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5498, i32 noundef %data.0.i120, i32 noundef 0) #8
  br label %cleanup

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge130, %if.end.sw.bb9_crit_edge131, %if.end.sw.bb9_crit_edge132, %if.end.sw.bb9_crit_edge133
  %cg_flags.i124 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %33 = ptrtoint ptr %cg_flags.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cg_flags.i124, align 8
  %and.i125 = and i32 %34, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.not.i = icmp eq i32 %and.i125, 0
  br i1 %tobool.not.i, label %sw.bb9.if.end16.i_crit_edge, label %if.then.i128

sw.bb9.if.end16.i_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then.i128:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i126 = and i32 %34, 256
  %35 = lshr exact i32 %and2.i126, 7
  %36 = lshr exact i32 %and2.i126, 3
  %and6.i = and i32 %34, 512
  %37 = lshr exact i32 %and6.i, 9
  %38 = or i32 %37, %35
  %39 = lshr exact i32 %and6.i, 5
  %40 = or i32 %39, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp.i = icmp eq i32 %state, 1
  %pp_state.2.i = select i1 %cmp.i, i32 0, i32 %38
  %or13.i = or i32 %40, %pp_state.2.i
  %or15.i = or i32 %or13.i, 536871424
  %call.i127 = tail call i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %or15.i) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then.i128, %sw.bb9.if.end16.i_crit_edge
  %pp_state.3.i = phi i32 [ %pp_state.2.i, %if.then.i128 ], [ 0, %sw.bb9.if.end16.i_crit_edge ]
  %pp_support_state.2.i = phi i32 [ %40, %if.then.i128 ], [ 0, %sw.bb9.if.end16.i_crit_edge ]
  %41 = ptrtoint ptr %cg_flags.i124 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cg_flags.i124, align 8
  %and18.i = and i32 %42, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end41.i_crit_edge, label %if.then20.i

if.end16.i.if.end41.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %and22.i = and i32 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %spec.select2.i = select i1 %tobool23.not.i, i32 %pp_state.3.i, i32 2
  %spec.select3.i = select i1 %tobool23.not.i, i32 %pp_support_state.2.i, i32 32
  %and27.i = and i32 %42, 2048
  %43 = lshr exact i32 %and27.i, 11
  %44 = or i32 %spec.select2.i, %43
  %45 = lshr exact i32 %and27.i, 7
  %46 = or i32 %spec.select3.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp33.i = icmp eq i32 %state, 1
  %pp_state.6.i = select i1 %cmp33.i, i32 0, i32 %44
  %or37.i = or i32 %46, %pp_state.6.i
  %or39.i = or i32 %or37.i, 536879104
  %call40.i = tail call i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %or39.i) #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end41.i_crit_edge
  %pp_state.7.i = phi i32 [ %pp_state.6.i, %if.then20.i ], [ %pp_state.3.i, %if.end16.i.if.end41.i_crit_edge ]
  %pp_support_state.5.i = phi i32 [ %46, %if.then20.i ], [ %pp_support_state.2.i, %if.end16.i.if.end41.i_crit_edge ]
  %47 = ptrtoint ptr %cg_flags.i124 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cg_flags.i124, align 8
  %and43.i = and i32 %48, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end41.i.if.end66.i_crit_edge, label %if.then45.i

if.end41.i.if.end66.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %and47.i = and i32 %48, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  %spec.select4.i = select i1 %tobool48.not.i, i32 %pp_state.7.i, i32 2
  %spec.select5.i = select i1 %tobool48.not.i, i32 %pp_support_state.5.i, i32 32
  %and52.i = and i32 %48, 65536
  %49 = lshr exact i32 %and52.i, 16
  %50 = or i32 %spec.select4.i, %49
  %51 = lshr exact i32 %and52.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp58.i = icmp eq i32 %state, 1
  %pp_state.10.i = select i1 %cmp58.i, i32 0, i32 %50
  %52 = or i32 %51, %spec.select5.i
  %or62.i = or i32 %52, %pp_state.10.i
  %or64.i = or i32 %or62.i, 536875008
  %call65.i = tail call i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %or64.i) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then45.i, %if.end41.i.if.end66.i_crit_edge
  %53 = ptrtoint ptr %cg_flags.i124 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cg_flags.i124, align 8
  %and68.i = and i32 %54, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end66.i.if.end77.i_crit_edge, label %if.then70.i

if.end66.i.if.end77.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.then70.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp71.i = icmp eq i32 %state, 1
  %..i = select i1 %cmp71.i, i32 536871200, i32 536871202
  %call76.i = tail call i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %..i) #8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then70.i, %if.end66.i.if.end77.i_crit_edge
  %55 = ptrtoint ptr %cg_flags.i124 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cg_flags.i124, align 8
  %and79.i = and i32 %56, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end89.i_crit_edge, label %if.then81.i

if.end77.i.if.end89.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp82.i = icmp eq i32 %state, 1
  %.6.i = select i1 %cmp82.i, i32 536871184, i32 536871185
  %call88.i = tail call i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %.6.i) #8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then81.i, %if.end77.i.if.end89.i_crit_edge
  %57 = ptrtoint ptr %cg_flags.i124 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cg_flags.i124, align 8
  %and91.i = and i32 %58, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end89.i.if.end101.i_crit_edge, label %if.then93.i

if.end89.i.if.end101.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

if.then93.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp94.i = icmp eq i32 %state, 1
  %.7.i = select i1 %cmp94.i, i32 536872992, i32 536872994
  %call100.i = tail call i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %.7.i) #8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then93.i, %if.end89.i.if.end101.i_crit_edge
  %59 = ptrtoint ptr %cg_flags.i124 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cg_flags.i124, align 8
  %and103.i = and i32 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.end101.i.cleanup_crit_edge, label %if.then105.i

if.end101.i.cleanup_crit_edge:                    ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then105.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp106.i = icmp eq i32 %state, 1
  %.8.i = select i1 %cmp106.i, i32 536871952, i32 536871953
  %call112.i = tail call i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %.8.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then105.i, %if.end101.i.cleanup_crit_edge, %if.then3.i123, %if.end.i122.cleanup_crit_edge, %if.then3.i66, %if.end.i65.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vi_common_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vi_common_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %3 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %4(ptr noundef %handle, i32 noundef 20971548) #8
  %and1 = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 4096
  store i32 %or, ptr %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3028, i32 noundef 0) #8
  %and6 = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or9 = or i32 %8, 32768
  store i32 %or9, ptr %flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2816, i32 noundef 0) #8
  %and12 = and i32 %call11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or15 = or i32 %10, 65536
  store i32 %or15, ptr %flags, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %11 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smc_rreg, align 4
  %call17 = tail call i32 %12(ptr noundef %handle, i32 noundef -1067450356) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %tobool19.not = icmp sgt i32 %call17, -1
  br i1 %tobool19.not, label %if.then20, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or21 = or i32 %14, 131072
  store i32 %or21, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cz_smc_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 384, i32 noundef %reg, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 385, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cz_smc_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 384, i32 noundef %reg, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 385, i32 noundef %v, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_smc_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 428, i32 noundef %reg, i32 noundef 2) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 429, i32 noundef 2) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vi_smc_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 428, i32 noundef %reg, i32 noundef 2) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 429, i32 noundef %v, i32 noundef 2) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_pcie_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 14, i32 noundef %reg, i32 noundef 2) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 14, i32 noundef 2) #8
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15, i32 noundef 2) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vi_pcie_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 14, i32 noundef %reg, i32 noundef 2) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 14, i32 noundef 2) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15, i32 noundef %v, i32 noundef 2) #8
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15, i32 noundef 2) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_uvd_ctx_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
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
define internal void @vi_uvd_ctx_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_didt_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12928, i32 noundef %reg, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12929, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call2) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vi_didt_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %didt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 48
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %didt_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12928, i32 noundef %reg, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12929, i32 noundef %v, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %didt_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_gc_cac_rreg(ptr noundef %adev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_cac_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 51
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gc_cac_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 4762, i32 noundef %reg, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 4763, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gc_cac_idx_lock, i32 noundef %call2) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vi_gc_cac_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_cac_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 51
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gc_cac_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 4762, i32 noundef %reg, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 4763, i32 noundef %v, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gc_cac_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_init_setting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgpu_vi_mailbox_set_irq_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vi_read_disabled_bios(ptr noundef %adev) #0 align 64 {
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
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg, align 4
  %call4 = tail call i32 %3(ptr noundef %adev, i32 noundef -1067450368) #8
  %and = and i32 %call, -3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5384, i32 noundef %and, i32 noundef 0) #8
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
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
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %6 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smc_wreg, align 8
  %or = or i32 %call4, 2
  tail call void %7(ptr noundef %adev, i32 noundef -1067450368, i32 noundef %or) #8
  %call13 = tail call zeroext i1 @amdgpu_read_bios(ptr noundef %adev) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 5384, i32 noundef %call, i32 noundef 0) #8
  %8 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
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
  %10 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smc_wreg, align 8
  tail call void %11(ptr noundef %adev, i32 noundef -1067450368, i32 noundef %call4) #8
  ret i1 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vi_read_bios_from_rom(ptr noundef %adev, ptr noundef writeonly %bios, i32 noundef %length_bytes) #0 align 64 {
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
  %flags4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags4, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add = add i32 %length_bytes, 3
  %smc_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 35
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 428, i32 noundef -1067450352, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 429, i32 noundef 0, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 428, i32 noundef -1067450348, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp1331.not = icmp ult i32 %add, 4
  br i1 %cmp1331.not, label %if.end6.for.end_crit_edge, label %for.body.preheader

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end6
  %div30 = lshr i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call15 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 429, i32 noundef 0) #8
  %arrayidx = getelementptr i32, ptr %bios, i32 %i.032
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call15, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %div30
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %for.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_read_register(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef %reg_offset, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr [76 x %struct.amdgpu_allowed_register_entry], ptr @vi_allowed_read_registers, i32 0, i32 %i.012
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %reg_offset)
  %cmp3.not = icmp eq i32 %2, %reg_offset
  br i1 %cmp3.not, label %if.end, label %for.inc.critedge

if.end:                                           ; preds = %for.body
  %grbm_indexed = getelementptr [76 x %struct.amdgpu_allowed_register_entry], ptr @vi_allowed_read_registers, i32 0, i32 %i.012, i32 1
  %3 = ptrtoint ptr %grbm_indexed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %grbm_indexed, align 4, !range !67
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
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %reg_offset, label %sw.epilog.i [
    i32 9789, label %sw.bb.i
    i32 9951, label %sw.bb7.i
    i32 41172, label %sw.bb13.i
    i32 41173, label %sw.bb19.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  br label %vi_get_register_value.exit

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %user_rb_backend_disable.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 1
  %8 = ptrtoint ptr %user_rb_backend_disable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %user_rb_backend_disable.i, align 4
  br label %vi_get_register_value.exit

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %raster_config.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 2
  %10 = ptrtoint ptr %raster_config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raster_config.i, align 4
  br label %vi_get_register_value.exit

sw.bb19.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %raster_config_1.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 %spec.select.i, i32 %cond5.i, i32 3
  %12 = ptrtoint ptr %raster_config_1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raster_config_1.i, align 4
  br label %vi_get_register_value.exit

sw.epilog.i:                                      ; preds = %if.then.i
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #8
  %14 = and i32 %sh_num, %se_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %if.end.thread.i, label %if.then32.i

if.end.thread.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call93.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #8
  br label %if.end36.i

if.then32.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 49
  %16 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs.i, align 4
  %select_se_sh.i = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %select_se_sh.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %select_se_sh.i, align 4
  tail call void %19(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef -1) #8
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #8
  %20 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i, align 4
  %select_se_sh35.i = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %select_se_sh35.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %select_se_sh35.i, align 4
  tail call void %23(ptr noundef %adev, i32 noundef -1, i32 noundef -1, i32 noundef -1) #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end.thread.i
  %call94.i = phi i32 [ %call93.i, %if.end.thread.i ], [ %call.i, %if.then32.i ]
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #8
  br label %vi_get_register_value.exit

if.else.i:                                        ; preds = %if.end
  %24 = zext i32 %reg_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.20)
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge62:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge61:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge60:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge59:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge58:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge57:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge56:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge55:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge54:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge53:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge52:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge51:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge50:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge49:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb50.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb50.i

if.else.i.sw.bb46.i_crit_edge48:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge47:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge46:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge45:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge44:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge43:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge42:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge41:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge40:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge39:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge38:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge37:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge36:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge35:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge34:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge33:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge32:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge31:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge30:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge29:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge28:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge27:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge26:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge25:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge24:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge23:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge22:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge21:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge20:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge19:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge18:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

if.else.i.sw.bb46.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i

sw.bb40.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %25 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gb_addr_config.i, align 4
  br label %vi_get_register_value.exit

sw.bb43.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mc_arb_ramcfg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 20
  %27 = ptrtoint ptr %mc_arb_ramcfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mc_arb_ramcfg.i, align 8
  br label %vi_get_register_value.exit

sw.bb46.i:                                        ; preds = %if.else.i.sw.bb46.i_crit_edge, %if.else.i.sw.bb46.i_crit_edge18, %if.else.i.sw.bb46.i_crit_edge19, %if.else.i.sw.bb46.i_crit_edge20, %if.else.i.sw.bb46.i_crit_edge21, %if.else.i.sw.bb46.i_crit_edge22, %if.else.i.sw.bb46.i_crit_edge23, %if.else.i.sw.bb46.i_crit_edge24, %if.else.i.sw.bb46.i_crit_edge25, %if.else.i.sw.bb46.i_crit_edge26, %if.else.i.sw.bb46.i_crit_edge27, %if.else.i.sw.bb46.i_crit_edge28, %if.else.i.sw.bb46.i_crit_edge29, %if.else.i.sw.bb46.i_crit_edge30, %if.else.i.sw.bb46.i_crit_edge31, %if.else.i.sw.bb46.i_crit_edge32, %if.else.i.sw.bb46.i_crit_edge33, %if.else.i.sw.bb46.i_crit_edge34, %if.else.i.sw.bb46.i_crit_edge35, %if.else.i.sw.bb46.i_crit_edge36, %if.else.i.sw.bb46.i_crit_edge37, %if.else.i.sw.bb46.i_crit_edge38, %if.else.i.sw.bb46.i_crit_edge39, %if.else.i.sw.bb46.i_crit_edge40, %if.else.i.sw.bb46.i_crit_edge41, %if.else.i.sw.bb46.i_crit_edge42, %if.else.i.sw.bb46.i_crit_edge43, %if.else.i.sw.bb46.i_crit_edge44, %if.else.i.sw.bb46.i_crit_edge45, %if.else.i.sw.bb46.i_crit_edge46, %if.else.i.sw.bb46.i_crit_edge47, %if.else.i.sw.bb46.i_crit_edge48
  %sub.i = add nsw i32 %reg_offset, -9796
  %arrayidx49.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 27, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx49.i, align 4
  br label %vi_get_register_value.exit

sw.bb50.i:                                        ; preds = %if.else.i.sw.bb50.i_crit_edge, %if.else.i.sw.bb50.i_crit_edge49, %if.else.i.sw.bb50.i_crit_edge50, %if.else.i.sw.bb50.i_crit_edge51, %if.else.i.sw.bb50.i_crit_edge52, %if.else.i.sw.bb50.i_crit_edge53, %if.else.i.sw.bb50.i_crit_edge54, %if.else.i.sw.bb50.i_crit_edge55, %if.else.i.sw.bb50.i_crit_edge56, %if.else.i.sw.bb50.i_crit_edge57, %if.else.i.sw.bb50.i_crit_edge58, %if.else.i.sw.bb50.i_crit_edge59, %if.else.i.sw.bb50.i_crit_edge60, %if.else.i.sw.bb50.i_crit_edge61, %if.else.i.sw.bb50.i_crit_edge62, %if.else.i.sw.bb50.i_crit_edge63
  %sub51.i = add nsw i32 %reg_offset, -9828
  %arrayidx54.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 28, i32 %sub51.i
  %31 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx54.i, align 4
  br label %vi_get_register_value.exit

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call55.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg_offset, i32 noundef 0) #8
  br label %vi_get_register_value.exit

vi_get_register_value.exit:                       ; preds = %sw.default.i, %sw.bb50.i, %sw.bb46.i, %sw.bb43.i, %sw.bb40.i, %if.end36.i, %sw.bb19.i, %sw.bb13.i, %sw.bb7.i, %sw.bb.i
  %retval.2.i = phi i32 [ %call94.i, %if.end36.i ], [ %13, %sw.bb19.i ], [ %11, %sw.bb13.i ], [ %9, %sw.bb7.i ], [ %7, %sw.bb.i ], [ %call55.i, %sw.default.i ], [ %32, %sw.bb50.i ], [ %30, %sw.bb46.i ], [ %28, %sw.bb43.i ], [ %26, %sw.bb40.i ]
  %33 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.2.i, ptr %value, align 4
  br label %cleanup5

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 76
  br i1 %exitcond.not, label %for.inc.critedge.cleanup5_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.critedge.cleanup5_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup5

cleanup5:                                         ; preds = %for.inc.critedge.cleanup5_crit_edge, %vi_get_register_value.exit
  %retval.2 = phi i32 [ 0, %vi_get_register_value.exit ], [ -22, %for.inc.critedge.cleanup5_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vi_vga_set_state(ptr nocapture noundef %adev, i1 noundef zeroext %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_asic_reset(ptr noundef %adev) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %2 = load i32, ptr @amdgpu_reset_method, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %2, label %do.end.i [
    i32 -1, label %if.end.if.end4.i_crit_edge
    i32 4, label %if.end.do.end_crit_edge
    i32 0, label %if.end.do.end5_crit_edge
  ]

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %2) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.if.end4.i_crit_edge
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %7, label %if.end4.i.do.end5_crit_edge [
    i32 12, label %if.end4.i.sw.epilog.i_crit_edge
    i32 11, label %if.end4.i.sw.epilog.i_crit_edge20
    i32 15, label %if.end4.i.sw.epilog.i_crit_edge21
    i32 16, label %if.end4.i.sw.epilog.i_crit_edge22
    i32 17, label %if.end4.i.sw.epilog.i_crit_edge23
    i32 10, label %if.end4.i.sw.epilog.i_crit_edge24
  ]

if.end4.i.sw.epilog.i_crit_edge24:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge23:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge22:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge21:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge20:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.i.do.end5_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

sw.epilog.i:                                      ; preds = %if.end4.i.sw.epilog.i_crit_edge, %if.end4.i.sw.epilog.i_crit_edge20, %if.end4.i.sw.epilog.i_crit_edge21, %if.end4.i.sw.epilog.i_crit_edge22, %if.end4.i.sw.epilog.i_crit_edge23, %if.end4.i.sw.epilog.i_crit_edge24
  %call.i = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #8
  br i1 %call.i, label %sw.epilog.i.do.end_crit_edge, label %sw.epilog.i.do.end5_crit_edge

sw.epilog.i.do.end5_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %sw.epilog.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.1) #11
  %call2 = tail call i32 @amdgpu_dpm_baco_reset(ptr noundef %adev) #8
  br label %cleanup

do.end5:                                          ; preds = %sw.epilog.i.do.end5_crit_edge, %if.end4.i.do.end5_crit_edge, %if.end.do.end5_crit_edge
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.7) #11
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext true) #8
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_clear_master(ptr noundef %14) #8
  tail call void @amdgpu_device_pci_config_reset(ptr noundef %adev) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #8
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %16 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp11.not.i = icmp eq i32 %17, 0
  br i1 %cmp11.not.i, label %do.end5.vi_asic_pci_config_reset.exit_crit_edge, label %do.end5.for.body.i_crit_edge

do.end5.for.body.i_crit_edge:                     ; preds = %do.end5
  br label %for.body.i

do.end5.vi_asic_pci_config_reset.exit_crit_edge:  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_asic_pci_config_reset.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end5.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %do.end5.for.body.i_crit_edge ]
  %call.i14 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5386, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i14)
  %cmp1.not.i = icmp eq i32 %call.i14, -1
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
  br label %vi_asic_pci_config_reset.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #8
  %inc.i = add nuw i32 %i.012.i, 1
  %22 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.vi_asic_pci_config_reset.exit_crit_edge

if.end.i.vi_asic_pci_config_reset.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vi_asic_pci_config_reset.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vi_asic_pci_config_reset.exit:                    ; preds = %if.end.i.vi_asic_pci_config_reset.exit_crit_edge, %if.then.i, %do.end5.vi_asic_pci_config_reset.exit_crit_edge
  %r.0.i = phi i32 [ 0, %if.then.i ], [ -22, %do.end5.vi_asic_pci_config_reset.exit_crit_edge ], [ -22, %if.end.i.vi_asic_pci_config_reset.exit_crit_edge ]
  tail call void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %vi_asic_pci_config_reset.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ %r.0.i, %vi_asic_pci_config_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_asic_reset_method(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_reset_method to i32))
  %0 = load i32, ptr @amdgpu_reset_method, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %0, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 4, label %entry.cleanup_crit_edge9
    i32 -1, label %entry.if.end4_crit_edge
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %0) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %if.end4.cleanup_crit_edge [
    i32 12, label %if.end4.sw.epilog_crit_edge
    i32 11, label %if.end4.sw.epilog_crit_edge10
    i32 15, label %if.end4.sw.epilog_crit_edge11
    i32 16, label %if.end4.sw.epilog_crit_edge12
    i32 17, label %if.end4.sw.epilog_crit_edge13
    i32 10, label %if.end4.sw.epilog_crit_edge14
  ]

if.end4.sw.epilog_crit_edge14:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.sw.epilog_crit_edge13:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.sw.epilog_crit_edge12:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.sw.epilog_crit_edge11:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.sw.epilog_crit_edge10:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end4.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge10, %if.end4.sw.epilog_crit_edge11, %if.end4.sw.epilog_crit_edge12, %if.end4.sw.epilog_crit_edge13, %if.end4.sw.epilog_crit_edge14
  %call = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #8
  %spec.select = select i1 %call, i32 4, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge9
  %retval.0 = phi i32 [ %0, %entry.cleanup_crit_edge ], [ %0, %entry.cleanup_crit_edge9 ], [ 0, %if.end4.cleanup_crit_edge ], [ %spec.select, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_get_xclk(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %4 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef -1068498524) #8
  %6 = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smc_rreg, align 4
  %call6 = tail call i32 %8(ptr noundef %adev, i32 noundef -1068498528) #8
  %9 = and i32 %call6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %div21 = lshr i32 %1, 2
  %spec.select = select i1 %tobool9.not, i32 %1, i32 %div21
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %entry.cleanup_crit_edge ], [ 1000, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_set_uvd_clocks(ptr noundef %adev, i32 noundef %vclk, i32 noundef %dclk) #0 align 64 {
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
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @vi_set_uvd_clock(ptr noundef %adev, i32 noundef %vclk, i32 noundef -668860144, i32 noundef -668860116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call fastcc i32 @vi_set_uvd_clock(ptr noundef %adev, i32 noundef %dclk, i32 noundef -668860176, i32 noundef -668860148)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.else:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @vi_set_uvd_clock(ptr noundef %adev, i32 noundef %vclk, i32 noundef -1068498780, i32 noundef -1068498776)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %call11 = tail call fastcc i32 @vi_set_uvd_clock(ptr noundef %adev, i32 noundef %dclk, i32 noundef -1068498788, i32 noundef -1068498784)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %if.end.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call, %if.then.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.else.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_set_vce_clocks(ptr noundef %adev, i32 noundef %evclk, i32 noundef %ecclk) #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #8
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -1068498772, i32 -668860112
  %.64 = select i1 %tobool.not, i32 -1068498768, i32 -668860084
  %.65 = select i1 %tobool.not, i32 1, i32 65536
  %.66 = select i1 %tobool.not, i32 -384, i32 -128
  %call = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 0, i32 noundef %ecclk, i1 noundef zeroext false, ptr noundef nonnull %dividers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %while.body.preheader.for.body_crit_edge, %for.cond.preheader
  %i.071 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %while.body.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smc_rreg, align 4
  %call4 = call i32 %4(ptr noundef %adev, i32 noundef %.64) #8
  %and5 = and i32 %call4, %.65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %while.body.preheader, label %if.end12

while.body.preheader:                             ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #8
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %while.body.preheader.cleanup_crit_edge, label %while.body.preheader.for.body_crit_edge

while.body.preheader.for.body_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %15 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smc_rreg, align 4
  %call14 = call i32 %16(ptr noundef %adev, i32 noundef %.) #8
  %and15 = and i32 %call14, %.66
  %post_divider = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %17 = ptrtoint ptr %post_divider to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %post_divider, align 4
  %or = or i32 %and15, %18
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %19 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smc_wreg, align 8
  call void %20(ptr noundef %adev, i32 noundef %., i32 noundef %or) #8
  br label %for.body18

for.body18:                                       ; preds = %while.body29.preheader.for.body18_crit_edge, %if.end12
  %i.173 = phi i32 [ 0, %if.end12 ], [ %inc32, %while.body29.preheader.for.body18_crit_edge ]
  %21 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smc_rreg, align 4
  %call20 = call i32 %22(ptr noundef %adev, i32 noundef %.64) #8
  %and21 = and i32 %call20, %.65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %while.body29.preheader, label %for.end33

while.body29.preheader:                           ; preds = %for.body18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #8
  %inc32 = add nuw nsw i32 %i.173, 1
  %exitcond74.not = icmp eq i32 %inc32, 100
  br i1 %exitcond74.not, label %while.body29.preheader.for.end33.thread_crit_edge, label %while.body29.preheader.for.body18_crit_edge

while.body29.preheader.for.body18_crit_edge:      ; preds = %while.body29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

while.body29.preheader.for.end33.thread_crit_edge: ; preds = %while.body29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33.thread

for.end33:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.173)
  %cmp34 = icmp eq i32 %i.173, 100
  br i1 %cmp34, label %for.end33.for.end33.thread_crit_edge, label %for.end33.cleanup_crit_edge

for.end33.cleanup_crit_edge:                      ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end33.for.end33.thread_crit_edge:             ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33.thread

for.end33.thread:                                 ; preds = %for.end33.for.end33.thread_crit_edge, %while.body29.preheader.for.end33.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end33.thread, %for.end33.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %for.end33.thread ], [ 0, %for.end33.cleanup_crit_edge ], [ -110, %while.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vi_get_config_memsize(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 5386, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vi_flush_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
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
define internal void @vi_invalidate_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vi_need_full_reset(ptr nocapture noundef readonly %adev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %switch.tableidx = add i32 %1, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ugt i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i4
  %switch.downshift = lshr i4 3, %switch.cast
  %3 = and i4 %switch.downshift, 1
  %4 = sext i4 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.masked = icmp ne i4 %3, 0
  %retval.0 = select i1 %2, i1 true, i1 %switch.masked
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vi_get_pcie_usage(ptr noundef %adev, ptr nocapture noundef writeonly %count0, ptr nocapture noundef writeonly %count1) #0 align 64 {
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
  tail call void %3(ptr noundef %adev, i32 noundef 20971649, i32 noundef 26664) #8
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 20971648, i32 noundef 5) #8
  tail call void @msleep(i32 noundef 1000) #8
  %6 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_wreg, align 4
  tail call void %7(ptr noundef %adev, i32 noundef 20971648, i32 noundef 2) #8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %8 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %9(ptr noundef %adev, i32 noundef 20971649) #8
  %and6 = lshr i32 %call, 16
  %10 = and i32 %and6, 255
  %11 = zext i32 %10 to i64
  %shr8 = lshr i32 %call, 24
  %conv9 = zext i32 %shr8 to i64
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %call11 = tail call i32 %13(ptr noundef %adev, i32 noundef 20971650) #8
  %conv12 = zext i32 %call11 to i64
  %shl = shl nuw nsw i64 %11, 32
  %or13 = or i64 %shl, %conv12
  %14 = ptrtoint ptr %count0 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or13, ptr %count0, align 8
  %15 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_rreg, align 8
  %call15 = tail call i32 %16(ptr noundef %adev, i32 noundef 20971651) #8
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
define internal zeroext i1 @vi_need_reset_on_init(ptr noundef %adev) #0 align 64 {
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
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef -2147483644) #8
  %4 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smc_rreg, align 4
  %call2 = tail call i32 %5(ptr noundef %adev, i32 noundef -2147482768) #8
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
define internal i64 @vi_get_pcie_replay_count(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 20971534) #8
  %conv = zext i32 %call to i64
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call2 = tail call i32 %3(ptr noundef %adev, i32 noundef 20971535) #8
  %conv3 = zext i32 %call2 to i64
  %add = add nuw nsw i64 %conv3, %conv
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vi_asic_supports_baco(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %entry.return_crit_edge [
    i32 12, label %entry.sw.bb_crit_edge
    i32 11, label %entry.sw.bb_crit_edge2
    i32 15, label %entry.sw.bb_crit_edge3
    i32 16, label %entry.sw.bb_crit_edge4
    i32 17, label %entry.sw.bb_crit_edge5
    i32 10, label %entry.sw.bb_crit_edge6
  ]

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2, %entry.sw.bb_crit_edge3, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6
  %call = tail call zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef %adev) #8
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %sw.bb ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vi_pre_asic_init(ptr nocapture noundef %adev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vi_query_video_codecs(ptr nocapture noundef readonly %adev, i1 noundef zeroext %encode, ptr nocapture noundef writeonly %codecs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.return_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb1
    i32 15, label %entry.sw.bb6_crit_edge
    i32 16, label %entry.sw.bb6_crit_edge29
    i32 17, label %entry.sw.bb6_crit_edge30
    i32 18, label %entry.sw.bb6_crit_edge31
    i32 12, label %entry.sw.bb11_crit_edge
    i32 13, label %entry.sw.bb11_crit_edge32
    i32 14, label %entry.sw.bb11_crit_edge33
  ]

entry.sw.bb11_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb6_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %topaz_video_codecs_encode.topaz_video_codecs_decode = select i1 %encode, ptr @topaz_video_codecs_encode, ptr @topaz_video_codecs_decode
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tonga_video_codecs_encode.tonga_video_codecs_decode = select i1 %encode, ptr @tonga_video_codecs_encode, ptr @tonga_video_codecs_decode
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge29, %entry.sw.bb6_crit_edge30, %entry.sw.bb6_crit_edge31
  %polaris_video_codecs_encode.cz_video_codecs_decode = select i1 %encode, ptr @polaris_video_codecs_encode, ptr @cz_video_codecs_decode
  br label %return.sink.split

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge32, %entry.sw.bb11_crit_edge33
  %tonga_video_codecs_encode.cz_video_codecs_decode = select i1 %encode, ptr @tonga_video_codecs_encode, ptr @cz_video_codecs_decode
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb11, %sw.bb6, %sw.bb1, %sw.bb
  %tonga_video_codecs_encode.cz_video_codecs_decode.sink = phi ptr [ %tonga_video_codecs_encode.cz_video_codecs_decode, %sw.bb11 ], [ %polaris_video_codecs_encode.cz_video_codecs_decode, %sw.bb6 ], [ %tonga_video_codecs_encode.tonga_video_codecs_decode, %sw.bb1 ], [ %topaz_video_codecs_encode.topaz_video_codecs_decode, %sw.bb ]
  %3 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tonga_video_codecs_encode.cz_video_codecs_decode.sink, ptr %codecs, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_read_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

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
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_dpm_is_baco_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vi_set_uvd_clock(ptr noundef %adev, i32 noundef %clock, i32 noundef %cntl_reg, i32 noundef %status_reg) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #8
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 0, i32 noundef %clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %1 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smc_rreg, align 4
  %call1 = call i32 %2(ptr noundef %adev, i32 noundef %cntl_reg) #8
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %tmp.0.v = select i1 %tobool2.not, i32 -384, i32 -128
  %tmp.0 = and i32 %tmp.0.v, %call1
  %post_divider = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %5 = ptrtoint ptr %post_divider to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %post_divider, align 4
  %or = or i32 %tmp.0, %6
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %7 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smc_wreg, align 8
  call void %8(ptr noundef %adev, i32 noundef %cntl_reg, i32 noundef %or) #8
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %if.end
  %i.048 = phi i32 [ 0, %if.end ], [ %inc, %if.end22.for.body_crit_edge ]
  %9 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smc_rreg, align 4
  %call8 = call i32 %10(ptr noundef %adev, i32 noundef %status_reg) #8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and10 = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else17, label %if.then12

if.then12:                                        ; preds = %for.body
  %and13 = and i32 %call8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then12.if.end22_crit_edge, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else17:                                        ; preds = %for.body
  %and18 = and i32 %call8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else17.if.end22_crit_edge, label %if.else17.for.end_crit_edge

if.else17.for.end_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.else17.if.end22_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.else17.if.end22_crit_edge, %if.then12.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #8
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end22.for.end.thread_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end22.for.end.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end:                                          ; preds = %if.else17.for.end_crit_edge, %if.then12.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.048)
  %cmp24 = icmp eq i32 %i.048, 100
  br i1 %cmp24, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end22.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %for.end.thread ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgpu_vi_mailbox_get_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgpu_vi_mailbox_add_irq_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgpu_vi_init_golden_registers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgpu_vi_mailbox_put_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_clockgating_by_smu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @vi_common_ip_block, !1, !"vi_common_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 2083, i32 45}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 2066, i32 10}
!4 = !{ptr @vi_common_ip_funcs, !5, !"vi_common_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 2065, i32 34}
!6 = !{ptr @vi_asic_funcs, !7, !"vi_asic_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 1449, i32 39}
!8 = !{ptr @vi_allowed_read_registers, !9, !"vi_allowed_read_registers", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 664, i32 51}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 964, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vi_asic_reset._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @vi_asic_reset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 967, i32 3}
!20 = !{ptr @vi_asic_reset._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @vi_asic_reset._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 923, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vi_asic_reset_method._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @vi_asic_reset_method._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @topaz_video_codecs_encode, !29, !"topaz_video_codecs_encode", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 109, i32 41}
!30 = !{ptr @topaz_video_codecs_decode, !31, !"topaz_video_codecs_decode", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 159, i32 41}
!32 = !{ptr @tonga_video_codecs_encode, !33, !"tonga_video_codecs_encode", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 127, i32 41}
!34 = !{ptr @tonga_video_codecs_encode_array, !35, !"tonga_video_codecs_encode_array", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 116, i32 45}
!36 = !{ptr @tonga_video_codecs_decode, !37, !"tonga_video_codecs_decode", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 198, i32 41}
!38 = !{ptr @tonga_video_codecs_decode_array, !39, !"tonga_video_codecs_decode_array", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 166, i32 45}
!40 = !{ptr @polaris_video_codecs_encode, !41, !"polaris_video_codecs_encode", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 152, i32 41}
!42 = !{ptr @polaris_video_codecs_encode_array, !43, !"polaris_video_codecs_encode_array", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 134, i32 45}
!44 = !{ptr @cz_video_codecs_decode, !45, !"cz_video_codecs_decode", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 251, i32 41}
!46 = !{ptr @cz_video_codecs_decode_array, !47, !"cz_video_codecs_decode_array", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 205, i32 45}
!48 = !{ptr @iceland_mgcg_cgcg_init, !49, !"iceland_mgcg_cgcg_init", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 460, i32 18}
!50 = !{ptr @fiji_mgcg_cgcg_init, !51, !"fiji_mgcg_cgcg_init", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 449, i32 18}
!52 = !{ptr @tonga_mgcg_cgcg_init, !53, !"tonga_mgcg_cgcg_init", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 438, i32 18}
!54 = !{ptr @cz_mgcg_cgcg_init, !55, !"cz_mgcg_cgcg_init", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 469, i32 18}
!56 = !{ptr @stoney_mgcg_cgcg_init, !57, !"stoney_mgcg_cgcg_init", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/vi.c", i32 478, i32 18}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{!"auto-init"}
