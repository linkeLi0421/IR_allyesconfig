; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomfwctrl.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atom_voltage_object_header_v4 = type { i8, i8, i16 }
%struct.atom_gpio_voltage_object_v4 = type <{ %struct.atom_voltage_object_header_v4, i8, i8, i8, i8, i32, [1 x %struct.atom_voltage_gpio_map_lut] }>
%struct.atom_voltage_gpio_map_lut = type <{ i32, i16 }>
%struct.pp_atomfwctrl_voltage_table = type { i32, i32, i32, i8, i8, i8, i8, i8, [32 x %struct.pp_atomfwctrl_voltage_table_entry] }
%struct.pp_atomfwctrl_voltage_table_entry = type { i16, i32 }
%struct.atom_svid2_voltage_object_v4 = type { %struct.atom_voltage_object_header_v4, i8, i8, i8, i8, i8, i8, i16 }
%struct.atom_gpio_pin_assignment = type { i32, i8, i8, i8, i8 }
%struct.pp_atomfwctrl_gpio_pin_assignment = type { i16, i8 }
%struct.compute_gpu_clock_input_parameter_v1_8 = type { i32, [5 x i32] }
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
%struct.pp_atomfwctrl_clock_dividers_soc15 = type { i32, i32, i32, i32, i16, i8, i8, [2 x i32] }
%struct.compute_gpu_clock_output_parameter_v1_8 = type { i32, i32, i32, i16, i8, i8, [2 x i32] }
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.atom_asic_profiling_info_v4_1 = type <{ %struct.atom_common_table_header, i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%struct.pp_atomfwctrl_avfs_parameters = type { i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_asic_profiling_info_v4_2 = type <{ %struct.atom_common_table_header, i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%struct.atom_smu_info_v3_1 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pp_atomfwctrl_gpio_parameters = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atom_get_smu_clock_info_parameters_v3_1 = type { i8, i8, i8, i8 }
%struct.atom_firmware_info_v3_2 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, i8, i8, i8, i8, i16, i16, i32, [3 x i32] }
%struct.pp_atomfwctrl_bios_boot_up_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8 }
%struct.atom_firmware_info_v3_1 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, [6 x i32] }
%struct.atom_smc_dpm_info_v4_1 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, [3 x i8], [9 x i32] }
%struct.pp_atomfwctrl_smc_dpm_parameters = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8 }

@pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.pp_atomfwctrl_is_voltage_controlled_by_gpio_v4 = private unnamed_addr constant [47 x i8] c"pp_atomfwctrl_is_voltage_controlled_by_gpio_v4\00", align 1
@pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_atomfwctrl_is_voltage_controlled_by_gpio_v4, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c\00", [32 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry_ptr = internal global ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry, section ".printk_index", align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not find Voltage Table in BIOS.\00", [58 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_table_v4._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_atomfwctrl_get_voltage_table_v4 = private unnamed_addr constant [35 x i8] c"pp_atomfwctrl_get_voltage_table_v4\00", align 1
@pp_atomfwctrl_get_voltage_table_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_atomfwctrl_get_voltage_table_v4, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_table_v4._entry_ptr = internal global ptr @pp_atomfwctrl_get_voltage_table_v4._entry, section ".printk_index", align 4
@pp_atomfwctrl_get_voltage_table_v4._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_table_v4._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_atomfwctrl_get_voltage_table_v4, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_table_v4._entry_ptr.6 = internal global ptr @pp_atomfwctrl_get_voltage_table_v4._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Too many voltage entries!\00", [38 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_table_v4._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_table_v4._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_atomfwctrl_get_voltage_table_v4, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_table_v4._entry_ptr.10 = internal global ptr @pp_atomfwctrl_get_voltage_table_v4._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported Voltage Object Mode!\00", [63 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_pp_assign_pin._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_atomfwctrl_get_pp_assign_pin = private unnamed_addr constant [32 x i8] c"pp_atomfwctrl_get_pp_assign_pin\00", align 1
@pp_atomfwctrl_get_pp_assign_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_atomfwctrl_get_pp_assign_pin, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_pp_assign_pin._entry_ptr = internal global ptr @pp_atomfwctrl_get_pp_assign_pin._entry, section ".printk_index", align 4
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not find GPIO lookup Table in BIOS.\00", [54 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_avfs_information._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016amdgpu: [powerplay] Invalid VBIOS AVFS ProfilingInfo Revision!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pp_atomfwctrl_get_avfs_information\00", [61 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_avfs_information._entry_ptr = internal global ptr @pp_atomfwctrl_get_avfs_information._entry, section ".printk_index", align 4
@pp_atomfwctrl_get_gpio_information._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016amdgpu: [powerplay] Error retrieving BIOS smu_info Table Address!\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pp_atomfwctrl_get_gpio_information\00", [61 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_gpio_information._entry_ptr = internal global ptr @pp_atomfwctrl_get_gpio_information._entry, section ".printk_index", align 4
@pp_atomfwctrl_get_vbios_bootup_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016amdgpu: [powerplay] Error retrieving BIOS firmwareinfo!\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pp_atomfwctrl_get_vbios_bootup_values\00", [58 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_vbios_bootup_values._entry_ptr = internal global ptr @pp_atomfwctrl_get_vbios_bootup_values._entry, section ".printk_index", align 4
@pp_atomfwctrl_get_vbios_bootup_values._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016amdgpu: [powerplay] Fw info table revision does not match!\00", [35 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_vbios_bootup_values._entry_ptr.21 = internal global ptr @pp_atomfwctrl_get_vbios_bootup_values._entry.19, section ".printk_index", align 4
@pp_atomfwctrl_get_smc_dpm_information._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016amdgpu: [powerplay] Error retrieving BIOS Table Address!\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pp_atomfwctrl_get_smc_dpm_information\00", [58 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_smc_dpm_information._entry_ptr = internal global ptr @pp_atomfwctrl_get_smc_dpm_information._entry, section ".printk_index", align 4
@pp_atomfwctrl_get_voltage_info_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_atomfwctrl_get_voltage_info_table = private unnamed_addr constant [37 x i8] c"pp_atomfwctrl_get_voltage_info_table\00", align 1
@pp_atomfwctrl_get_voltage_info_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_atomfwctrl_get_voltage_info_table, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_voltage_info_table._entry_ptr = internal global ptr @pp_atomfwctrl_get_voltage_info_table._entry, section ".printk_index", align 4
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error retrieving BIOS Table Address!\00", [59 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_gpio_lookup_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_atomfwctrl_get_gpio_lookup_table = private unnamed_addr constant [36 x i8] c"pp_atomfwctrl_get_gpio_lookup_table\00", align 1
@pp_atomfwctrl_get_gpio_lookup_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_atomfwctrl_get_gpio_lookup_table, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_atomfwctrl_get_gpio_lookup_table._entry_ptr = internal global ptr @pp_atomfwctrl_get_gpio_lookup_table._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 7]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 85, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 106, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 118, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 154, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 217, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 456, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 475, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 600, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 613, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 631, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 64, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 171, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @pp_atomfwctrl_get_avfs_information._entry, ptr @pp_atomfwctrl_get_avfs_information._entry_ptr, ptr @pp_atomfwctrl_get_gpio_information._entry, ptr @pp_atomfwctrl_get_gpio_information._entry_ptr, ptr @pp_atomfwctrl_get_gpio_lookup_table._entry, ptr @pp_atomfwctrl_get_gpio_lookup_table._entry_ptr, ptr @pp_atomfwctrl_get_pp_assign_pin._entry, ptr @pp_atomfwctrl_get_pp_assign_pin._entry_ptr, ptr @pp_atomfwctrl_get_smc_dpm_information._entry, ptr @pp_atomfwctrl_get_smc_dpm_information._entry_ptr, ptr @pp_atomfwctrl_get_vbios_bootup_values._entry, ptr @pp_atomfwctrl_get_vbios_bootup_values._entry.19, ptr @pp_atomfwctrl_get_vbios_bootup_values._entry_ptr, ptr @pp_atomfwctrl_get_vbios_bootup_values._entry_ptr.21, ptr @pp_atomfwctrl_get_voltage_info_table._entry, ptr @pp_atomfwctrl_get_voltage_info_table._entry_ptr, ptr @pp_atomfwctrl_get_voltage_table_v4._entry, ptr @pp_atomfwctrl_get_voltage_table_v4._entry.5, ptr @pp_atomfwctrl_get_voltage_table_v4._entry.9, ptr @pp_atomfwctrl_get_voltage_table_v4._entry_ptr, ptr @pp_atomfwctrl_get_voltage_table_v4._entry_ptr.10, ptr @pp_atomfwctrl_get_voltage_table_v4._entry_ptr.6, ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry, ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry_ptr, ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pp_atomfwctrl_get_voltage_table_v4._rs, ptr @pp_atomfwctrl_get_voltage_table_v4._rs.4, ptr @.str.7, ptr @pp_atomfwctrl_get_voltage_table_v4._rs.8, ptr @.str.11, ptr @pp_atomfwctrl_get_pp_assign_pin._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @pp_atomfwctrl_get_voltage_info_table._rs, ptr @.str.24, ptr @pp_atomfwctrl_get_gpio_lookup_table._rs], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_table_v4._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_table_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_table_v4._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_table_v4._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_table_v4._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_table_v4._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_pp_assign_pin._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_pp_assign_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_avfs_information._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_gpio_information._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_vbios_bootup_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_vbios_bootup_values._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_smc_dpm_information._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_info_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_voltage_info_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_gpio_lookup_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_atomfwctrl_get_gpio_lookup_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call.i = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 32, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end8

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_get_voltage_info_table._rs, ptr noundef nonnull @__func__.pp_atomfwctrl_get_voltage_info_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #9
  br label %if.then

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._rs, ptr noundef nonnull @__func__.pp_atomfwctrl_is_voltage_controlled_by_gpio_v4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %call.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #6
  %conv.i = zext i16 %4 to i32
  %5 = ptrtoint ptr %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp30.i = icmp ugt i16 %4, 4
  br i1 %cmp30.i, label %do.end8.while.body.i_crit_edge, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end8.while.body.i_crit_edge:                   ; preds = %do.end8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.end8.while.body.i_crit_edge
  %offset.031.i = phi i32 [ %add15.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %do.end8.while.body.i_crit_edge ]
  %add.i = add i32 %offset.031.i, %5
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %8, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %voltage_mode9.i = getelementptr inbounds %struct.atom_voltage_object_header_v4, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %voltage_mode9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %voltage_mode9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %voltage_mode)
  %cmp11.i = icmp eq i8 %10, %voltage_mode
  br i1 %cmp11.i, label %pp_atomfwctrl_lookup_voltage_type_v4.exit.loopexit.split.loop.exit15, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %object_size.i = getelementptr inbounds %struct.atom_voltage_object_header_v4, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %object_size.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %object_size.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  %conv14.i = zext i16 %13 to i32
  %add15.i = add i32 %offset.031.i, %conv14.i
  %cmp.i = icmp ult i32 %add15.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

pp_atomfwctrl_lookup_voltage_type_v4.exit.loopexit.split.loop.exit15: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %phi.cmp = icmp ne i32 %add.i, 0
  br label %cleanup

cleanup:                                          ; preds = %pp_atomfwctrl_lookup_voltage_type_v4.exit.loopexit.split.loop.exit15, %cleanup.i.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %if.then.cleanup_crit_edge ], [ false, %do.end8.cleanup_crit_edge ], [ %phi.cmp, %pp_atomfwctrl_lookup_voltage_type_v4.exit.loopexit.split.loop.exit15 ], [ false, %cleanup.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_atomfwctrl_get_voltage_table_v4(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode, ptr nocapture noundef writeonly %voltage_table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call.i = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 32, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end8

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_get_voltage_info_table._rs, ptr noundef nonnull @__func__.pp_atomfwctrl_get_voltage_info_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #9
  br label %if.then

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_get_voltage_table_v4._rs, ptr noundef nonnull @__func__.pp_atomfwctrl_get_voltage_table_v4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %call.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #6
  %conv.i = zext i16 %4 to i32
  %5 = ptrtoint ptr %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp30.i = icmp ugt i16 %4, 4
  br i1 %cmp30.i, label %do.end8.while.body.i_crit_edge, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end8.while.body.i_crit_edge:                   ; preds = %do.end8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.end8.while.body.i_crit_edge
  %offset.031.i = phi i32 [ %add15.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %do.end8.while.body.i_crit_edge ]
  %add.i = add i32 %offset.031.i, %5
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %8, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %voltage_mode9.i = getelementptr inbounds %struct.atom_voltage_object_header_v4, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %voltage_mode9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %voltage_mode9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %voltage_mode)
  %cmp11.i = icmp eq i8 %10, %voltage_mode
  br i1 %cmp11.i, label %pp_atomfwctrl_lookup_voltage_type_v4.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %object_size.i = getelementptr inbounds %struct.atom_voltage_object_header_v4, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %object_size.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %object_size.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  %conv14.i = zext i16 %13 to i32
  %add15.i = add i32 %offset.031.i, %conv14.i
  %cmp.i = icmp ult i32 %add15.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

pp_atomfwctrl_lookup_voltage_type_v4.exit:        ; preds = %land.lhs.true.i
  %14 = inttoptr i32 %add.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool10.not = icmp eq i32 %add.i, 0
  br i1 %tobool10.not, label %pp_atomfwctrl_lookup_voltage_type_v4.exit.cleanup_crit_edge, label %if.end12

pp_atomfwctrl_lookup_voltage_type_v4.exit.cleanup_crit_edge: ; preds = %pp_atomfwctrl_lookup_voltage_type_v4.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %pp_atomfwctrl_lookup_voltage_type_v4.exit
  %15 = ptrtoint ptr %voltage_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %voltage_table, align 4
  %16 = zext i8 %voltage_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %voltage_mode, label %do.body60 [
    i8 0, label %do.body15
    i8 7, label %if.then51
  ]

do.body15:                                        ; preds = %if.end12
  %gpio_entry_num = getelementptr inbounds %struct.atom_gpio_voltage_object_v4, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %gpio_entry_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %gpio_entry_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %18)
  %cmp17 = icmp ult i8 %18, 33
  br i1 %cmp17, label %for.cond.preheader, label %if.then19

for.cond.preheader:                               ; preds = %do.body15
  %19 = ptrtoint ptr %gpio_entry_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gpio_entry_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp36115.not = icmp eq i8 %20, 0
  br i1 %cmp36115.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then19:                                        ; preds = %do.body15
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_get_voltage_table_v4._rs.4, ptr noundef nonnull @__func__.pp_atomfwctrl_get_voltage_table_v4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.cleanup_crit_edge, label %do.end25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atom_gpio_voltage_object_v4, ptr %14, i32 0, i32 6, i32 %i.0116
  %voltage_level_mv = getelementptr %struct.atom_gpio_voltage_object_v4, ptr %14, i32 0, i32 6, i32 %i.0116, i32 1
  %21 = ptrtoint ptr %voltage_level_mv to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %voltage_level_mv, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %arrayidx38 = getelementptr %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 8, i32 %i.0116
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx38, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %smio_low = getelementptr %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 8, i32 %i.0116, i32 1
  %28 = ptrtoint ptr %smio_low to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %smio_low, align 4
  %inc = add nuw nsw i32 %i.0116, 1
  %29 = ptrtoint ptr %gpio_entry_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gpio_entry_num, align 1
  %conv35 = zext i8 %30 to i32
  %cmp36 = icmp ult i32 %inc, %conv35
  br i1 %cmp36, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i8 %30 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %31 = ptrtoint ptr %voltage_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.lcssa, ptr %voltage_table, align 4
  %gpio_mask_val = getelementptr inbounds %struct.atom_gpio_voltage_object_v4, ptr %14, i32 0, i32 5
  %32 = ptrtoint ptr %gpio_mask_val to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %gpio_mask_val, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %mask_low = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 1
  %35 = ptrtoint ptr %mask_low to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mask_low, align 4
  %phase_delay_us = getelementptr inbounds %struct.atom_gpio_voltage_object_v4, ptr %14, i32 0, i32 3
  %36 = ptrtoint ptr %phase_delay_us to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %phase_delay_us, align 1
  %conv46 = zext i8 %37 to i32
  %phase_delay = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 2
  %38 = ptrtoint ptr %phase_delay to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv46, ptr %phase_delay, align 4
  br label %cleanup

if.then51:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %loadline_psi1 = getelementptr inbounds %struct.atom_svid2_voltage_object_v4, ptr %14, i32 0, i32 1
  %39 = ptrtoint ptr %loadline_psi1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %loadline_psi1, align 1
  %41 = lshr i8 %40, 5
  %42 = and i8 %41, 1
  %psi1_enable = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 4
  %43 = ptrtoint ptr %psi1_enable to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %psi1_enable, align 1
  %psi0_enable = getelementptr inbounds %struct.atom_svid2_voltage_object_v4, ptr %14, i32 0, i32 3
  %44 = ptrtoint ptr %psi0_enable to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %psi0_enable, align 1
  %46 = and i8 %45, 1
  %psi0_enable57 = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 3
  %47 = ptrtoint ptr %psi0_enable57 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %psi0_enable57, align 4
  %maxvstep = getelementptr inbounds %struct.atom_svid2_voltage_object_v4, ptr %14, i32 0, i32 4
  %48 = ptrtoint ptr %maxvstep to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %maxvstep, align 1
  %max_vid_step = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 5
  %50 = ptrtoint ptr %max_vid_step to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %max_vid_step, align 2
  %telemetry_offset = getelementptr inbounds %struct.atom_svid2_voltage_object_v4, ptr %14, i32 0, i32 5
  %51 = ptrtoint ptr %telemetry_offset to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %telemetry_offset, align 1
  %telemetry_offset58 = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 6
  %53 = ptrtoint ptr %telemetry_offset58 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %telemetry_offset58, align 1
  %telemetry_gain = getelementptr inbounds %struct.atom_svid2_voltage_object_v4, ptr %14, i32 0, i32 6
  %54 = ptrtoint ptr %telemetry_gain to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %telemetry_gain, align 1
  %telemetry_slope = getelementptr inbounds %struct.pp_atomfwctrl_voltage_table, ptr %voltage_table, i32 0, i32 7
  %56 = ptrtoint ptr %telemetry_slope to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %telemetry_slope, align 4
  br label %cleanup

do.body60:                                        ; preds = %if.end12
  %call61 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_get_voltage_table_v4._rs.8, ptr noundef nonnull @__func__.pp_atomfwctrl_get_voltage_table_v4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.cleanup_crit_edge, label %do.end66

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.body60.cleanup_crit_edge, %if.then51, %for.end, %do.end25, %if.then19.cleanup_crit_edge, %pp_atomfwctrl_lookup_voltage_type_v4.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %pp_atomfwctrl_lookup_voltage_type_v4.exit.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %if.then51 ], [ -1, %do.end25 ], [ -1, %do.end66 ], [ -1, %do.body60.cleanup_crit_edge ], [ -1, %if.then19.cleanup_crit_edge ], [ -1, %do.end8.cleanup_crit_edge ], [ -1, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pp_atomfwctrl_get_pp_assign_pin(ptr nocapture noundef readonly %hwmgr, i32 noundef %pin_id, ptr nocapture noundef writeonly %gpio_pin_assignment) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call.i = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 12, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end8

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_get_gpio_lookup_table._rs, ptr noundef nonnull @__func__.pp_atomfwctrl_get_gpio_lookup_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #9
  br label %if.then

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_atomfwctrl_get_pp_assign_pin._rs, ptr noundef nonnull @__func__.pp_atomfwctrl_get_pp_assign_pin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #9
  br label %cleanup

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %call.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #6
  %conv.i = zext i16 %4 to i32
  %5 = ptrtoint ptr %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp19.i = icmp ugt i16 %4, 4
  br i1 %cmp19.i, label %do.end8.while.body.i_crit_edge, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end8.while.body.i_crit_edge:                   ; preds = %do.end8
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %add6.i = add nuw nsw i32 %offset.020.i, 7
  %cmp.i = icmp ult i32 %add6.i, %conv.i
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.cleanup_crit_edge

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %do.end8.while.body.i_crit_edge
  %offset.020.i = phi i32 [ %add6.i, %while.cond.i.while.body.i_crit_edge ], [ 4, %do.end8.while.body.i_crit_edge ]
  %add.i = add i32 %offset.020.i, %5
  %6 = inttoptr i32 %add.i to ptr
  %gpio_id.i = getelementptr inbounds %struct.atom_gpio_pin_assignment, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %gpio_id.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gpio_id.i, align 1
  %conv2.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %pin_id)
  %cmp3.i = icmp eq i32 %conv2.i, %pin_id
  br i1 %cmp3.i, label %cleanup.thread.i, label %while.cond.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = inttoptr i32 %add.i to ptr
  %gpio_bitshift.i = getelementptr inbounds %struct.atom_gpio_pin_assignment, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %gpio_bitshift.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gpio_bitshift.i, align 1
  %uc_gpio_pin_bit_shift.i = getelementptr inbounds %struct.pp_atomfwctrl_gpio_pin_assignment, ptr %gpio_pin_assignment, i32 0, i32 1
  %12 = ptrtoint ptr %uc_gpio_pin_bit_shift.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %uc_gpio_pin_bit_shift.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %9, align 1
  %conv5.i = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #6
  %16 = ptrtoint ptr %gpio_pin_assignment to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %gpio_pin_assignment, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.thread.i, %while.cond.i.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %if.then.cleanup_crit_edge ], [ true, %cleanup.thread.i ], [ false, %do.end8.cleanup_crit_edge ], [ false, %while.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pp_atomfwctrl_enter_self_refresh(ptr nocapture noundef readnone %hwmgr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_atomfwctrl_get_gpu_pll_dividers_vega10(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_type, i32 noundef %clock_value, ptr nocapture noundef writeonly %dividers) local_unnamed_addr #0 align 64 {
entry:
  %pll_parameters = alloca %struct.compute_gpu_clock_input_parameter_v1_8, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pll_parameters) #6
  %bf.shl = shl i32 %clock_value, 8
  %bf.value3 = and i32 %clock_type, 255
  %bf.set5 = or i32 %bf.shl, %bf.value3
  %2 = getelementptr inbounds i8, ptr %pll_parameters, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 20)
  %4 = ptrtoint ptr %pll_parameters to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.set5, ptr %pll_parameters, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %6, i32 noundef 60, ptr noundef nonnull %pll_parameters) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds %struct.compute_gpu_clock_input_parameter_v1_8, ptr %pll_parameters, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds %struct.compute_gpu_clock_input_parameter_v1_8, ptr %pll_parameters, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.compute_gpu_clock_input_parameter_v1_8, ptr %pll_parameters, i32 0, i32 1
  %10 = ptrtoint ptr %pll_parameters to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load6 = load i32, ptr %pll_parameters, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %bf.load6)
  %12 = shl i32 %11, 8
  %13 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dividers, align 4
  %bf.clear8 = shl i32 %bf.load6, 24
  %ulDid = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, ptr %dividers, i32 0, i32 1
  %14 = ptrtoint ptr %ulDid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.clear8, ptr %ulDid, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %ulPll_fb_mult = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, ptr %dividers, i32 0, i32 2
  %18 = ptrtoint ptr %ulPll_fb_mult to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ulPll_fb_mult, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %8, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %ulPll_ss_fbsmult = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, ptr %dividers, i32 0, i32 3
  %22 = ptrtoint ptr %ulPll_ss_fbsmult to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ulPll_ss_fbsmult, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %7, align 4
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %usPll_ss_slew_frac = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, ptr %dividers, i32 0, i32 4
  %26 = ptrtoint ptr %usPll_ss_slew_frac to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %usPll_ss_slew_frac, align 4
  %pll_ss_enable = getelementptr inbounds %struct.compute_gpu_clock_output_parameter_v1_8, ptr %pll_parameters, i32 0, i32 4
  %27 = ptrtoint ptr %pll_ss_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pll_ss_enable, align 2
  %ucPll_ss_enable = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, ptr %dividers, i32 0, i32 5
  %29 = ptrtoint ptr %ucPll_ss_enable to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ucPll_ss_enable, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pll_parameters) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_atomfwctrl_get_avfs_information(ptr nocapture noundef readonly %hwmgr, ptr noundef writeonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 31, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %format_revision1 = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %format_revision1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %format_revision1, align 1
  %content_revision2 = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %content_revision2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %content_revision2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp eq i8 %5, 1
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %maxvddc = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %maxvddc to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %maxvddc, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %param, align 4
  %minvddc = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %minvddc to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %minvddc, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %ulMinVddc = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 1
  %13 = ptrtoint ptr %ulMinVddc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ulMinVddc, align 4
  %avfs_meannsigma_acontant0 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %avfs_meannsigma_acontant0 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %avfs_meannsigma_acontant0, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %ulMeanNsigmaAcontant0 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 2
  %17 = ptrtoint ptr %ulMeanNsigmaAcontant0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ulMeanNsigmaAcontant0, align 4
  %avfs_meannsigma_acontant1 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %avfs_meannsigma_acontant1 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %avfs_meannsigma_acontant1, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %ulMeanNsigmaAcontant1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 3
  %21 = ptrtoint ptr %ulMeanNsigmaAcontant1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ulMeanNsigmaAcontant1, align 4
  %avfs_meannsigma_acontant2 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %avfs_meannsigma_acontant2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %avfs_meannsigma_acontant2, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %ulMeanNsigmaAcontant2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 4
  %25 = ptrtoint ptr %ulMeanNsigmaAcontant2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ulMeanNsigmaAcontant2, align 4
  %avfs_meannsigma_dc_tol_sigma = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %avfs_meannsigma_dc_tol_sigma to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %avfs_meannsigma_dc_tol_sigma, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %usMeanNsigmaDcTolSigma = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 5
  %29 = ptrtoint ptr %usMeanNsigmaDcTolSigma to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %usMeanNsigmaDcTolSigma, align 4
  %avfs_meannsigma_platform_mean = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 7
  %30 = ptrtoint ptr %avfs_meannsigma_platform_mean to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %avfs_meannsigma_platform_mean, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %usMeanNsigmaPlatformMean = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 6
  %33 = ptrtoint ptr %usMeanNsigmaPlatformMean to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %usMeanNsigmaPlatformMean, align 2
  %avfs_meannsigma_platform_sigma = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 8
  %34 = ptrtoint ptr %avfs_meannsigma_platform_sigma to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %avfs_meannsigma_platform_sigma, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %usMeanNsigmaPlatformSigma = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 7
  %37 = ptrtoint ptr %usMeanNsigmaPlatformSigma to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %usMeanNsigmaPlatformSigma, align 4
  %gb_vdroop_table_cksoff_a0 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 9
  %38 = ptrtoint ptr %gb_vdroop_table_cksoff_a0 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %gb_vdroop_table_cksoff_a0, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %ulGbVdroopTableCksoffA0 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 8
  %41 = ptrtoint ptr %ulGbVdroopTableCksoffA0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ulGbVdroopTableCksoffA0, align 4
  %gb_vdroop_table_cksoff_a1 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 10
  %42 = ptrtoint ptr %gb_vdroop_table_cksoff_a1 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %gb_vdroop_table_cksoff_a1, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %ulGbVdroopTableCksoffA1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 9
  %45 = ptrtoint ptr %ulGbVdroopTableCksoffA1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ulGbVdroopTableCksoffA1, align 4
  %gb_vdroop_table_cksoff_a2 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 11
  %46 = ptrtoint ptr %gb_vdroop_table_cksoff_a2 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %gb_vdroop_table_cksoff_a2, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %ulGbVdroopTableCksoffA2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 10
  %49 = ptrtoint ptr %ulGbVdroopTableCksoffA2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ulGbVdroopTableCksoffA2, align 4
  %gb_vdroop_table_ckson_a0 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 12
  %50 = ptrtoint ptr %gb_vdroop_table_ckson_a0 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %gb_vdroop_table_ckson_a0, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %ulGbVdroopTableCksonA0 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 11
  %53 = ptrtoint ptr %ulGbVdroopTableCksonA0 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ulGbVdroopTableCksonA0, align 4
  %gb_vdroop_table_ckson_a1 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 13
  %54 = ptrtoint ptr %gb_vdroop_table_ckson_a1 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %gb_vdroop_table_ckson_a1, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %ulGbVdroopTableCksonA1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 12
  %57 = ptrtoint ptr %ulGbVdroopTableCksonA1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ulGbVdroopTableCksonA1, align 4
  %gb_vdroop_table_ckson_a2 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 14
  %58 = ptrtoint ptr %gb_vdroop_table_ckson_a2 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %gb_vdroop_table_ckson_a2, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %ulGbVdroopTableCksonA2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 13
  %61 = ptrtoint ptr %ulGbVdroopTableCksonA2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ulGbVdroopTableCksonA2, align 4
  %avfsgb_fuse_table_cksoff_m1 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 15
  %62 = ptrtoint ptr %avfsgb_fuse_table_cksoff_m1 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %avfsgb_fuse_table_cksoff_m1, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %ulGbFuseTableCksoffM1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 14
  %65 = ptrtoint ptr %ulGbFuseTableCksoffM1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ulGbFuseTableCksoffM1, align 4
  %avfsgb_fuse_table_cksoff_m2 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 16
  %66 = ptrtoint ptr %avfsgb_fuse_table_cksoff_m2 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %avfsgb_fuse_table_cksoff_m2, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %ulGbFuseTableCksoffM2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 15
  %69 = ptrtoint ptr %ulGbFuseTableCksoffM2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ulGbFuseTableCksoffM2, align 4
  %avfsgb_fuse_table_cksoff_b = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 17
  %70 = ptrtoint ptr %avfsgb_fuse_table_cksoff_b to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %avfsgb_fuse_table_cksoff_b, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %ulGbFuseTableCksoffB = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 16
  %73 = ptrtoint ptr %ulGbFuseTableCksoffB to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ulGbFuseTableCksoffB, align 4
  %avfsgb_fuse_table_ckson_m1 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 18
  %74 = ptrtoint ptr %avfsgb_fuse_table_ckson_m1 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %avfsgb_fuse_table_ckson_m1, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %ulGbFuseTableCksonM1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 17
  %77 = ptrtoint ptr %ulGbFuseTableCksonM1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %ulGbFuseTableCksonM1, align 4
  %avfsgb_fuse_table_ckson_m2 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 19
  %78 = ptrtoint ptr %avfsgb_fuse_table_ckson_m2 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %avfsgb_fuse_table_ckson_m2, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %ulGbFuseTableCksonM2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 18
  %81 = ptrtoint ptr %ulGbFuseTableCksonM2 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ulGbFuseTableCksonM2, align 4
  %avfsgb_fuse_table_ckson_b = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 20
  %82 = ptrtoint ptr %avfsgb_fuse_table_ckson_b to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %avfsgb_fuse_table_ckson_b, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %ulGbFuseTableCksonB = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 19
  %85 = ptrtoint ptr %ulGbFuseTableCksonB to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %ulGbFuseTableCksonB, align 4
  %enable_gb_vdroop_table_ckson = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 23
  %86 = ptrtoint ptr %enable_gb_vdroop_table_ckson to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %enable_gb_vdroop_table_ckson, align 1
  %ucEnableGbVdroopTableCkson = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 20
  %88 = ptrtoint ptr %ucEnableGbVdroopTableCkson to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %ucEnableGbVdroopTableCkson, align 4
  %enable_gb_fuse_table_ckson = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 25
  %89 = ptrtoint ptr %enable_gb_fuse_table_ckson to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %enable_gb_fuse_table_ckson, align 1
  %ucEnableGbFuseTableCkson = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 21
  %91 = ptrtoint ptr %ucEnableGbFuseTableCkson to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %ucEnableGbFuseTableCkson, align 1
  %psm_age_comfactor = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 26
  %92 = ptrtoint ptr %psm_age_comfactor to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %psm_age_comfactor, align 1
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  %usPsmAgeComfactor = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 22
  %95 = ptrtoint ptr %usPsmAgeComfactor to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %usPsmAgeComfactor, align 2
  %dispclk2gfxclk_a = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 29
  %96 = ptrtoint ptr %dispclk2gfxclk_a to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %dispclk2gfxclk_a, align 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %ulDispclk2GfxclkM1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 23
  %99 = ptrtoint ptr %ulDispclk2GfxclkM1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %ulDispclk2GfxclkM1, align 4
  %dispclk2gfxclk_b = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 30
  %100 = ptrtoint ptr %dispclk2gfxclk_b to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %dispclk2gfxclk_b, align 1
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %ulDispclk2GfxclkM2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 24
  %103 = ptrtoint ptr %ulDispclk2GfxclkM2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %ulDispclk2GfxclkM2, align 4
  %dispclk2gfxclk_c = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 31
  %104 = ptrtoint ptr %dispclk2gfxclk_c to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %dispclk2gfxclk_c, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %ulDispclk2GfxclkB = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 25
  %107 = ptrtoint ptr %ulDispclk2GfxclkB to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %ulDispclk2GfxclkB, align 4
  %dcefclk2gfxclk_a = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 35
  %108 = ptrtoint ptr %dcefclk2gfxclk_a to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %dcefclk2gfxclk_a, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %ulDcefclk2GfxclkM1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 26
  %111 = ptrtoint ptr %ulDcefclk2GfxclkM1 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %ulDcefclk2GfxclkM1, align 4
  %dcefclk2gfxclk_b = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 36
  %112 = ptrtoint ptr %dcefclk2gfxclk_b to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %dcefclk2gfxclk_b, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %ulDcefclk2GfxclkM2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 27
  %115 = ptrtoint ptr %ulDcefclk2GfxclkM2 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %ulDcefclk2GfxclkM2, align 4
  %dcefclk2gfxclk_c = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 37
  %116 = ptrtoint ptr %dcefclk2gfxclk_c to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %dcefclk2gfxclk_c, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %ulDcefclk2GfxclkB = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 28
  %119 = ptrtoint ptr %ulDcefclk2GfxclkB to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %ulDcefclk2GfxclkB, align 4
  %pixclk2gfxclk_a = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 32
  %120 = ptrtoint ptr %pixclk2gfxclk_a to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %pixclk2gfxclk_a, align 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %ulPixelclk2GfxclkM1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 29
  %123 = ptrtoint ptr %ulPixelclk2GfxclkM1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %ulPixelclk2GfxclkM1, align 4
  %pixclk2gfxclk_b = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 33
  %124 = ptrtoint ptr %pixclk2gfxclk_b to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %pixclk2gfxclk_b, align 1
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %ulPixelclk2GfxclkM2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 30
  %127 = ptrtoint ptr %ulPixelclk2GfxclkM2 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %ulPixelclk2GfxclkM2, align 4
  %pixclk2gfxclk_c = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 34
  %128 = ptrtoint ptr %pixclk2gfxclk_c to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %pixclk2gfxclk_c, align 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %ulPixelclk2GfxclkB = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 31
  %131 = ptrtoint ptr %ulPixelclk2GfxclkB to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %ulPixelclk2GfxclkB, align 4
  %phyclk2gfxclk_a = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 38
  %132 = ptrtoint ptr %phyclk2gfxclk_a to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %phyclk2gfxclk_a, align 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %ulPhyclk2GfxclkM1 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 32
  %135 = ptrtoint ptr %ulPhyclk2GfxclkM1 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %ulPhyclk2GfxclkM1, align 4
  %phyclk2gfxclk_b = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 39
  %136 = ptrtoint ptr %phyclk2gfxclk_b to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %phyclk2gfxclk_b, align 1
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %ulPhyclk2GfxclkM2 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 33
  %139 = ptrtoint ptr %ulPhyclk2GfxclkM2 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %ulPhyclk2GfxclkM2, align 4
  %phyclk2gfxclk_c = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 40
  %140 = ptrtoint ptr %phyclk2gfxclk_c to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %phyclk2gfxclk_c, align 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %ulPhyclk2GfxclkB = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 34
  %143 = ptrtoint ptr %ulPhyclk2GfxclkB to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %ulPhyclk2GfxclkB, align 4
  %ulAcgGbVdroopTableA0 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 35
  %144 = call ptr @memset(ptr %ulAcgGbVdroopTableA0, i32 0, i32 32)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp14 = icmp eq i8 %5, 2
  %or.cond272 = select i1 %cmp, i1 %cmp14, i1 false
  br i1 %or.cond272, label %if.then16, label %do.end

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %maxvddc17 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 1
  %145 = ptrtoint ptr %maxvddc17 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %maxvddc17, align 1
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  %148 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %param, align 4
  %minvddc19 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 2
  %149 = ptrtoint ptr %minvddc19 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %minvddc19, align 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %ulMinVddc20 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 1
  %152 = ptrtoint ptr %ulMinVddc20 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %ulMinVddc20, align 4
  %avfs_meannsigma_acontant021 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 3
  %153 = ptrtoint ptr %avfs_meannsigma_acontant021 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %avfs_meannsigma_acontant021, align 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %ulMeanNsigmaAcontant022 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 2
  %156 = ptrtoint ptr %ulMeanNsigmaAcontant022 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %ulMeanNsigmaAcontant022, align 4
  %avfs_meannsigma_acontant123 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 4
  %157 = ptrtoint ptr %avfs_meannsigma_acontant123 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %avfs_meannsigma_acontant123, align 1
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  %ulMeanNsigmaAcontant124 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 3
  %160 = ptrtoint ptr %ulMeanNsigmaAcontant124 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %ulMeanNsigmaAcontant124, align 4
  %avfs_meannsigma_acontant225 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 5
  %161 = ptrtoint ptr %avfs_meannsigma_acontant225 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %avfs_meannsigma_acontant225, align 1
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  %ulMeanNsigmaAcontant226 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 4
  %164 = ptrtoint ptr %ulMeanNsigmaAcontant226 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %ulMeanNsigmaAcontant226, align 4
  %avfs_meannsigma_dc_tol_sigma27 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 6
  %165 = ptrtoint ptr %avfs_meannsigma_dc_tol_sigma27 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %avfs_meannsigma_dc_tol_sigma27, align 1
  %167 = tail call i16 @llvm.bswap.i16(i16 %166)
  %usMeanNsigmaDcTolSigma28 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 5
  %168 = ptrtoint ptr %usMeanNsigmaDcTolSigma28 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %usMeanNsigmaDcTolSigma28, align 4
  %avfs_meannsigma_platform_mean29 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 7
  %169 = ptrtoint ptr %avfs_meannsigma_platform_mean29 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %avfs_meannsigma_platform_mean29, align 1
  %171 = tail call i16 @llvm.bswap.i16(i16 %170)
  %usMeanNsigmaPlatformMean30 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 6
  %172 = ptrtoint ptr %usMeanNsigmaPlatformMean30 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %usMeanNsigmaPlatformMean30, align 2
  %avfs_meannsigma_platform_sigma31 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 8
  %173 = ptrtoint ptr %avfs_meannsigma_platform_sigma31 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %avfs_meannsigma_platform_sigma31, align 1
  %175 = tail call i16 @llvm.bswap.i16(i16 %174)
  %usMeanNsigmaPlatformSigma32 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 7
  %176 = ptrtoint ptr %usMeanNsigmaPlatformSigma32 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %usMeanNsigmaPlatformSigma32, align 4
  %gb_vdroop_table_cksoff_a033 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 9
  %177 = ptrtoint ptr %gb_vdroop_table_cksoff_a033 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %gb_vdroop_table_cksoff_a033, align 1
  %179 = tail call i32 @llvm.bswap.i32(i32 %178)
  %ulGbVdroopTableCksoffA034 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 8
  %180 = ptrtoint ptr %ulGbVdroopTableCksoffA034 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %ulGbVdroopTableCksoffA034, align 4
  %gb_vdroop_table_cksoff_a135 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 10
  %181 = ptrtoint ptr %gb_vdroop_table_cksoff_a135 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %gb_vdroop_table_cksoff_a135, align 1
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  %ulGbVdroopTableCksoffA136 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 9
  %184 = ptrtoint ptr %ulGbVdroopTableCksoffA136 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %ulGbVdroopTableCksoffA136, align 4
  %gb_vdroop_table_cksoff_a237 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 11
  %185 = ptrtoint ptr %gb_vdroop_table_cksoff_a237 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %gb_vdroop_table_cksoff_a237, align 1
  %187 = tail call i32 @llvm.bswap.i32(i32 %186)
  %ulGbVdroopTableCksoffA238 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 10
  %188 = ptrtoint ptr %ulGbVdroopTableCksoffA238 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %ulGbVdroopTableCksoffA238, align 4
  %gb_vdroop_table_ckson_a039 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 12
  %189 = ptrtoint ptr %gb_vdroop_table_ckson_a039 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %gb_vdroop_table_ckson_a039, align 1
  %191 = tail call i32 @llvm.bswap.i32(i32 %190)
  %ulGbVdroopTableCksonA040 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 11
  %192 = ptrtoint ptr %ulGbVdroopTableCksonA040 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %ulGbVdroopTableCksonA040, align 4
  %gb_vdroop_table_ckson_a141 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 13
  %193 = ptrtoint ptr %gb_vdroop_table_ckson_a141 to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %gb_vdroop_table_ckson_a141, align 1
  %195 = tail call i32 @llvm.bswap.i32(i32 %194)
  %ulGbVdroopTableCksonA142 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 12
  %196 = ptrtoint ptr %ulGbVdroopTableCksonA142 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %ulGbVdroopTableCksonA142, align 4
  %gb_vdroop_table_ckson_a243 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 14
  %197 = ptrtoint ptr %gb_vdroop_table_ckson_a243 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %gb_vdroop_table_ckson_a243, align 1
  %199 = tail call i32 @llvm.bswap.i32(i32 %198)
  %ulGbVdroopTableCksonA244 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 13
  %200 = ptrtoint ptr %ulGbVdroopTableCksonA244 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %ulGbVdroopTableCksonA244, align 4
  %avfsgb_fuse_table_cksoff_m145 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 15
  %201 = ptrtoint ptr %avfsgb_fuse_table_cksoff_m145 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %avfsgb_fuse_table_cksoff_m145, align 1
  %203 = tail call i32 @llvm.bswap.i32(i32 %202)
  %ulGbFuseTableCksoffM146 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 14
  %204 = ptrtoint ptr %ulGbFuseTableCksoffM146 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %ulGbFuseTableCksoffM146, align 4
  %avfsgb_fuse_table_cksoff_m247 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 16
  %205 = ptrtoint ptr %avfsgb_fuse_table_cksoff_m247 to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %206 = load i32, ptr %avfsgb_fuse_table_cksoff_m247, align 1
  %207 = tail call i32 @llvm.bswap.i32(i32 %206)
  %ulGbFuseTableCksoffM248 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 15
  %208 = ptrtoint ptr %ulGbFuseTableCksoffM248 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %ulGbFuseTableCksoffM248, align 4
  %avfsgb_fuse_table_cksoff_b49 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 17
  %209 = ptrtoint ptr %avfsgb_fuse_table_cksoff_b49 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %avfsgb_fuse_table_cksoff_b49, align 1
  %211 = tail call i32 @llvm.bswap.i32(i32 %210)
  %ulGbFuseTableCksoffB50 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 16
  %212 = ptrtoint ptr %ulGbFuseTableCksoffB50 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %ulGbFuseTableCksoffB50, align 4
  %avfsgb_fuse_table_ckson_m151 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 18
  %213 = ptrtoint ptr %avfsgb_fuse_table_ckson_m151 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %avfsgb_fuse_table_ckson_m151, align 1
  %215 = tail call i32 @llvm.bswap.i32(i32 %214)
  %ulGbFuseTableCksonM152 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 17
  %216 = ptrtoint ptr %ulGbFuseTableCksonM152 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %ulGbFuseTableCksonM152, align 4
  %avfsgb_fuse_table_ckson_m253 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 19
  %217 = ptrtoint ptr %avfsgb_fuse_table_ckson_m253 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %avfsgb_fuse_table_ckson_m253, align 1
  %219 = tail call i32 @llvm.bswap.i32(i32 %218)
  %ulGbFuseTableCksonM254 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 18
  %220 = ptrtoint ptr %ulGbFuseTableCksonM254 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %ulGbFuseTableCksonM254, align 4
  %avfsgb_fuse_table_ckson_b55 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 20
  %221 = ptrtoint ptr %avfsgb_fuse_table_ckson_b55 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %avfsgb_fuse_table_ckson_b55, align 1
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  %ulGbFuseTableCksonB56 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 19
  %224 = ptrtoint ptr %ulGbFuseTableCksonB56 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %ulGbFuseTableCksonB56, align 4
  %enable_gb_vdroop_table_ckson57 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 23
  %225 = ptrtoint ptr %enable_gb_vdroop_table_ckson57 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %enable_gb_vdroop_table_ckson57, align 1
  %ucEnableGbVdroopTableCkson58 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 20
  %227 = ptrtoint ptr %ucEnableGbVdroopTableCkson58 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %ucEnableGbVdroopTableCkson58, align 4
  %enable_gb_fuse_table_ckson59 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 25
  %228 = ptrtoint ptr %enable_gb_fuse_table_ckson59 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %enable_gb_fuse_table_ckson59, align 1
  %ucEnableGbFuseTableCkson60 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 21
  %230 = ptrtoint ptr %ucEnableGbFuseTableCkson60 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %ucEnableGbFuseTableCkson60, align 1
  %psm_age_comfactor61 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 26
  %231 = ptrtoint ptr %psm_age_comfactor61 to i32
  call void @__asan_loadN_noabort(i32 %231, i32 2)
  %232 = load i16, ptr %psm_age_comfactor61, align 1
  %233 = tail call i16 @llvm.bswap.i16(i16 %232)
  %usPsmAgeComfactor62 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 22
  %234 = ptrtoint ptr %usPsmAgeComfactor62 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %233, ptr %usPsmAgeComfactor62, align 2
  %dispclk2gfxclk_a63 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 29
  %235 = ptrtoint ptr %dispclk2gfxclk_a63 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %dispclk2gfxclk_a63, align 1
  %237 = tail call i32 @llvm.bswap.i32(i32 %236)
  %ulDispclk2GfxclkM164 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 23
  %238 = ptrtoint ptr %ulDispclk2GfxclkM164 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %ulDispclk2GfxclkM164, align 4
  %dispclk2gfxclk_b65 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 30
  %239 = ptrtoint ptr %dispclk2gfxclk_b65 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %dispclk2gfxclk_b65, align 1
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  %ulDispclk2GfxclkM266 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 24
  %242 = ptrtoint ptr %ulDispclk2GfxclkM266 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %ulDispclk2GfxclkM266, align 4
  %dispclk2gfxclk_c67 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 31
  %243 = ptrtoint ptr %dispclk2gfxclk_c67 to i32
  call void @__asan_loadN_noabort(i32 %243, i32 4)
  %244 = load i32, ptr %dispclk2gfxclk_c67, align 1
  %245 = tail call i32 @llvm.bswap.i32(i32 %244)
  %ulDispclk2GfxclkB68 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 25
  %246 = ptrtoint ptr %ulDispclk2GfxclkB68 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %ulDispclk2GfxclkB68, align 4
  %dcefclk2gfxclk_a69 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 35
  %247 = ptrtoint ptr %dcefclk2gfxclk_a69 to i32
  call void @__asan_loadN_noabort(i32 %247, i32 4)
  %248 = load i32, ptr %dcefclk2gfxclk_a69, align 1
  %249 = tail call i32 @llvm.bswap.i32(i32 %248)
  %ulDcefclk2GfxclkM170 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 26
  %250 = ptrtoint ptr %ulDcefclk2GfxclkM170 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %ulDcefclk2GfxclkM170, align 4
  %dcefclk2gfxclk_b71 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 36
  %251 = ptrtoint ptr %dcefclk2gfxclk_b71 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %dcefclk2gfxclk_b71, align 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252)
  %ulDcefclk2GfxclkM272 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 27
  %254 = ptrtoint ptr %ulDcefclk2GfxclkM272 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %ulDcefclk2GfxclkM272, align 4
  %dcefclk2gfxclk_c73 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 37
  %255 = ptrtoint ptr %dcefclk2gfxclk_c73 to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %256 = load i32, ptr %dcefclk2gfxclk_c73, align 1
  %257 = tail call i32 @llvm.bswap.i32(i32 %256)
  %ulDcefclk2GfxclkB74 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 28
  %258 = ptrtoint ptr %ulDcefclk2GfxclkB74 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %ulDcefclk2GfxclkB74, align 4
  %pixclk2gfxclk_a75 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 32
  %259 = ptrtoint ptr %pixclk2gfxclk_a75 to i32
  call void @__asan_loadN_noabort(i32 %259, i32 4)
  %260 = load i32, ptr %pixclk2gfxclk_a75, align 1
  %261 = tail call i32 @llvm.bswap.i32(i32 %260)
  %ulPixelclk2GfxclkM176 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 29
  %262 = ptrtoint ptr %ulPixelclk2GfxclkM176 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %ulPixelclk2GfxclkM176, align 4
  %pixclk2gfxclk_b77 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 33
  %263 = ptrtoint ptr %pixclk2gfxclk_b77 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %pixclk2gfxclk_b77, align 1
  %265 = tail call i32 @llvm.bswap.i32(i32 %264)
  %ulPixelclk2GfxclkM278 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 30
  %266 = ptrtoint ptr %ulPixelclk2GfxclkM278 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %ulPixelclk2GfxclkM278, align 4
  %pixclk2gfxclk_c79 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 34
  %267 = ptrtoint ptr %pixclk2gfxclk_c79 to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %pixclk2gfxclk_c79, align 1
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  %ulPixelclk2GfxclkB80 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 31
  %270 = ptrtoint ptr %ulPixelclk2GfxclkB80 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %ulPixelclk2GfxclkB80, align 4
  %phyclk2gfxclk_a81 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, ptr %call, i32 0, i32 38
  %271 = ptrtoint ptr %phyclk2gfxclk_a81 to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %272 = load i32, ptr %phyclk2gfxclk_a81, align 1
  %273 = tail call i32 @llvm.bswap.i32(i32 %272)
  %ulPhyclk2GfxclkM182 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 32
  %274 = ptrtoint ptr %ulPhyclk2GfxclkM182 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %ulPhyclk2GfxclkM182, align 4
  %phyclk2gfxclk_b83 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 39
  %275 = ptrtoint ptr %phyclk2gfxclk_b83 to i32
  call void @__asan_loadN_noabort(i32 %275, i32 4)
  %276 = load i32, ptr %phyclk2gfxclk_b83, align 1
  %277 = tail call i32 @llvm.bswap.i32(i32 %276)
  %ulPhyclk2GfxclkM284 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 33
  %278 = ptrtoint ptr %ulPhyclk2GfxclkM284 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %ulPhyclk2GfxclkM284, align 4
  %phyclk2gfxclk_c85 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 40
  %279 = ptrtoint ptr %phyclk2gfxclk_c85 to i32
  call void @__asan_loadN_noabort(i32 %279, i32 4)
  %280 = load i32, ptr %phyclk2gfxclk_c85, align 1
  %281 = tail call i32 @llvm.bswap.i32(i32 %280)
  %ulPhyclk2GfxclkB86 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 34
  %282 = ptrtoint ptr %ulPhyclk2GfxclkB86 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %ulPhyclk2GfxclkB86, align 4
  %acg_gb_vdroop_table_a0 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 41
  %283 = ptrtoint ptr %acg_gb_vdroop_table_a0 to i32
  call void @__asan_loadN_noabort(i32 %283, i32 4)
  %284 = load i32, ptr %acg_gb_vdroop_table_a0, align 1
  %285 = tail call i32 @llvm.bswap.i32(i32 %284)
  %ulAcgGbVdroopTableA087 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 35
  %286 = ptrtoint ptr %ulAcgGbVdroopTableA087 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %ulAcgGbVdroopTableA087, align 4
  %acg_gb_vdroop_table_a1 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 42
  %287 = ptrtoint ptr %acg_gb_vdroop_table_a1 to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %288 = load i32, ptr %acg_gb_vdroop_table_a1, align 1
  %289 = tail call i32 @llvm.bswap.i32(i32 %288)
  %ulAcgGbVdroopTableA188 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 36
  %290 = ptrtoint ptr %ulAcgGbVdroopTableA188 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %ulAcgGbVdroopTableA188, align 4
  %acg_gb_vdroop_table_a2 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 43
  %291 = ptrtoint ptr %acg_gb_vdroop_table_a2 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 4)
  %292 = load i32, ptr %acg_gb_vdroop_table_a2, align 1
  %293 = tail call i32 @llvm.bswap.i32(i32 %292)
  %ulAcgGbVdroopTableA289 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 37
  %294 = ptrtoint ptr %ulAcgGbVdroopTableA289 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %ulAcgGbVdroopTableA289, align 4
  %acg_avfsgb_fuse_table_m1 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 44
  %295 = ptrtoint ptr %acg_avfsgb_fuse_table_m1 to i32
  call void @__asan_loadN_noabort(i32 %295, i32 4)
  %296 = load i32, ptr %acg_avfsgb_fuse_table_m1, align 1
  %297 = tail call i32 @llvm.bswap.i32(i32 %296)
  %ulAcgGbFuseTableM190 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 38
  %298 = ptrtoint ptr %ulAcgGbFuseTableM190 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %ulAcgGbFuseTableM190, align 4
  %acg_avfsgb_fuse_table_m2 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 45
  %299 = ptrtoint ptr %acg_avfsgb_fuse_table_m2 to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %acg_avfsgb_fuse_table_m2, align 1
  %301 = tail call i32 @llvm.bswap.i32(i32 %300)
  %ulAcgGbFuseTableM291 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 39
  %302 = ptrtoint ptr %ulAcgGbFuseTableM291 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %ulAcgGbFuseTableM291, align 4
  %acg_avfsgb_fuse_table_b = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 46
  %303 = ptrtoint ptr %acg_avfsgb_fuse_table_b to i32
  call void @__asan_loadN_noabort(i32 %303, i32 4)
  %304 = load i32, ptr %acg_avfsgb_fuse_table_b, align 1
  %305 = tail call i32 @llvm.bswap.i32(i32 %304)
  %ulAcgGbFuseTableB92 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 40
  %306 = ptrtoint ptr %ulAcgGbFuseTableB92 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %ulAcgGbFuseTableB92, align 4
  %enable_acg_gb_vdroop_table = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 47
  %307 = ptrtoint ptr %enable_acg_gb_vdroop_table to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %enable_acg_gb_vdroop_table, align 1
  %conv93 = zext i8 %308 to i32
  %309 = shl nuw i32 %conv93, 24
  %ucAcgEnableGbVdroopTable94 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 41
  %310 = ptrtoint ptr %ucAcgEnableGbVdroopTable94 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %ucAcgEnableGbVdroopTable94, align 4
  %enable_acg_gb_fuse_table = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, ptr %call, i32 0, i32 48
  %311 = ptrtoint ptr %enable_acg_gb_fuse_table to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %enable_acg_gb_fuse_table, align 1
  %conv95 = zext i8 %312 to i32
  %313 = shl nuw i32 %conv95, 24
  %ucAcgEnableGbFuseTable96 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, ptr %param, i32 0, i32 42
  %314 = ptrtoint ptr %ucAcgEnableGbFuseTable96 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %ucAcgEnableGbFuseTable96, align 4
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then16, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smu_atom_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_atomfwctrl_get_gpio_information(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 8, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ac_dc_gpio_bit = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %ac_dc_gpio_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ac_dc_gpio_bit, align 1
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %param, align 1
  %ac_dc_polarity = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %ac_dc_polarity to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ac_dc_polarity, align 1
  %ucAcDcPolarity = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, ptr %param, i32 0, i32 1
  %7 = ptrtoint ptr %ucAcDcPolarity to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ucAcDcPolarity, align 1
  %vr0hot_gpio_bit = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %vr0hot_gpio_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vr0hot_gpio_bit, align 1
  %ucVR0HotGpio = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, ptr %param, i32 0, i32 2
  %10 = ptrtoint ptr %ucVR0HotGpio to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ucVR0HotGpio, align 1
  %vr0hot_polarity = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %vr0hot_polarity to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vr0hot_polarity, align 1
  %ucVR0HotPolarity = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, ptr %param, i32 0, i32 3
  %13 = ptrtoint ptr %ucVR0HotPolarity to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ucVR0HotPolarity, align 1
  %vr1hot_gpio_bit = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %vr1hot_gpio_bit to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vr1hot_gpio_bit, align 1
  %ucVR1HotGpio = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, ptr %param, i32 0, i32 4
  %16 = ptrtoint ptr %ucVR1HotGpio to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ucVR1HotGpio, align 1
  %vr1hot_polarity = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %vr1hot_polarity to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vr1hot_polarity, align 1
  %ucVR1HotPolarity = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, ptr %param, i32 0, i32 5
  %19 = ptrtoint ptr %ucVR1HotPolarity to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ucVR1HotPolarity, align 1
  %fw_ctf_gpio_bit = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 16
  %20 = ptrtoint ptr %fw_ctf_gpio_bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fw_ctf_gpio_bit, align 1
  %ucFwCtfGpio = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, ptr %param, i32 0, i32 6
  %22 = ptrtoint ptr %ucFwCtfGpio to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ucFwCtfGpio, align 1
  %fw_ctf_polarity = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call, i32 0, i32 17
  %23 = ptrtoint ptr %fw_ctf_polarity to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_ctf_polarity, align 1
  %ucFwCtfPolarity = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, ptr %param, i32 0, i32 7
  %25 = ptrtoint ptr %ucFwCtfPolarity to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ucFwCtfPolarity, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_atomfwctrl_get_clk_information_by_clkid(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %clk_id, i8 noundef zeroext %syspll_id, ptr nocapture noundef writeonly %frequency) local_unnamed_addr #0 align 64 {
entry:
  %parameters = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters) #6
  %2 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters, i32 0, i32 1
  %3 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters, i32 0, i32 2
  %4 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters, i32 0, i32 3
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %clk_id, ptr %2, align 1
  %6 = ptrtoint ptr %parameters to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %syspll_id, ptr %parameters, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 2
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %10, i32 noundef 41, ptr noundef nonnull %parameters) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %parameters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parameters, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %div = udiv i32 %13, 10000
  %14 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_atomfwctrl_get_vbios_bootup_values(ptr nocapture noundef readonly %hwmgr, ptr noundef writeonly %boot_values) local_unnamed_addr #0 align 64 {
entry:
  %parameters.i68.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i60.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i52.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i44.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i.i38 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i82.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i74.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i66.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i58.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i50.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %parameters.i.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %format_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %format_revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %format_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.do.end21_crit_edge

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

land.lhs.true:                                    ; preds = %if.end
  %content_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %content_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %content_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp5 = icmp eq i8 %5, 2
  br i1 %cmp5, label %if.then7, label %land.lhs.true12

if.then7:                                         ; preds = %land.lhs.true
  %firmware_revision.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %firmware_revision.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %firmware_revision.i, align 1
  %8 = ptrtoint ptr %boot_values to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %boot_values, align 4
  %bootup_sclk_in10khz.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %bootup_sclk_in10khz.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %bootup_sclk_in10khz.i, align 1
  %ulGfxClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 1
  %11 = ptrtoint ptr %ulGfxClk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ulGfxClk.i, align 4
  %bootup_mclk_in10khz.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %bootup_mclk_in10khz.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %bootup_mclk_in10khz.i, align 1
  %ulUClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 2
  %14 = ptrtoint ptr %ulUClk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ulUClk.i, align 4
  %bootup_vddc_mv.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %bootup_vddc_mv.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %bootup_vddc_mv.i, align 1
  %usVddc.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 9
  %17 = ptrtoint ptr %usVddc.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %usVddc.i, align 4
  %bootup_vddci_mv.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %bootup_vddci_mv.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %bootup_vddci_mv.i, align 1
  %usVddci.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 10
  %20 = ptrtoint ptr %usVddci.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %usVddci.i, align 2
  %bootup_mvddc_mv.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 9
  %21 = ptrtoint ptr %bootup_mvddc_mv.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %bootup_mvddc_mv.i, align 1
  %usMvddc.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 11
  %23 = ptrtoint ptr %usMvddc.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %usMvddc.i, align 4
  %bootup_vddgfx_mv.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 10
  %24 = ptrtoint ptr %bootup_vddgfx_mv.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %bootup_vddgfx_mv.i, align 1
  %usVddGfx.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 12
  %26 = ptrtoint ptr %usVddGfx.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %usVddGfx.i, align 2
  %coolingsolution_id.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call, i32 0, i32 12
  %27 = ptrtoint ptr %coolingsolution_id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %coolingsolution_id.i, align 1
  %ucCoolingID.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 13
  %29 = ptrtoint ptr %ucCoolingID.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ucCoolingID.i, align 4
  %ulSocClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 3
  %30 = ptrtoint ptr %ulSocClk.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ulSocClk.i, align 4
  %ulDCEFClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 4
  %31 = ptrtoint ptr %ulDCEFClk.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ulDCEFClk.i, align 4
  %32 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i.i) #6
  %34 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i.i, i32 0, i32 1
  %35 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i.i, i32 0, i32 2
  %36 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %34, align 1
  %38 = ptrtoint ptr %parameters.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %parameters.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %35, align 2
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %36, align 1
  %mode_info.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %33, i32 0, i32 79
  %41 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mode_info.i.i, align 8
  %call.i.i = call i32 @amdgpu_atom_execute_table(ptr noundef %42, i32 noundef 41, ptr noundef nonnull %parameters.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %pp_atomfwctrl_get_clk_information_by_clkid.exit.i

pp_atomfwctrl_get_clk_information_by_clkid.exit.i: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i.i) #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %parameters.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %parameters.i.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #6
  %div.i.i = udiv i32 %45, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i.i) #6
  %46 = ptrtoint ptr %ulSocClk.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div.i.i, ptr %ulSocClk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %pp_atomfwctrl_get_clk_information_by_clkid.exit.i
  %47 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i50.i) #6
  %49 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i50.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i50.i, i32 0, i32 2
  %51 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i50.i, i32 0, i32 3
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 5, ptr %49, align 1
  %53 = ptrtoint ptr %parameters.i50.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %parameters.i50.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %50, align 2
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %51, align 1
  %mode_info.i51.i = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 79
  %56 = ptrtoint ptr %mode_info.i51.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mode_info.i51.i, align 8
  %call.i52.i = call i32 @amdgpu_atom_execute_table(ptr noundef %57, i32 noundef 41, ptr noundef nonnull %parameters.i50.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool.not.i53.i, label %if.then4.i, label %pp_atomfwctrl_get_clk_information_by_clkid.exit57.i

pp_atomfwctrl_get_clk_information_by_clkid.exit57.i: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i50.i) #6
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %parameters.i50.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %parameters.i50.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #6
  %div.i54.i = udiv i32 %60, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i50.i) #6
  %61 = ptrtoint ptr %ulDCEFClk.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div.i54.i, ptr %ulDCEFClk.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %pp_atomfwctrl_get_clk_information_by_clkid.exit57.i
  %62 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i58.i) #6
  %mode_info.i59.i = getelementptr inbounds %struct.amdgpu_device, ptr %63, i32 0, i32 79
  %64 = ptrtoint ptr %parameters.i58.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %parameters.i58.i, align 4
  %65 = ptrtoint ptr %mode_info.i59.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mode_info.i59.i, align 8
  %call.i60.i = call i32 @amdgpu_atom_execute_table(ptr noundef %66, i32 noundef 41, ptr noundef nonnull %parameters.i58.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool.not.i61.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool.not.i61.i, label %if.then9.i, label %pp_atomfwctrl_get_clk_information_by_clkid.exit65.i

pp_atomfwctrl_get_clk_information_by_clkid.exit65.i: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i58.i) #6
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %parameters.i58.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %parameters.i58.i, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #6
  %div.i62.i = udiv i32 %69, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i58.i) #6
  %ulEClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 5
  %70 = ptrtoint ptr %ulEClk.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div.i62.i, ptr %ulEClk.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %pp_atomfwctrl_get_clk_information_by_clkid.exit65.i
  %71 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i66.i) #6
  %73 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i66.i, i32 0, i32 1
  %74 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i66.i, i32 0, i32 2
  %75 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i66.i, i32 0, i32 3
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %73, align 1
  %77 = ptrtoint ptr %parameters.i66.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %parameters.i66.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %74, align 2
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %75, align 1
  %mode_info.i67.i = getelementptr inbounds %struct.amdgpu_device, ptr %72, i32 0, i32 79
  %80 = ptrtoint ptr %mode_info.i67.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mode_info.i67.i, align 8
  %call.i68.i = call i32 @amdgpu_atom_execute_table(ptr noundef %81, i32 noundef 41, ptr noundef nonnull %parameters.i66.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool.not.i69.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool.not.i69.i, label %if.then13.i, label %pp_atomfwctrl_get_clk_information_by_clkid.exit73.i

pp_atomfwctrl_get_clk_information_by_clkid.exit73.i: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i66.i) #6
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %parameters.i66.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %parameters.i66.i, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #6
  %div.i70.i = udiv i32 %84, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i66.i) #6
  %ulVClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 6
  %85 = ptrtoint ptr %ulVClk.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div.i70.i, ptr %ulVClk.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %pp_atomfwctrl_get_clk_information_by_clkid.exit73.i
  %86 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i74.i) #6
  %88 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i74.i, i32 0, i32 1
  %89 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i74.i, i32 0, i32 2
  %90 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i74.i, i32 0, i32 3
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %88, align 1
  %92 = ptrtoint ptr %parameters.i74.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %parameters.i74.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %89, align 2
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %90, align 1
  %mode_info.i75.i = getelementptr inbounds %struct.amdgpu_device, ptr %87, i32 0, i32 79
  %95 = ptrtoint ptr %mode_info.i75.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mode_info.i75.i, align 8
  %call.i76.i = call i32 @amdgpu_atom_execute_table(ptr noundef %96, i32 noundef 41, ptr noundef nonnull %parameters.i74.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool.not.i77.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool.not.i77.i, label %if.then17.i, label %pp_atomfwctrl_get_clk_information_by_clkid.exit81.i

pp_atomfwctrl_get_clk_information_by_clkid.exit81.i: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i74.i) #6
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %parameters.i74.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %parameters.i74.i, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98) #6
  %div.i78.i = udiv i32 %99, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i74.i) #6
  %ulDClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 7
  %100 = ptrtoint ptr %ulDClk.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %div.i78.i, ptr %ulDClk.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %pp_atomfwctrl_get_clk_information_by_clkid.exit81.i
  %101 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i82.i) #6
  %103 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i82.i, i32 0, i32 1
  %104 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i82.i, i32 0, i32 2
  %105 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i82.i, i32 0, i32 3
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %103, align 1
  %107 = ptrtoint ptr %parameters.i82.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 3, ptr %parameters.i82.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %104, align 2
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %105, align 1
  %mode_info.i83.i = getelementptr inbounds %struct.amdgpu_device, ptr %102, i32 0, i32 79
  %110 = ptrtoint ptr %mode_info.i83.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mode_info.i83.i, align 8
  %call.i84.i = call i32 @amdgpu_atom_execute_table(ptr noundef %111, i32 noundef 41, ptr noundef nonnull %parameters.i82.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool.not.i85.i = icmp eq i32 %call.i84.i, 0
  br i1 %tobool.not.i85.i, label %if.then21.i, label %pp_atomfwctrl_get_clk_information_by_clkid.exit89.i

pp_atomfwctrl_get_clk_information_by_clkid.exit89.i: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i82.i) #6
  br label %cleanup

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %parameters.i82.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %parameters.i82.i, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #6
  %div.i86.i = udiv i32 %114, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i82.i) #6
  %ulFClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 8
  %115 = ptrtoint ptr %ulFClk.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %div.i86.i, ptr %ulFClk.i, align 4
  br label %cleanup

land.lhs.true12:                                  ; preds = %land.lhs.true
  %116 = ptrtoint ptr %content_revision to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %content_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp15 = icmp eq i8 %117, 1
  br i1 %cmp15, label %if.then17, label %land.lhs.true12.do.end21_crit_edge

land.lhs.true12.do.end21_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

if.then17:                                        ; preds = %land.lhs.true12
  %firmware_revision.i39 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 1
  %118 = ptrtoint ptr %firmware_revision.i39 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %firmware_revision.i39, align 1
  %120 = ptrtoint ptr %boot_values to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %boot_values, align 4
  %bootup_sclk_in10khz.i40 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 2
  %121 = ptrtoint ptr %bootup_sclk_in10khz.i40 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %bootup_sclk_in10khz.i40, align 1
  %ulGfxClk.i41 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 1
  %123 = ptrtoint ptr %ulGfxClk.i41 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %ulGfxClk.i41, align 4
  %bootup_mclk_in10khz.i42 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 3
  %124 = ptrtoint ptr %bootup_mclk_in10khz.i42 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %bootup_mclk_in10khz.i42, align 1
  %ulUClk.i43 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 2
  %126 = ptrtoint ptr %ulUClk.i43 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %ulUClk.i43, align 4
  %bootup_vddc_mv.i44 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 7
  %127 = ptrtoint ptr %bootup_vddc_mv.i44 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %bootup_vddc_mv.i44, align 1
  %usVddc.i45 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 9
  %129 = ptrtoint ptr %usVddc.i45 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %usVddc.i45, align 4
  %bootup_vddci_mv.i46 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 8
  %130 = ptrtoint ptr %bootup_vddci_mv.i46 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %bootup_vddci_mv.i46, align 1
  %usVddci.i47 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 10
  %132 = ptrtoint ptr %usVddci.i47 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %usVddci.i47, align 2
  %bootup_mvddc_mv.i48 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 9
  %133 = ptrtoint ptr %bootup_mvddc_mv.i48 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %bootup_mvddc_mv.i48, align 1
  %usMvddc.i49 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 11
  %135 = ptrtoint ptr %usMvddc.i49 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %usMvddc.i49, align 4
  %bootup_vddgfx_mv.i50 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 10
  %136 = ptrtoint ptr %bootup_vddgfx_mv.i50 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %bootup_vddgfx_mv.i50, align 1
  %usVddGfx.i51 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 12
  %138 = ptrtoint ptr %usVddGfx.i51 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %usVddGfx.i51, align 2
  %coolingsolution_id.i52 = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call, i32 0, i32 12
  %139 = ptrtoint ptr %coolingsolution_id.i52 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %coolingsolution_id.i52, align 1
  %ucCoolingID.i53 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 13
  %141 = ptrtoint ptr %ucCoolingID.i53 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %ucCoolingID.i53, align 4
  %ulSocClk.i54 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 3
  %142 = ptrtoint ptr %ulSocClk.i54 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %ulSocClk.i54, align 4
  %ulDCEFClk.i55 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 4
  %143 = ptrtoint ptr %ulDCEFClk.i55 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %ulDCEFClk.i55, align 4
  %144 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i.i38) #6
  %146 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i.i38, i32 0, i32 1
  %147 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i.i38, i32 0, i32 2
  %148 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i.i38, i32 0, i32 3
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %146, align 1
  %150 = ptrtoint ptr %parameters.i.i38 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %parameters.i.i38, align 4
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %147, align 2
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %148, align 1
  %mode_info.i.i56 = getelementptr inbounds %struct.amdgpu_device, ptr %145, i32 0, i32 79
  %153 = ptrtoint ptr %mode_info.i.i56 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mode_info.i.i56, align 8
  %call.i.i57 = call i32 @amdgpu_atom_execute_table(ptr noundef %154, i32 noundef 41, ptr noundef nonnull %parameters.i.i38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool.not.i.i58 = icmp eq i32 %call.i.i57, 0
  br i1 %tobool.not.i.i58, label %if.then.i61, label %pp_atomfwctrl_get_clk_information_by_clkid.exit.i59

pp_atomfwctrl_get_clk_information_by_clkid.exit.i59: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i.i38) #6
  br label %if.end.i62

if.then.i61:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %parameters.i.i38 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %parameters.i.i38, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %156) #6
  %div.i.i60 = udiv i32 %157, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i.i38) #6
  %158 = ptrtoint ptr %ulSocClk.i54 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %div.i.i60, ptr %ulSocClk.i54, align 4
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i61, %pp_atomfwctrl_get_clk_information_by_clkid.exit.i59
  %159 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i44.i) #6
  %161 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i44.i, i32 0, i32 1
  %162 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i44.i, i32 0, i32 2
  %163 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i44.i, i32 0, i32 3
  %164 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 8, ptr %161, align 1
  %165 = ptrtoint ptr %parameters.i44.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %parameters.i44.i, align 4
  %166 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %162, align 2
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %163, align 1
  %mode_info.i45.i = getelementptr inbounds %struct.amdgpu_device, ptr %160, i32 0, i32 79
  %168 = ptrtoint ptr %mode_info.i45.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mode_info.i45.i, align 8
  %call.i46.i = call i32 @amdgpu_atom_execute_table(ptr noundef %169, i32 noundef 41, ptr noundef nonnull %parameters.i44.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i47.i, label %if.then4.i63, label %pp_atomfwctrl_get_clk_information_by_clkid.exit51.i

pp_atomfwctrl_get_clk_information_by_clkid.exit51.i: ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i44.i) #6
  br label %if.end6.i64

if.then4.i63:                                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  %170 = ptrtoint ptr %parameters.i44.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %parameters.i44.i, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171) #6
  %div.i48.i = udiv i32 %172, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i44.i) #6
  %173 = ptrtoint ptr %ulDCEFClk.i55 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %div.i48.i, ptr %ulDCEFClk.i55, align 4
  br label %if.end6.i64

if.end6.i64:                                      ; preds = %if.then4.i63, %pp_atomfwctrl_get_clk_information_by_clkid.exit51.i
  %174 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i52.i) #6
  %176 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i52.i, i32 0, i32 1
  %177 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i52.i, i32 0, i32 2
  %178 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i52.i, i32 0, i32 3
  %179 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 7, ptr %176, align 1
  %180 = ptrtoint ptr %parameters.i52.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %parameters.i52.i, align 4
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %177, align 2
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %178, align 1
  %mode_info.i53.i = getelementptr inbounds %struct.amdgpu_device, ptr %175, i32 0, i32 79
  %183 = ptrtoint ptr %mode_info.i53.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mode_info.i53.i, align 8
  %call.i54.i = call i32 @amdgpu_atom_execute_table(ptr noundef %184, i32 noundef 41, ptr noundef nonnull %parameters.i52.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool.not.i55.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool.not.i55.i, label %if.then9.i66, label %pp_atomfwctrl_get_clk_information_by_clkid.exit59.i

pp_atomfwctrl_get_clk_information_by_clkid.exit59.i: ; preds = %if.end6.i64
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i52.i) #6
  br label %if.end10.i67

if.then9.i66:                                     ; preds = %if.end6.i64
  call void @__sanitizer_cov_trace_pc() #8
  %185 = ptrtoint ptr %parameters.i52.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %parameters.i52.i, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #6
  %div.i56.i = udiv i32 %187, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i52.i) #6
  %ulEClk.i65 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 5
  %188 = ptrtoint ptr %ulEClk.i65 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %div.i56.i, ptr %ulEClk.i65, align 4
  br label %if.end10.i67

if.end10.i67:                                     ; preds = %if.then9.i66, %pp_atomfwctrl_get_clk_information_by_clkid.exit59.i
  %189 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i60.i) #6
  %191 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i60.i, i32 0, i32 1
  %192 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i60.i, i32 0, i32 2
  %193 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i60.i, i32 0, i32 3
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 6, ptr %191, align 1
  %195 = ptrtoint ptr %parameters.i60.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %parameters.i60.i, align 4
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %192, align 2
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %193, align 1
  %mode_info.i61.i = getelementptr inbounds %struct.amdgpu_device, ptr %190, i32 0, i32 79
  %198 = ptrtoint ptr %mode_info.i61.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mode_info.i61.i, align 8
  %call.i62.i = call i32 @amdgpu_atom_execute_table(ptr noundef %199, i32 noundef 41, ptr noundef nonnull %parameters.i60.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool.not.i63.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool.not.i63.i, label %if.then13.i69, label %pp_atomfwctrl_get_clk_information_by_clkid.exit67.i

pp_atomfwctrl_get_clk_information_by_clkid.exit67.i: ; preds = %if.end10.i67
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i60.i) #6
  br label %if.end14.i70

if.then13.i69:                                    ; preds = %if.end10.i67
  call void @__sanitizer_cov_trace_pc() #8
  %200 = ptrtoint ptr %parameters.i60.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %parameters.i60.i, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %201) #6
  %div.i64.i = udiv i32 %202, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i60.i) #6
  %ulVClk.i68 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 6
  %203 = ptrtoint ptr %ulVClk.i68 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %div.i64.i, ptr %ulVClk.i68, align 4
  br label %if.end14.i70

if.end14.i70:                                     ; preds = %if.then13.i69, %pp_atomfwctrl_get_clk_information_by_clkid.exit67.i
  %204 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameters.i68.i) #6
  %206 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i68.i, i32 0, i32 1
  %207 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i68.i, i32 0, i32 2
  %208 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, ptr %parameters.i68.i, i32 0, i32 3
  %209 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 5, ptr %206, align 1
  %210 = ptrtoint ptr %parameters.i68.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %parameters.i68.i, align 4
  %211 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %207, align 2
  %212 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %208, align 1
  %mode_info.i69.i = getelementptr inbounds %struct.amdgpu_device, ptr %205, i32 0, i32 79
  %213 = ptrtoint ptr %mode_info.i69.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mode_info.i69.i, align 8
  %call.i70.i = call i32 @amdgpu_atom_execute_table(ptr noundef %214, i32 noundef 41, ptr noundef nonnull %parameters.i68.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool.not.i71.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool.not.i71.i, label %if.then17.i72, label %pp_atomfwctrl_get_clk_information_by_clkid.exit75.i

pp_atomfwctrl_get_clk_information_by_clkid.exit75.i: ; preds = %if.end14.i70
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i68.i) #6
  br label %cleanup

if.then17.i72:                                    ; preds = %if.end14.i70
  call void @__sanitizer_cov_trace_pc() #8
  %215 = ptrtoint ptr %parameters.i68.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %parameters.i68.i, align 4
  %217 = call i32 @llvm.bswap.i32(i32 %216) #6
  %div.i72.i = udiv i32 %217, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameters.i68.i) #6
  %ulDClk.i71 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_values, i32 0, i32 7
  %218 = ptrtoint ptr %ulDClk.i71 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %div.i72.i, ptr %ulDClk.i71, align 4
  br label %cleanup

do.end21:                                         ; preds = %land.lhs.true12.do.end21_crit_edge, %if.end.do.end21_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then17.i72, %pp_atomfwctrl_get_clk_information_by_clkid.exit75.i, %if.then21.i, %pp_atomfwctrl_get_clk_information_by_clkid.exit89.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end21 ], [ -22, %do.end ], [ 0, %pp_atomfwctrl_get_clk_information_by_clkid.exit89.i ], [ 0, %if.then21.i ], [ 0, %pp_atomfwctrl_get_clk_information_by_clkid.exit75.i ], [ 0, %if.then17.i72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_atomfwctrl_get_smc_dpm_information(ptr nocapture noundef readonly %hwmgr, ptr noundef writeonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %liquid1_i2c_address = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %liquid1_i2c_address to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %liquid1_i2c_address, align 1
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %param, align 2
  %liquid2_i2c_address = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %liquid2_i2c_address to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %liquid2_i2c_address, align 1
  %liquid2_i2c_address3 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 1
  %7 = ptrtoint ptr %liquid2_i2c_address3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %liquid2_i2c_address3, align 1
  %vr_i2c_address = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %vr_i2c_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vr_i2c_address, align 1
  %vr_i2c_address4 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 2
  %10 = ptrtoint ptr %vr_i2c_address4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %vr_i2c_address4, align 2
  %plx_i2c_address = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %plx_i2c_address to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %plx_i2c_address, align 1
  %plx_i2c_address5 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 3
  %13 = ptrtoint ptr %plx_i2c_address5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %plx_i2c_address5, align 1
  %liquid_i2c_linescl = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %liquid_i2c_linescl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %liquid_i2c_linescl, align 1
  %liquid_i2c_linescl6 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 4
  %16 = ptrtoint ptr %liquid_i2c_linescl6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %liquid_i2c_linescl6, align 2
  %liquid_i2c_linesda = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %liquid_i2c_linesda to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %liquid_i2c_linesda, align 1
  %liquid_i2c_linesda7 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 5
  %19 = ptrtoint ptr %liquid_i2c_linesda7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %liquid_i2c_linesda7, align 1
  %vr_i2c_linescl = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 7
  %20 = ptrtoint ptr %vr_i2c_linescl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vr_i2c_linescl, align 1
  %vr_i2c_linescl8 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 6
  %22 = ptrtoint ptr %vr_i2c_linescl8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %vr_i2c_linescl8, align 2
  %vr_i2c_linesda = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 8
  %23 = ptrtoint ptr %vr_i2c_linesda to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vr_i2c_linesda, align 1
  %vr_i2c_linesda9 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 7
  %25 = ptrtoint ptr %vr_i2c_linesda9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %vr_i2c_linesda9, align 1
  %plx_i2c_linescl = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 9
  %26 = ptrtoint ptr %plx_i2c_linescl to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %plx_i2c_linescl, align 1
  %plx_i2c_linescl10 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 8
  %28 = ptrtoint ptr %plx_i2c_linescl10 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %plx_i2c_linescl10, align 2
  %plx_i2c_linesda = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 10
  %29 = ptrtoint ptr %plx_i2c_linesda to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %plx_i2c_linesda, align 1
  %plx_i2c_linesda11 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 9
  %31 = ptrtoint ptr %plx_i2c_linesda11 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %plx_i2c_linesda11, align 1
  %vrsensorpresent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 11
  %32 = ptrtoint ptr %vrsensorpresent to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vrsensorpresent, align 1
  %vrsensorpresent12 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 10
  %34 = ptrtoint ptr %vrsensorpresent12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %vrsensorpresent12, align 2
  %liquidsensorpresent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 12
  %35 = ptrtoint ptr %liquidsensorpresent to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %liquidsensorpresent, align 1
  %liquidsensorpresent13 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 11
  %37 = ptrtoint ptr %liquidsensorpresent13 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %liquidsensorpresent13, align 1
  %maxvoltagestepgfx = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 13
  %38 = ptrtoint ptr %maxvoltagestepgfx to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %maxvoltagestepgfx, align 1
  %maxvoltagestepgfx14 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 12
  %40 = ptrtoint ptr %maxvoltagestepgfx14 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %maxvoltagestepgfx14, align 2
  %maxvoltagestepsoc = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 14
  %41 = ptrtoint ptr %maxvoltagestepsoc to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %maxvoltagestepsoc, align 1
  %maxvoltagestepsoc15 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 13
  %43 = ptrtoint ptr %maxvoltagestepsoc15 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %maxvoltagestepsoc15, align 2
  %vddgfxvrmapping = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 15
  %44 = ptrtoint ptr %vddgfxvrmapping to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vddgfxvrmapping, align 1
  %vddgfxvrmapping16 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 14
  %46 = ptrtoint ptr %vddgfxvrmapping16 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %vddgfxvrmapping16, align 2
  %vddsocvrmapping = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 16
  %47 = ptrtoint ptr %vddsocvrmapping to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vddsocvrmapping, align 1
  %vddsocvrmapping17 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 15
  %49 = ptrtoint ptr %vddsocvrmapping17 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %vddsocvrmapping17, align 1
  %vddmem0vrmapping = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 17
  %50 = ptrtoint ptr %vddmem0vrmapping to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vddmem0vrmapping, align 1
  %vddmem0vrmapping18 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 16
  %52 = ptrtoint ptr %vddmem0vrmapping18 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %vddmem0vrmapping18, align 2
  %vddmem1vrmapping = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 18
  %53 = ptrtoint ptr %vddmem1vrmapping to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vddmem1vrmapping, align 1
  %vddmem1vrmapping19 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 17
  %55 = ptrtoint ptr %vddmem1vrmapping19 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %vddmem1vrmapping19, align 1
  %gfxulvphasesheddingmask = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 19
  %56 = ptrtoint ptr %gfxulvphasesheddingmask to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %gfxulvphasesheddingmask, align 1
  %gfxulvphasesheddingmask20 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 18
  %58 = ptrtoint ptr %gfxulvphasesheddingmask20 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %gfxulvphasesheddingmask20, align 2
  %soculvphasesheddingmask = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 20
  %59 = ptrtoint ptr %soculvphasesheddingmask to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %soculvphasesheddingmask, align 1
  %soculvphasesheddingmask21 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 19
  %61 = ptrtoint ptr %soculvphasesheddingmask21 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %soculvphasesheddingmask21, align 1
  %gfxmaxcurrent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 22
  %62 = ptrtoint ptr %gfxmaxcurrent to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %gfxmaxcurrent, align 1
  %gfxmaxcurrent22 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 20
  %64 = ptrtoint ptr %gfxmaxcurrent22 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %gfxmaxcurrent22, align 2
  %gfxoffset = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 23
  %65 = ptrtoint ptr %gfxoffset to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %gfxoffset, align 1
  %gfxoffset23 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 21
  %67 = ptrtoint ptr %gfxoffset23 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %gfxoffset23, align 2
  %padding_telemetrygfx = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 24
  %68 = ptrtoint ptr %padding_telemetrygfx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %padding_telemetrygfx, align 1
  %padding_telemetrygfx24 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 22
  %70 = ptrtoint ptr %padding_telemetrygfx24 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %padding_telemetrygfx24, align 1
  %socmaxcurrent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 25
  %71 = ptrtoint ptr %socmaxcurrent to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %socmaxcurrent, align 1
  %socmaxcurrent25 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 23
  %73 = ptrtoint ptr %socmaxcurrent25 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %socmaxcurrent25, align 2
  %socoffset = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 26
  %74 = ptrtoint ptr %socoffset to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %socoffset, align 1
  %socoffset26 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 24
  %76 = ptrtoint ptr %socoffset26 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %socoffset26, align 2
  %padding_telemetrysoc = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 27
  %77 = ptrtoint ptr %padding_telemetrysoc to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %padding_telemetrysoc, align 1
  %padding_telemetrysoc27 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 25
  %79 = ptrtoint ptr %padding_telemetrysoc27 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %padding_telemetrysoc27, align 1
  %mem0maxcurrent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 28
  %80 = ptrtoint ptr %mem0maxcurrent to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %mem0maxcurrent, align 1
  %mem0maxcurrent28 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 26
  %82 = ptrtoint ptr %mem0maxcurrent28 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %mem0maxcurrent28, align 2
  %mem0offset = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 29
  %83 = ptrtoint ptr %mem0offset to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %mem0offset, align 1
  %mem0offset29 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 27
  %85 = ptrtoint ptr %mem0offset29 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %mem0offset29, align 2
  %padding_telemetrymem0 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 30
  %86 = ptrtoint ptr %padding_telemetrymem0 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %padding_telemetrymem0, align 1
  %padding_telemetrymem030 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 28
  %88 = ptrtoint ptr %padding_telemetrymem030 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %padding_telemetrymem030, align 1
  %mem1maxcurrent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 31
  %89 = ptrtoint ptr %mem1maxcurrent to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %mem1maxcurrent, align 1
  %mem1maxcurrent31 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 29
  %91 = ptrtoint ptr %mem1maxcurrent31 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %mem1maxcurrent31, align 2
  %mem1offset = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 32
  %92 = ptrtoint ptr %mem1offset to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %mem1offset, align 1
  %mem1offset32 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 30
  %94 = ptrtoint ptr %mem1offset32 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %mem1offset32, align 2
  %padding_telemetrymem1 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 33
  %95 = ptrtoint ptr %padding_telemetrymem1 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %padding_telemetrymem1, align 1
  %padding_telemetrymem133 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 31
  %97 = ptrtoint ptr %padding_telemetrymem133 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %padding_telemetrymem133, align 1
  %acdcgpio = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 34
  %98 = ptrtoint ptr %acdcgpio to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %acdcgpio, align 1
  %acdcgpio34 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 32
  %100 = ptrtoint ptr %acdcgpio34 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %acdcgpio34, align 2
  %acdcpolarity = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 35
  %101 = ptrtoint ptr %acdcpolarity to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %acdcpolarity, align 1
  %acdcpolarity35 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 33
  %103 = ptrtoint ptr %acdcpolarity35 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %acdcpolarity35, align 1
  %vr0hotgpio = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 36
  %104 = ptrtoint ptr %vr0hotgpio to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %vr0hotgpio, align 1
  %vr0hotgpio36 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 34
  %106 = ptrtoint ptr %vr0hotgpio36 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %vr0hotgpio36, align 2
  %vr0hotpolarity = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 37
  %107 = ptrtoint ptr %vr0hotpolarity to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vr0hotpolarity, align 1
  %vr0hotpolarity37 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 35
  %109 = ptrtoint ptr %vr0hotpolarity37 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %vr0hotpolarity37, align 1
  %vr1hotgpio = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 38
  %110 = ptrtoint ptr %vr1hotgpio to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %vr1hotgpio, align 1
  %vr1hotgpio38 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 36
  %112 = ptrtoint ptr %vr1hotgpio38 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %vr1hotgpio38, align 2
  %vr1hotpolarity = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 39
  %113 = ptrtoint ptr %vr1hotpolarity to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %vr1hotpolarity, align 1
  %vr1hotpolarity39 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 37
  %115 = ptrtoint ptr %vr1hotpolarity39 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %vr1hotpolarity39, align 1
  %padding1 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 40
  %116 = ptrtoint ptr %padding1 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %padding1, align 1
  %padding140 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 38
  %118 = ptrtoint ptr %padding140 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %padding140, align 2
  %padding2 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 41
  %119 = ptrtoint ptr %padding2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %padding2, align 1
  %padding241 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 39
  %121 = ptrtoint ptr %padding241 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %padding241, align 1
  %ledpin0 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 42
  %122 = ptrtoint ptr %ledpin0 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ledpin0, align 1
  %ledpin042 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 40
  %124 = ptrtoint ptr %ledpin042 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %ledpin042, align 2
  %ledpin1 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 43
  %125 = ptrtoint ptr %ledpin1 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ledpin1, align 1
  %ledpin143 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 41
  %127 = ptrtoint ptr %ledpin143 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %ledpin143, align 1
  %ledpin2 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 44
  %128 = ptrtoint ptr %ledpin2 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ledpin2, align 1
  %ledpin244 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 42
  %130 = ptrtoint ptr %ledpin244 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %ledpin244, align 2
  %pllgfxclkspreadenabled = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 46
  %131 = ptrtoint ptr %pllgfxclkspreadenabled to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pllgfxclkspreadenabled, align 1
  %pllgfxclkspreadenabled45 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 43
  %133 = ptrtoint ptr %pllgfxclkspreadenabled45 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %pllgfxclkspreadenabled45, align 1
  %pllgfxclkspreadpercent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 47
  %134 = ptrtoint ptr %pllgfxclkspreadpercent to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %pllgfxclkspreadpercent, align 1
  %pllgfxclkspreadpercent46 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 44
  %136 = ptrtoint ptr %pllgfxclkspreadpercent46 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %pllgfxclkspreadpercent46, align 2
  %pllgfxclkspreadfreq = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 48
  %137 = ptrtoint ptr %pllgfxclkspreadfreq to i32
  call void @__asan_loadN_noabort(i32 %137, i32 2)
  %138 = load i16, ptr %pllgfxclkspreadfreq, align 1
  %pllgfxclkspreadfreq47 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 45
  %139 = ptrtoint ptr %pllgfxclkspreadfreq47 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %pllgfxclkspreadfreq47, align 2
  %uclkspreadenabled = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 49
  %140 = ptrtoint ptr %uclkspreadenabled to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %uclkspreadenabled, align 1
  %uclkspreadenabled48 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 46
  %142 = ptrtoint ptr %uclkspreadenabled48 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %uclkspreadenabled48, align 2
  %uclkspreadpercent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 50
  %143 = ptrtoint ptr %uclkspreadpercent to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %uclkspreadpercent, align 1
  %uclkspreadpercent49 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 47
  %145 = ptrtoint ptr %uclkspreadpercent49 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %uclkspreadpercent49, align 1
  %uclkspreadfreq = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 51
  %146 = ptrtoint ptr %uclkspreadfreq to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %uclkspreadfreq, align 1
  %uclkspreadfreq50 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 48
  %148 = ptrtoint ptr %uclkspreadfreq50 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %uclkspreadfreq50, align 2
  %socclkspreadenabled = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 52
  %149 = ptrtoint ptr %socclkspreadenabled to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %socclkspreadenabled, align 1
  %socclkspreadenabled51 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 49
  %151 = ptrtoint ptr %socclkspreadenabled51 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %socclkspreadenabled51, align 2
  %socclkspreadpercent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 53
  %152 = ptrtoint ptr %socclkspreadpercent to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %socclkspreadpercent, align 1
  %socclkspreadpercent52 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 50
  %154 = ptrtoint ptr %socclkspreadpercent52 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %socclkspreadpercent52, align 1
  %socclkspreadfreq = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 54
  %155 = ptrtoint ptr %socclkspreadfreq to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %socclkspreadfreq, align 1
  %socclkspreadfreq53 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 51
  %157 = ptrtoint ptr %socclkspreadfreq53 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %socclkspreadfreq53, align 2
  %acggfxclkspreadenabled = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 55
  %158 = ptrtoint ptr %acggfxclkspreadenabled to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %acggfxclkspreadenabled, align 1
  %acggfxclkspreadenabled54 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 52
  %160 = ptrtoint ptr %acggfxclkspreadenabled54 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %acggfxclkspreadenabled54, align 2
  %acggfxclkspreadpercent = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 56
  %161 = ptrtoint ptr %acggfxclkspreadpercent to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %acggfxclkspreadpercent, align 1
  %acggfxclkspreadpercent55 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 53
  %163 = ptrtoint ptr %acggfxclkspreadpercent55 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %acggfxclkspreadpercent55, align 1
  %acggfxclkspreadfreq = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 57
  %164 = ptrtoint ptr %acggfxclkspreadfreq to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %acggfxclkspreadfreq, align 1
  %acggfxclkspreadfreq56 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 54
  %166 = ptrtoint ptr %acggfxclkspreadfreq56 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %acggfxclkspreadfreq56, align 2
  %Vr2_I2C_address = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, ptr %call, i32 0, i32 58
  %167 = ptrtoint ptr %Vr2_I2C_address to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %Vr2_I2C_address, align 1
  %Vr2_I2C_address57 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %param, i32 0, i32 55
  %169 = ptrtoint ptr %Vr2_I2C_address57 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %Vr2_I2C_address57, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 85, i32 2}
!2 = !{ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.pp_atomfwctrl_is_voltage_controlled_by_gpio_v4, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pp_atomfwctrl_is_voltage_controlled_by_gpio_v4._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._rs, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 106, i32 2}
!11 = !{ptr @__func__.pp_atomfwctrl_get_voltage_table_v4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._rs.4, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 118, i32 3}
!16 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._rs.8, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 154, i32 3}
!21 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @pp_atomfwctrl_get_voltage_table_v4._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pp_atomfwctrl_get_pp_assign_pin._rs, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 217, i32 2}
!26 = !{ptr @__func__.pp_atomfwctrl_get_pp_assign_pin, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pp_atomfwctrl_get_pp_assign_pin._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @pp_atomfwctrl_get_pp_assign_pin._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 456, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pp_atomfwctrl_get_avfs_information._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pp_atomfwctrl_get_avfs_information._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 475, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pp_atomfwctrl_get_gpio_information._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pp_atomfwctrl_get_gpio_information._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 600, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pp_atomfwctrl_get_vbios_bootup_values._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @pp_atomfwctrl_get_vbios_bootup_values._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 613, i32 3}
!47 = !{ptr @pp_atomfwctrl_get_vbios_bootup_values._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pp_atomfwctrl_get_vbios_bootup_values._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 631, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pp_atomfwctrl_get_smc_dpm_information._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @pp_atomfwctrl_get_smc_dpm_information._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @pp_atomfwctrl_get_voltage_info_table._rs, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 64, i32 2}
!56 = !{ptr @__func__.pp_atomfwctrl_get_voltage_info_table, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pp_atomfwctrl_get_voltage_info_table._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @pp_atomfwctrl_get_voltage_info_table._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pp_atomfwctrl_get_gpio_lookup_table._rs, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c", i32 171, i32 2}
!62 = !{ptr @__func__.pp_atomfwctrl_get_gpio_lookup_table, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pp_atomfwctrl_get_gpio_lookup_table._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @pp_atomfwctrl_get_gpio_lookup_table._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
