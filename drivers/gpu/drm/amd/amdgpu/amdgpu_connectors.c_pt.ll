; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mode_size = type { i32, i32 }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_display_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_connector_atom_dig = type { [15 x i8], [16 x i8], i8, i32, i32, i8 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.88 = type { i32, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
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
%struct.amdgpu_mes = type { ptr, i32, i32, i32, i64, i64, %struct.amdgpu_ring, ptr, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i32, [8 x i32], [2 x i32], [2 x i32], [5 x i32], i32, i64, ptr, i32, i64, ptr, ptr }
%struct.amdgpu_df = type { %struct.amdgpu_df_hash_status, ptr }
%struct.amdgpu_df_hash_status = type { i8, i8, i8 }
%struct.amdgpu_mca = type { ptr, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras }
%struct.amdgpu_mca_ras = type { ptr, ptr }
%struct.amdgpu_ip_block = type { %struct.amdgpu_ip_block_status, ptr }
%struct.amdgpu_ip_block_status = type { i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_i2c_chan = type { %struct.i2c_adapter, ptr, %struct.i2c_algo_bit_data, %struct.amdgpu_i2c_bus_rec, %struct.drm_dp_aux, i8, %struct.mutex }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.100 }
%union.anon.100 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: HDMI deep color %d bpc unsupported. Using 12 bpc.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: hdmi mode dotclock %d kHz, max tmds input clock %d kHz.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: HDMI deep color 12 bpc exceeds max tmds clock. Using %d bpc.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: HDMI deep color 10 bpc exceeds max tmds clock. Using %d bpc.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Required max tmds clock for HDMI deep color missing. Using 8 bpc.\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_deep_color = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: Deep color disabled. Set amdgpu module param deep_color=1 to enable.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Display bpc=%d, returned bpc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failed to assign router i2c bus! Check dmesg for i2c errors.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DP: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_connector_dp_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @amdgpu_connector_dp_detect, ptr @amdgpu_connector_dvi_force, ptr @drm_helper_probe_single_connector_modes, ptr @amdgpu_connector_set_property, ptr @amdgpu_connector_late_register, ptr @amdgpu_connector_unregister, ptr @amdgpu_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amdgpu_connector_dp_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @amdgpu_connector_dp_get_modes, ptr null, ptr @amdgpu_connector_dp_mode_valid, ptr null, ptr @amdgpu_connector_dvi_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@amdgpu_audio = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_connector_edp_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @amdgpu_connector_dp_detect, ptr @amdgpu_connector_dvi_force, ptr @drm_helper_probe_single_connector_modes, ptr @amdgpu_connector_set_lcd_property, ptr @amdgpu_connector_late_register, ptr @amdgpu_connector_unregister, ptr @amdgpu_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_connector_vga_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @amdgpu_connector_vga_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr @amdgpu_connector_set_property, ptr null, ptr @amdgpu_connector_unregister, ptr @amdgpu_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amdgpu_connector_vga_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @amdgpu_connector_vga_get_modes, ptr null, ptr @amdgpu_connector_vga_mode_valid, ptr null, ptr @amdgpu_connector_best_single_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_connector_dvi_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @amdgpu_connector_dvi_detect, ptr @amdgpu_connector_dvi_force, ptr @drm_helper_probe_single_connector_modes, ptr @amdgpu_connector_set_property, ptr null, ptr @amdgpu_connector_unregister, ptr @amdgpu_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amdgpu_connector_dvi_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @amdgpu_connector_vga_get_modes, ptr null, ptr @amdgpu_connector_dvi_mode_valid, ptr null, ptr @amdgpu_connector_dvi_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_connector_lvds_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @amdgpu_connector_lvds_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr @amdgpu_connector_set_lcd_property, ptr null, ptr @amdgpu_connector_unregister, ptr @amdgpu_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amdgpu_connector_lvds_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @amdgpu_connector_lvds_get_modes, ptr null, ptr @amdgpu_connector_lvds_mode_valid, ptr null, ptr @amdgpu_connector_best_single_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Determined LVDS native mode details from EDID\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No LVDS native mode details, disabling RMX\0A\00", [52 x i8] zeroinitializer }, align 32
@amdgpu_connector_add_common_modes.common_modes = internal constant { [17 x %struct.mode_size], [56 x i8] } { [17 x %struct.mode_size] [%struct.mode_size { i32 640, i32 480 }, %struct.mode_size { i32 720, i32 480 }, %struct.mode_size { i32 800, i32 600 }, %struct.mode_size { i32 848, i32 480 }, %struct.mode_size { i32 1024, i32 768 }, %struct.mode_size { i32 1152, i32 768 }, %struct.mode_size { i32 1280, i32 720 }, %struct.mode_size { i32 1280, i32 800 }, %struct.mode_size { i32 1280, i32 854 }, %struct.mode_size { i32 1280, i32 960 }, %struct.mode_size { i32 1280, i32 1024 }, %struct.mode_size { i32 1440, i32 900 }, %struct.mode_size { i32 1400, i32 1050 }, %struct.mode_size { i32 1680, i32 1050 }, %struct.mode_size { i32 1600, i32 1200 }, %struct.mode_size { i32 1920, i32 1080 }, %struct.mode_size { i32 1920, i32 1200 }], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adding native panel mode %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Adding cvt approximation of native panel mode %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: probed a monitor but no|invalid EDID\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"load_detect %x returned: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 7, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 7, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.22 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 11]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 13]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 160, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 173, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 184, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 190, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 195, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 202, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 207, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1611, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1625, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant [26 x i8] c"amdgpu_connector_dp_funcs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1509, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [33 x i8] c"amdgpu_connector_dp_helper_funcs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1503, i32 48 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"amdgpu_connector_edp_funcs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1520, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1717, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"amdgpu_connector_vga_funcs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 942, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant [34 x i8] c"amdgpu_connector_vga_helper_funcs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 936, i32 48 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1742, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1772, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"amdgpu_connector_dvi_funcs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1207, i32 41 }
@___asan_gen_.90 = private unnamed_addr constant [34 x i8] c"amdgpu_connector_dvi_helper_funcs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1201, i32 48 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1827, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1947, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"amdgpu_connector_lvds_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 824, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [35 x i8] c"amdgpu_connector_lvds_helper_funcs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 818, i32 48 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 640, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 647, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"common_modes\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 430, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 399, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 414, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 790, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 888, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [50 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1110, i32 6 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @amdgpu_connector_dp_funcs, ptr @amdgpu_connector_dp_helper_funcs, ptr @amdgpu_connector_edp_funcs, ptr @.str.9, ptr @amdgpu_connector_vga_funcs, ptr @amdgpu_connector_vga_helper_funcs, ptr @.str.10, ptr @.str.11, ptr @amdgpu_connector_dvi_funcs, ptr @amdgpu_connector_dvi_helper_funcs, ptr @.str.12, ptr @.str.13, ptr @amdgpu_connector_lvds_funcs, ptr @amdgpu_connector_lvds_helper_funcs, ptr @.str.14, ptr @.str.15, ptr @amdgpu_connector_add_common_modes.common_modes, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_dp_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_dp_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_edp_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_vga_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_vga_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_dvi_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_dvi_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_lvds_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_lvds_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_connector_add_common_modes.common_modes to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_connector_hotplug(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 11
  %2 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp = icmp eq i32 %3, 255
  br i1 %cmp, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end:                                           ; preds = %entry
  %funcs = getelementptr i8, ptr %1, i32 22416
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %hpd_set_polarity = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %hpd_set_polarity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hpd_set_polarity, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef %3) #8
  %dpms = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 34
  %8 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dpms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup37_crit_edge

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end7:                                          ; preds = %if.end
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %10 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp8 = icmp eq i32 %11, 10
  br i1 %cmp8, label %if.then9, label %if.end7.cleanup37_crit_edge

if.end7.cleanup37_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.then9:                                         ; preds = %if.end7
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %12 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_sink_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %15)
  %cmp10.not = icmp eq i8 %15, 19
  br i1 %cmp10.not, label %if.end13, label %if.then9.cleanup37_crit_edge

if.then9.cleanup37_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end13:                                         ; preds = %if.then9
  %call14 = tail call zeroext i8 @amdgpu_atombios_dp_get_sinktype(ptr noundef %connector) #8
  %16 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call14, ptr %dp_sink_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %call14)
  %cmp18 = icmp eq i8 %call14, 19
  br i1 %cmp18, label %land.lhs.true, label %if.end13.cleanup37_crit_edge

if.end13.cleanup37_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

land.lhs.true:                                    ; preds = %if.end13
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 8
  %hpd_sense = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %hpd_sense to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hpd_sense, align 4
  %21 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hpd, align 4
  %call24 = tail call zeroext i1 %20(ptr noundef %add.ptr.i, i32 noundef %22) #8
  br i1 %call24, label %land.lhs.true26, label %land.lhs.true.cleanup37_crit_edge

land.lhs.true.cleanup37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

land.lhs.true26:                                  ; preds = %land.lhs.true
  %call27 = tail call zeroext i1 @amdgpu_atombios_dp_needs_link_train(ptr noundef %connector) #8
  br i1 %call27, label %if.then29, label %land.lhs.true26.cleanup37_crit_edge

land.lhs.true26.cleanup37_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.then29:                                        ; preds = %land.lhs.true26
  %call30 = tail call i32 @amdgpu_atombios_dp_get_dpcd(ptr noundef %connector) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.end32, label %if.then29.cleanup37_crit_edge

if.then29.cleanup37_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end32:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 @drm_helper_connector_dpms(ptr noundef %connector, i32 noundef 3) #8
  %call34 = tail call i32 @drm_helper_connector_dpms(ptr noundef %connector, i32 noundef 0) #8
  br label %cleanup37

cleanup37:                                        ; preds = %if.end32, %if.then29.cleanup37_crit_edge, %land.lhs.true26.cleanup37_crit_edge, %land.lhs.true.cleanup37_crit_edge, %if.end13.cleanup37_crit_edge, %if.then9.cleanup37_crit_edge, %if.end7.cleanup37_crit_edge, %if.end.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @amdgpu_atombios_dp_get_sinktype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_dp_needs_link_train(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_dp_get_dpcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_connector_get_monitor_bpc(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %0 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 12, label %entry.sw.bb_crit_edge197
    i32 3, label %entry.sw.bb11_crit_edge
    i32 11, label %entry.sw.bb11_crit_edge198
    i32 10, label %sw.bb24
    i32 14, label %entry.sw.bb44_crit_edge
    i32 7, label %entry.sw.bb44_crit_edge199
  ]

entry.sw.bb44_crit_edge199:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44

entry.sw.bb44_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44

entry.sw.bb11_crit_edge198:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb_crit_edge197:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge197
  %use_digital = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %3 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %use_digital, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 11
  %5 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_hdmi, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then.sw.epilog_crit_edge, label %if.then2

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bpc4 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %7 = ptrtoint ptr %bpc4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpc4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool5.not, i32 8, i32 %8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge198
  %is_hdmi13 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 11
  %9 = ptrtoint ptr %is_hdmi13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_hdmi13, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  br i1 %tobool14.not, label %sw.bb11.sw.epilog_crit_edge, label %if.then15

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %bpc17 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %11 = ptrtoint ptr %bpc17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bpc17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  %spec.select180 = select i1 %tobool18.not, i32 8, i32 %12
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %13 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %16, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb24.if.then35_crit_edge, label %lor.lhs.false30

sw.bb24.if.then35_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false30:                                  ; preds = %sw.bb24
  %is_hdmi32 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 11
  %17 = ptrtoint ptr %is_hdmi32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_hdmi32, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not = icmp eq i8 %18, 0
  br i1 %tobool33.not, label %lor.lhs.false30.sw.epilog_crit_edge, label %lor.lhs.false30.if.then35_crit_edge

lor.lhs.false30.if.then35_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false30.sw.epilog_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then35:                                        ; preds = %lor.lhs.false30.if.then35_crit_edge, %sw.bb24.if.then35_crit_edge
  %bpc37 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %19 = ptrtoint ptr %bpc37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bpc37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  %spec.select181 = select i1 %tobool38.not, i32 8, i32 %20
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry.sw.bb44_crit_edge, %entry.sw.bb44_crit_edge199
  %bpc46 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %21 = ptrtoint ptr %bpc46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bpc46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool47.not = icmp eq i32 %22, 0
  br i1 %tobool47.not, label %if.else, label %sw.bb44.sw.epilog_crit_edge

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %23 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %helper_private, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %best_encoder, align 4
  %call = tail call ptr %26(ptr noundef %connector) #8
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %call, i32 0, i32 12
  %27 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enc_priv, align 4
  %lcd_misc = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %lcd_misc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lcd_misc, align 4
  %and = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  %spec.select183 = select i1 %tobool54.not, i32 8, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb44.sw.epilog_crit_edge, %if.then35, %lor.lhs.false30.sw.epilog_crit_edge, %if.then15, %sw.bb11.sw.epilog_crit_edge, %if.then2, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %bpc.1 = phi i32 [ 8, %entry.sw.epilog_crit_edge ], [ 8, %lor.lhs.false30.sw.epilog_crit_edge ], [ 8, %sw.bb11.sw.epilog_crit_edge ], [ 8, %if.then.sw.epilog_crit_edge ], [ 8, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %if.then2 ], [ %spec.select180, %if.then15 ], [ %spec.select181, %if.then35 ], [ %22, %sw.bb44.sw.epilog_crit_edge ], [ %spec.select183, %if.else ]
  %is_hdmi65 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 11
  %31 = ptrtoint ptr %is_hdmi65 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_hdmi65, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool66.not = icmp eq i8 %32, 0
  br i1 %tobool66.not, label %sw.epilog.if.end116_crit_edge, label %if.then67

sw.epilog.if.end116_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then67:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bpc.1)
  %cmp68 = icmp sgt i32 %bpc.1, 12
  br i1 %cmp68, label %if.end71.thread, label %if.end71

if.end71:                                         ; preds = %if.then67
  %max_tmds_clock73 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 9
  %33 = ptrtoint ptr %max_tmds_clock73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_tmds_clock73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp74 = icmp sgt i32 %34, 0
  br i1 %cmp74, label %if.end71.if.then76_crit_edge, label %if.else109

if.end71.if.then76_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end71.thread:                                  ; preds = %if.then67
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef %36, i32 noundef %bpc.1) #8
  %max_tmds_clock73187 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 9
  %37 = ptrtoint ptr %max_tmds_clock73187 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_tmds_clock73187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp74188 = icmp sgt i32 %38, 0
  br i1 %cmp74188, label %if.end71.thread.if.then76_crit_edge, label %if.end71.thread.if.then112_crit_edge

if.end71.thread.if.then112_crit_edge:             ; preds = %if.end71.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end71.thread.if.then76_crit_edge:              ; preds = %if.end71.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then76:                                        ; preds = %if.end71.thread.if.then76_crit_edge, %if.end71.if.then76_crit_edge
  %39 = phi i32 [ %38, %if.end71.thread.if.then76_crit_edge ], [ %34, %if.end71.if.then76_crit_edge ]
  %bpc.2189 = phi i32 [ 12, %if.end71.thread.if.then76_crit_edge ], [ %bpc.1, %if.end71.if.then76_crit_edge ]
  %pixelclock_for_modeset = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 16
  %40 = ptrtoint ptr %pixelclock_for_modeset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pixelclock_for_modeset, align 4
  %name79 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %42 = ptrtoint ptr %name79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name79, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %43, i32 noundef %41, i32 noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bpc.2189)
  %cmp80 = icmp eq i32 %bpc.2189, 12
  br i1 %cmp80, label %land.lhs.true, label %if.then76.if.end98_crit_edge

if.then76.if.end98_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

land.lhs.true:                                    ; preds = %if.then76
  %mul = mul i32 %41, 3
  %div178 = lshr i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div178, i32 %39)
  %cmp82 = icmp ugt i32 %div178, %39
  br i1 %cmp82, label %if.then84, label %land.lhs.true.if.end116_crit_edge

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then84:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %edid_hdmi_dc_modes = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 14
  %44 = ptrtoint ptr %edid_hdmi_dc_modes to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %edid_hdmi_dc_modes, align 4
  %46 = and i8 %45, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool88.not = icmp eq i8 %46, 0
  %mul90 = mul i32 %41, 5
  %div91179 = lshr i32 %mul90, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div91179, i32 %39)
  %cmp92.not = icmp ugt i32 %div91179, %39
  %or.cond = or i1 %cmp92.not, %tobool88.not
  %bpc.3 = select i1 %or.cond, i32 8, i32 10
  %47 = ptrtoint ptr %name79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name79, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %48, i32 noundef %bpc.3) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then84, %if.then76.if.end98_crit_edge
  %bpc.4 = phi i32 [ %bpc.3, %if.then84 ], [ %bpc.2189, %if.then76.if.end98_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bpc.4)
  %cmp99 = icmp eq i32 %bpc.4, 10
  br i1 %cmp99, label %land.lhs.true101, label %if.end98.if.end116_crit_edge

if.end98.if.end116_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

land.lhs.true101:                                 ; preds = %if.end98
  %mul102 = mul i32 %41, 5
  %div103177 = lshr i32 %mul102, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div103177, i32 %39)
  %cmp104 = icmp ugt i32 %div103177, %39
  br i1 %cmp104, label %if.then106, label %land.lhs.true101.if.end116_crit_edge

land.lhs.true101.if.end116_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then106:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %name79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name79, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %50, i32 noundef 8) #8
  br label %if.end124

if.else109:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpc.1)
  %cmp110 = icmp sgt i32 %bpc.1, 8
  br i1 %cmp110, label %if.else109.if.then112_crit_edge, label %if.else109.if.end124_crit_edge

if.else109.if.end124_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.else109.if.then112_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then112:                                       ; preds = %if.else109.if.then112_crit_edge, %if.end71.thread.if.then112_crit_edge
  %name113 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %51 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name113, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %52) #8
  br label %if.end124

if.end116:                                        ; preds = %land.lhs.true101.if.end116_crit_edge, %if.end98.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge, %sw.epilog.if.end116_crit_edge
  %bpc.5 = phi i32 [ 10, %land.lhs.true101.if.end116_crit_edge ], [ %bpc.4, %if.end98.if.end116_crit_edge ], [ %bpc.1, %sw.epilog.if.end116_crit_edge ], [ 12, %land.lhs.true.if.end116_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_deep_color to i32))
  %53 = load i32, ptr @amdgpu_deep_color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp117 = icmp eq i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpc.5)
  %cmp120 = icmp sgt i32 %bpc.5, 8
  %or.cond182 = select i1 %cmp117, i1 %cmp120, i1 false
  br i1 %or.cond182, label %if.then122, label %if.end116.if.end124_crit_edge

if.end116.if.end124_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then122:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %name123 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %54 = ptrtoint ptr %name123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name123, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %55) #8
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end116.if.end124_crit_edge, %if.then112, %if.else109.if.end124_crit_edge, %if.then106
  %bpc.6 = phi i32 [ 8, %if.then122 ], [ %bpc.5, %if.end116.if.end124_crit_edge ], [ %bpc.1, %if.else109.if.end124_crit_edge ], [ 8, %if.then112 ], [ 8, %if.then106 ]
  %name125 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %56 = ptrtoint ptr %name125 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name125, align 4
  %bpc127 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %58 = ptrtoint ptr %bpc127 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bpc127, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %57, i32 noundef %59, i32 noundef %bpc.6) #8
  ret i32 %bpc.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_connector_edid(ptr nocapture noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %edid_blob_ptr = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %0 = ptrtoint ptr %edid_blob_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid_blob_ptr, align 4
  %edid = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else.if.end9_crit_edge, label %if.then3

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %length = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %call = tail call ptr @kmemdup(ptr noundef %5, i32 noundef %7, i32 noundef 3264) #8
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then3.if.end9_crit_edge, label %if.then6

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %edid, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then3.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %9 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.end9 ], [ %3, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(ptr nocapture noundef readonly %connector) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %2 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20 = load ptr, ptr %encoder_list, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %encoder_list
  br i1 %cmp.not21, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %3 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn22 = phi ptr [ %.pn20, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn22, i32 36
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and = and i32 %shl.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %encoder_id = getelementptr i8, ptr %.pn22, i32 72
  %7 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoder_id, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %9)
  %switch = icmp eq i32 %9, 34
  br i1 %switch, label %sw.bb, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %8 to i16
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_connector_is_dp12_capable(ptr nocapture noundef readonly %connector) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %default_dispclk = getelementptr i8, ptr %1, i32 3732
  %2 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %default_dispclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53899, i32 %3)
  %cmp = icmp ugt i32 %3, 53899
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %4 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn24.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %encoder_list.i
  br i1 %cmp.not25.i, label %land.lhs.true.if.end_crit_edge, label %for.body.lr.ph.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn27.i = phi ptr [ %.pn24.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %found.0.off026.i = phi i1 [ false, %for.body.lr.ph.i ], [ %found.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn27.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %caps.i = getelementptr i8, ptr %.pn27.i, i32 230
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %caps.i, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not.i = icmp ne i16 %11, 0
  %spec.select.i = select i1 %tobool8.not.i, i1 true, i1 %found.0.off026.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %found.1.off0.i = phi i1 [ %found.0.off026.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %12 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %amdgpu_connector_encoder_is_hbr2.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

amdgpu_connector_encoder_is_hbr2.exit:            ; preds = %for.inc.i
  br i1 %found.1.off0.i, label %amdgpu_connector_encoder_is_hbr2.exit.cleanup_crit_edge, label %amdgpu_connector_encoder_is_hbr2.exit.if.end_crit_edge

amdgpu_connector_encoder_is_hbr2.exit.if.end_crit_edge: ; preds = %amdgpu_connector_encoder_is_hbr2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

amdgpu_connector_encoder_is_hbr2.exit.cleanup_crit_edge: ; preds = %amdgpu_connector_encoder_is_hbr2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %amdgpu_connector_encoder_is_hbr2.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %amdgpu_connector_encoder_is_hbr2.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %amdgpu_connector_encoder_is_hbr2.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_connector_add(ptr noundef %adev, i32 noundef %connector_id, i32 noundef %supported_device, i32 noundef %connector_type, ptr noundef %i2c_bus, i16 noundef zeroext %connector_object_id, ptr nocapture noundef readonly %hpd, ptr noundef %router) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #8
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !72
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connector_type)
  %cmp = icmp eq i32 %connector_type, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #8
  %call1808 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #8
  %tobool.not809 = icmp eq ptr %call1808, null
  br i1 %tobool.not809, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %i2c_id10 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, ptr %i2c_bus, i32 0, i32 1
  %ddc_valid = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %call1811 = phi ptr [ %call1808, %while.body.lr.ph ], [ %call1, %if.end29.while.body_crit_edge ]
  %shared_ddc.0.off0810 = phi i1 [ false, %while.body.lr.ph ], [ %shared_ddc.2.off0, %if.end29.while.body_crit_edge ]
  %connector_id2 = getelementptr inbounds %struct.amdgpu_connector, ptr %call1811, i32 0, i32 1
  %3 = ptrtoint ptr %connector_id2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connector_id2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %connector_id)
  %cmp3 = icmp eq i32 %4, %connector_id
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %devices = getelementptr inbounds %struct.amdgpu_connector, ptr %call1811, i32 0, i32 2
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devices, align 4
  %or = or i32 %6, %supported_device
  store i32 %or, ptr %devices, align 4
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #8
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %call1811, i32 0, i32 3
  %7 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddc_bus, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.if.end29_crit_edge, label %land.lhs.true

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end5
  %9 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end29_crit_edge, label %if.then8

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then8:                                         ; preds = %land.lhs.true
  %i2c_id = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %8, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_id, align 1
  %13 = ptrtoint ptr %i2c_id10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_id10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp12 = icmp eq i8 %12, %14
  br i1 %cmp12, label %if.then14, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %shared_ddc15 = getelementptr inbounds %struct.amdgpu_connector, ptr %call1811, i32 0, i32 4
  %15 = ptrtoint ptr %shared_ddc15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %shared_ddc15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then8.if.end16_crit_edge
  %shared_ddc.1.off0 = phi i1 [ true, %if.then14 ], [ %shared_ddc.0.off0810, %if.then8.if.end16_crit_edge ]
  %router_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %call1811, i32 0, i32 13
  %16 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %router_bus, align 8
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.end16.if.end29_crit_edge, label %land.lhs.true18

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true18:                                  ; preds = %if.end16
  %18 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ddc_valid, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool19.not = icmp eq i8 %19, 0
  br i1 %tobool19.not, label %land.lhs.true18.if.end29_crit_edge, label %land.lhs.true21

land.lhs.true18.if.end29_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %router22 = getelementptr inbounds %struct.amdgpu_connector, ptr %call1811, i32 0, i32 12
  %20 = ptrtoint ptr %router22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %router22, align 4
  %22 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %router, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp24 = icmp eq i32 %21, %23
  br i1 %cmp24, label %if.then26, label %land.lhs.true21.if.end29_crit_edge

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %shared_ddc27 = getelementptr inbounds %struct.amdgpu_connector, ptr %call1811, i32 0, i32 4
  %24 = ptrtoint ptr %shared_ddc27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %shared_ddc27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true21.if.end29_crit_edge, %land.lhs.true18.if.end29_crit_edge, %if.end16.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end5.if.end29_crit_edge
  %shared_ddc.2.off0 = phi i1 [ false, %if.then26 ], [ %shared_ddc.1.off0, %land.lhs.true21.if.end29_crit_edge ], [ %shared_ddc.1.off0, %land.lhs.true18.if.end29_crit_edge ], [ %shared_ddc.1.off0, %if.end16.if.end29_crit_edge ], [ %shared_ddc.0.off0810, %land.lhs.true.if.end29_crit_edge ], [ %shared_ddc.0.off0810, %if.end5.if.end29_crit_edge ]
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end29.while.end_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %if.end.while.end_crit_edge
  %shared_ddc.0.off0.lcssa = phi i1 [ false, %if.end.while.end_crit_edge ], [ %shared_ddc.2.off0, %if.end29.while.end_crit_edge ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #8
  %encoder_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 16
  %25 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn813 = load ptr, ptr %encoder_list, align 4
  %cmp35.not814 = icmp eq ptr %.pn813, %encoder_list
  br i1 %cmp35.not814, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end.for.body_crit_edge
  %.pn816 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn813, %while.end.for.body_crit_edge ]
  %is_dp_bridge.0.off0815 = phi i1 [ %is_dp_bridge.1.off0, %for.inc.for.body_crit_edge ], [ false, %while.end.for.body_crit_edge ]
  %devices40 = getelementptr i8, ptr %.pn816, i32 76
  %26 = ptrtoint ptr %devices40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devices40, align 4
  %and = and i32 %27, %supported_device
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %for.body.for.inc_crit_edge, label %if.then42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %encoder_id = getelementptr i8, ptr %.pn816, i32 72
  %28 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %encoder_id, align 4
  %30 = and i32 %29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %30)
  %switch = icmp eq i32 %30, 34
  %spec.select = select i1 %switch, i1 true, i1 %is_dp_bridge.0.off0815
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %for.body.for.inc_crit_edge
  %is_dp_bridge.1.off0 = phi i1 [ %is_dp_bridge.0.off0815, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then42 ]
  %31 = ptrtoint ptr %.pn816 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn816, align 4
  %cmp35.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp35.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  %is_dp_bridge.0.off0.lcssa = phi i1 [ false, %while.end.for.end_crit_edge ], [ %is_dp_bridge.1.off0, %for.inc.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 1200) #11
  %tobool50.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool50.not, label %for.end.cleanup_crit_edge, label %if.end52

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %for.end
  %connector_id53 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %connector_id53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %connector_id, ptr %connector_id53, align 8
  %devices54 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %devices54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %supported_device, ptr %devices54, align 4
  %shared_ddc56 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 4
  %frombool = zext i1 %shared_ddc.0.off0.lcssa to i8
  %35 = ptrtoint ptr %shared_ddc56 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool, ptr %shared_ddc56, align 4
  %connector_object_id57 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %connector_object_id57 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %connector_object_id, ptr %connector_object_id57, align 2
  %hpd58 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 11
  %37 = call ptr @memcpy(ptr %hpd58, ptr %hpd, i32 24)
  %router59 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 12
  %38 = call ptr @memcpy(ptr %router59, ptr %router, i32 92)
  %ddc_valid60 = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 3
  %39 = ptrtoint ptr %ddc_valid60 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ddc_valid60, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool61.not = icmp eq i8 %40, 0
  br i1 %tobool61.not, label %lor.lhs.false, label %if.end52.if.then65_crit_edge

if.end52.if.then65_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.end52
  %cd_valid = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 7
  %41 = ptrtoint ptr %cd_valid to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cd_valid, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool63.not = icmp eq i8 %42, 0
  br i1 %tobool63.not, label %lor.lhs.false.if.end72_crit_edge, label %lor.lhs.false.if.then65_crit_edge

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then65:                                        ; preds = %lor.lhs.false.if.then65_crit_edge, %if.end52.if.then65_crit_edge
  %i2c_info = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 1
  %call66 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_info) #8
  %router_bus67 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 13
  %43 = ptrtoint ptr %router_bus67 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call66, ptr %router_bus67, align 8
  %tobool69.not = icmp eq ptr %call66, null
  br i1 %tobool69.not, label %if.then70, label %if.then65.if.end72_crit_edge

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then65.if.end72_crit_edge, %lor.lhs.false.if.end72_crit_edge
  br i1 %is_dp_bridge.0.off0.lcssa, label %if.then74, label %if.else155

if.then74:                                        ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i781 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 44) #11
  %tobool76.not = icmp eq ptr %call7.i.i781, null
  br i1 %tobool76.not, label %if.then74.failed_crit_edge, label %if.end78

if.then74.failed_crit_edge:                       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end78:                                         ; preds = %if.then74
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 7
  %45 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i781, ptr %con_priv, align 4
  %46 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool80.not = icmp eq i8 %47, 0
  br i1 %tobool80.not, label %if.end78.if.end89_crit_edge, label %if.then81

if.end78.if.end89_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then81:                                        ; preds = %if.end78
  %call82 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus83 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %ddc_bus83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call82, ptr %ddc_bus83, align 8
  %tobool85.not = icmp eq ptr %call82, null
  br i1 %tobool85.not, label %if.else, label %if.then81.if.end89_crit_edge

if.then81.if.end89_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.else:                                          ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then81.if.end89_crit_edge, %if.end78.if.end89_crit_edge
  %has_aux.0 = phi i1 [ false, %if.else ], [ false, %if.end78.if.end89_crit_edge ], [ true, %if.then81.if.end89_crit_edge ]
  %ddc.0 = phi ptr [ null, %if.else ], [ null, %if.end78.if.end89_crit_edge ], [ %call82, %if.then81.if.end89_crit_edge ]
  %49 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %connector_type, label %sw.default91 [
    i32 14, label %if.end89.sw.bb144_crit_edge
    i32 7, label %if.end89.sw.bb144_crit_edge824
    i32 2, label %if.end89.sw.bb100_crit_edge
    i32 3, label %if.end89.sw.bb100_crit_edge825
    i32 11, label %if.end89.sw.bb100_crit_edge826
    i32 12, label %if.end89.sw.bb100_crit_edge827
    i32 10, label %if.end89.sw.bb100_crit_edge828
  ]

if.end89.sw.bb100_crit_edge828:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb100

if.end89.sw.bb100_crit_edge827:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb100

if.end89.sw.bb100_crit_edge826:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb100

if.end89.sw.bb100_crit_edge825:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb100

if.end89.sw.bb100_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb100

if.end89.sw.bb144_crit_edge824:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb144

if.end89.sw.bb144_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb144

sw.default91:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_dp_funcs, i32 noundef %connector_type, ptr noundef %ddc.0) #8
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %50 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @amdgpu_connector_dp_helper_funcs, ptr %helper_private.i, align 4
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %51 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %interlace_allowed, align 8
  %doublescan_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %doublescan_allowed, align 1
  %dac_load_detect = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %dac_load_detect, align 8
  %base96 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 7
  %54 = ptrtoint ptr %load_detect_property to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %load_detect_property, align 4
  call void @drm_object_attach_property(ptr noundef %base96, ptr noundef %55, i64 noundef 1) #8
  %scaling_mode_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %56 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scaling_mode_property, align 4
  call void @drm_object_attach_property(ptr noundef %base96, ptr noundef %57, i64 noundef 0) #8
  br label %if.end461

sw.bb100:                                         ; preds = %if.end89.sw.bb100_crit_edge, %if.end89.sw.bb100_crit_edge825, %if.end89.sw.bb100_crit_edge826, %if.end89.sw.bb100_crit_edge827, %if.end89.sw.bb100_crit_edge828
  %call102 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_dp_funcs, i32 noundef %connector_type, ptr noundef %ddc.0) #8
  %helper_private.i782 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %58 = ptrtoint ptr %helper_private.i782 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @amdgpu_connector_dp_helper_funcs, ptr %helper_private.i782, align 4
  %base105 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %underscan_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 8
  %59 = ptrtoint ptr %underscan_property to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %underscan_property, align 8
  call void @drm_object_attach_property(ptr noundef %base105, ptr noundef %60, i64 noundef 0) #8
  %underscan_hborder_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 9
  %61 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %underscan_hborder_property, align 4
  call void @drm_object_attach_property(ptr noundef %base105, ptr noundef %62, i64 noundef 0) #8
  %underscan_vborder_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 10
  %63 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %underscan_vborder_property, align 8
  call void @drm_object_attach_property(ptr noundef %base105, ptr noundef %64, i64 noundef 0) #8
  %scaling_mode_property116 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %65 = ptrtoint ptr %scaling_mode_property116 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scaling_mode_property116, align 4
  call void @drm_object_attach_property(ptr noundef %base105, ptr noundef %66, i64 noundef 0) #8
  %dither_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 12
  %67 = ptrtoint ptr %dither_property to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dither_property, align 8
  call void @drm_object_attach_property(ptr noundef %base105, ptr noundef %68, i64 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %69 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp120.not = icmp eq i32 %69, 0
  br i1 %cmp120.not, label %sw.bb100.if.end126_crit_edge, label %if.then122

sw.bb100.if.end126_crit_edge:                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then122:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  %audio_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 11
  %70 = ptrtoint ptr %audio_property to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %audio_property, align 4
  call void @drm_object_attach_property(ptr noundef %base105, ptr noundef %71, i64 noundef 2) #8
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %sw.bb100.if.end126_crit_edge
  %interlace_allowed127 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %72 = ptrtoint ptr %interlace_allowed127 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %interlace_allowed127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %connector_type)
  %cmp128 = icmp eq i32 %connector_type, 12
  %doublescan_allowed131 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  br i1 %cmp128, label %if.end134.thread, label %if.end134

if.end134.thread:                                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %doublescan_allowed131 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %doublescan_allowed131, align 1
  br label %if.end461

if.end134:                                        ; preds = %if.end126
  %74 = ptrtoint ptr %doublescan_allowed131 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %doublescan_allowed131, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %connector_type)
  %cmp135 = icmp eq i32 %connector_type, 2
  br i1 %cmp135, label %if.then137, label %if.end134.if.end461_crit_edge

if.end134.if.end461_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end461

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %dac_load_detect138 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 8
  %75 = ptrtoint ptr %dac_load_detect138 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %dac_load_detect138, align 8
  %load_detect_property142 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 7
  %76 = ptrtoint ptr %load_detect_property142 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %load_detect_property142, align 4
  call void @drm_object_attach_property(ptr noundef %base105, ptr noundef %77, i64 noundef 1) #8
  br label %if.end461

sw.bb144:                                         ; preds = %if.end89.sw.bb144_crit_edge, %if.end89.sw.bb144_crit_edge824
  %call146 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_edp_funcs, i32 noundef %connector_type, ptr noundef %ddc.0) #8
  %helper_private.i783 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %78 = ptrtoint ptr %helper_private.i783 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @amdgpu_connector_dp_helper_funcs, ptr %helper_private.i783, align 4
  %base149 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %scaling_mode_property151 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %79 = ptrtoint ptr %scaling_mode_property151 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %scaling_mode_property151, align 4
  call void @drm_object_attach_property(ptr noundef %base149, ptr noundef %80, i64 noundef 1) #8
  %interlace_allowed152 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %81 = ptrtoint ptr %interlace_allowed152 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %interlace_allowed152, align 8
  %doublescan_allowed153 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %82 = ptrtoint ptr %doublescan_allowed153 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %doublescan_allowed153, align 1
  br label %if.end461

if.else155:                                       ; preds = %if.end72
  %83 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %connector_type, label %if.else155.if.end461_crit_edge [
    i32 1, label %sw.bb156
    i32 4, label %sw.bb186
    i32 2, label %if.else155.sw.bb216_crit_edge
    i32 3, label %if.else155.sw.bb216_crit_edge829
    i32 11, label %if.else155.sw.bb286_crit_edge
    i32 12, label %if.else155.sw.bb286_crit_edge830
    i32 10, label %sw.bb348
    i32 14, label %sw.bb404
    i32 7, label %sw.bb432
  ]

if.else155.sw.bb286_crit_edge830:                 ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb286

if.else155.sw.bb286_crit_edge:                    ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb286

if.else155.sw.bb216_crit_edge829:                 ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb216

if.else155.sw.bb216_crit_edge:                    ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb216

if.else155.if.end461_crit_edge:                   ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end461

sw.bb156:                                         ; preds = %if.else155
  %84 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool158.not = icmp eq i8 %85, 0
  br i1 %tobool158.not, label %sw.bb156.if.end169_crit_edge, label %if.then159

sw.bb156.if.end169_crit_edge:                     ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then159:                                       ; preds = %sw.bb156
  %call160 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus161 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %ddc_bus161 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call160, ptr %ddc_bus161, align 8
  %tobool163.not = icmp eq ptr %call160, null
  br i1 %tobool163.not, label %if.then164, label %if.then159.if.end169_crit_edge

if.then159.if.end169_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then164:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.then159.if.end169_crit_edge, %sw.bb156.if.end169_crit_edge
  %ddc.1 = phi ptr [ null, %if.then164 ], [ null, %sw.bb156.if.end169_crit_edge ], [ %call160, %if.then159.if.end169_crit_edge ]
  %call171 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_vga_funcs, i32 noundef 1, ptr noundef %ddc.1) #8
  br label %if.then466.sink.split

sw.bb186:                                         ; preds = %if.else155
  %87 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool188.not = icmp eq i8 %88, 0
  br i1 %tobool188.not, label %sw.bb186.if.end199_crit_edge, label %if.then189

sw.bb186.if.end199_crit_edge:                     ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

if.then189:                                       ; preds = %sw.bb186
  %call190 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus191 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %ddc_bus191 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call190, ptr %ddc_bus191, align 8
  %tobool193.not = icmp eq ptr %call190, null
  br i1 %tobool193.not, label %if.then194, label %if.then189.if.end199_crit_edge

if.then189.if.end199_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

if.then194:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #8
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %if.then189.if.end199_crit_edge, %sw.bb186.if.end199_crit_edge
  %ddc.2 = phi ptr [ null, %if.then194 ], [ null, %sw.bb186.if.end199_crit_edge ], [ %call190, %if.then189.if.end199_crit_edge ]
  %call201 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_vga_funcs, i32 noundef 4, ptr noundef %ddc.2) #8
  br label %if.then466.sink.split

sw.bb216:                                         ; preds = %if.else155.sw.bb216_crit_edge, %if.else155.sw.bb216_crit_edge829
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i786 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3520, i32 noundef 44) #11
  %tobool218.not = icmp eq ptr %call7.i.i786, null
  br i1 %tobool218.not, label %sw.bb216.failed_crit_edge, label %if.end220

sw.bb216.failed_crit_edge:                        ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end220:                                        ; preds = %sw.bb216
  %con_priv221 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 7
  %91 = ptrtoint ptr %con_priv221 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i786, ptr %con_priv221, align 4
  %92 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool223.not = icmp eq i8 %93, 0
  br i1 %tobool223.not, label %if.end220.if.end234_crit_edge, label %if.then224

if.end220.if.end234_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then224:                                       ; preds = %if.end220
  %call225 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus226 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %ddc_bus226 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call225, ptr %ddc_bus226, align 8
  %tobool228.not = icmp eq ptr %call225, null
  br i1 %tobool228.not, label %if.then229, label %if.then224.if.end234_crit_edge

if.then224.if.end234_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then229:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #8
  br label %if.end234

if.end234:                                        ; preds = %if.then229, %if.then224.if.end234_crit_edge, %if.end220.if.end234_crit_edge
  %ddc.3 = phi ptr [ null, %if.then229 ], [ null, %if.end220.if.end234_crit_edge ], [ %call225, %if.then224.if.end234_crit_edge ]
  %call236 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_dvi_funcs, i32 noundef %connector_type, ptr noundef %ddc.3) #8
  %helper_private.i787 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %95 = ptrtoint ptr %helper_private.i787 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @amdgpu_connector_dvi_helper_funcs, ptr %helper_private.i787, align 4
  %base239 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %coherent_mode_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 6
  %96 = ptrtoint ptr %coherent_mode_property to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %coherent_mode_property, align 8
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %97, i64 noundef 1) #8
  %underscan_property244 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 8
  %98 = ptrtoint ptr %underscan_property244 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %underscan_property244, align 8
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %99, i64 noundef 0) #8
  %underscan_hborder_property248 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 9
  %100 = ptrtoint ptr %underscan_hborder_property248 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %underscan_hborder_property248, align 4
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %101, i64 noundef 0) #8
  %underscan_vborder_property252 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 10
  %102 = ptrtoint ptr %underscan_vborder_property252 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %underscan_vborder_property252, align 8
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %103, i64 noundef 0) #8
  %scaling_mode_property256 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %104 = ptrtoint ptr %scaling_mode_property256 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %scaling_mode_property256, align 4
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %105, i64 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %106 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp257.not = icmp eq i32 %106, 0
  br i1 %cmp257.not, label %if.end234.if.end264_crit_edge, label %if.then259

if.end234.if.end264_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

if.then259:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  %audio_property263 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 11
  %107 = ptrtoint ptr %audio_property263 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %audio_property263, align 4
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %108, i64 noundef 2) #8
  br label %if.end264

if.end264:                                        ; preds = %if.then259, %if.end234.if.end264_crit_edge
  %dither_property268 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 12
  %109 = ptrtoint ptr %dither_property268 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dither_property268, align 8
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %110, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %connector_type)
  %cmp269 = icmp eq i32 %connector_type, 2
  br i1 %cmp269, label %if.then271, label %if.else283.critedge

if.then271:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  %dac_load_detect272 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 8
  %111 = ptrtoint ptr %dac_load_detect272 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %dac_load_detect272, align 8
  %load_detect_property276 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 7
  %112 = ptrtoint ptr %load_detect_property276 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %load_detect_property276, align 4
  call void @drm_object_attach_property(ptr noundef %base239, ptr noundef %113, i64 noundef 1) #8
  %interlace_allowed278.c = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %114 = ptrtoint ptr %interlace_allowed278.c to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %interlace_allowed278.c, align 8
  %doublescan_allowed282 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %115 = ptrtoint ptr %doublescan_allowed282 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %doublescan_allowed282, align 1
  br label %if.end461

if.else283.critedge:                              ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  %interlace_allowed278.c780 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %116 = ptrtoint ptr %interlace_allowed278.c780 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %interlace_allowed278.c780, align 8
  %doublescan_allowed284 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %117 = ptrtoint ptr %doublescan_allowed284 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %doublescan_allowed284, align 1
  br label %if.end461

sw.bb286:                                         ; preds = %if.else155.sw.bb286_crit_edge, %if.else155.sw.bb286_crit_edge830
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %118 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i788 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3520, i32 noundef 44) #11
  %tobool288.not = icmp eq ptr %call7.i.i788, null
  br i1 %tobool288.not, label %sw.bb286.failed_crit_edge, label %if.end290

sw.bb286.failed_crit_edge:                        ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end290:                                        ; preds = %sw.bb286
  %con_priv291 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 7
  %119 = ptrtoint ptr %con_priv291 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call7.i.i788, ptr %con_priv291, align 4
  %120 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool293.not = icmp eq i8 %121, 0
  br i1 %tobool293.not, label %if.end290.if.end304_crit_edge, label %if.then294

if.end290.if.end304_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end304

if.then294:                                       ; preds = %if.end290
  %call295 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus296 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %122 = ptrtoint ptr %ddc_bus296 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call295, ptr %ddc_bus296, align 8
  %tobool298.not = icmp eq ptr %call295, null
  br i1 %tobool298.not, label %if.then299, label %if.then294.if.end304_crit_edge

if.then294.if.end304_crit_edge:                   ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end304

if.then299:                                       ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #8
  br label %if.end304

if.end304:                                        ; preds = %if.then299, %if.then294.if.end304_crit_edge, %if.end290.if.end304_crit_edge
  %ddc.4 = phi ptr [ null, %if.then299 ], [ null, %if.end290.if.end304_crit_edge ], [ %call295, %if.then294.if.end304_crit_edge ]
  %call306 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_dvi_funcs, i32 noundef %connector_type, ptr noundef %ddc.4) #8
  %helper_private.i789 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %123 = ptrtoint ptr %helper_private.i789 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @amdgpu_connector_dvi_helper_funcs, ptr %helper_private.i789, align 4
  %base309 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %coherent_mode_property311 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 6
  %124 = ptrtoint ptr %coherent_mode_property311 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %coherent_mode_property311, align 8
  call void @drm_object_attach_property(ptr noundef %base309, ptr noundef %125, i64 noundef 1) #8
  %underscan_property315 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 8
  %126 = ptrtoint ptr %underscan_property315 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %underscan_property315, align 8
  call void @drm_object_attach_property(ptr noundef %base309, ptr noundef %127, i64 noundef 0) #8
  %underscan_hborder_property319 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 9
  %128 = ptrtoint ptr %underscan_hborder_property319 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %underscan_hborder_property319, align 4
  call void @drm_object_attach_property(ptr noundef %base309, ptr noundef %129, i64 noundef 0) #8
  %underscan_vborder_property323 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 10
  %130 = ptrtoint ptr %underscan_vborder_property323 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %underscan_vborder_property323, align 8
  call void @drm_object_attach_property(ptr noundef %base309, ptr noundef %131, i64 noundef 0) #8
  %scaling_mode_property327 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %132 = ptrtoint ptr %scaling_mode_property327 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %scaling_mode_property327, align 4
  call void @drm_object_attach_property(ptr noundef %base309, ptr noundef %133, i64 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %134 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp328.not = icmp eq i32 %134, 0
  br i1 %cmp328.not, label %if.end304.if.end335_crit_edge, label %if.then330

if.end304.if.end335_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end335

if.then330:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #10
  %audio_property334 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 11
  %135 = ptrtoint ptr %audio_property334 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %audio_property334, align 4
  call void @drm_object_attach_property(ptr noundef %base309, ptr noundef %136, i64 noundef 2) #8
  br label %if.end335

if.end335:                                        ; preds = %if.then330, %if.end304.if.end335_crit_edge
  %dither_property339 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 12
  %137 = ptrtoint ptr %dither_property339 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dither_property339, align 8
  call void @drm_object_attach_property(ptr noundef %base309, ptr noundef %138, i64 noundef 0) #8
  %interlace_allowed340 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %139 = ptrtoint ptr %interlace_allowed340 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %interlace_allowed340, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %connector_type)
  %cmp341 = icmp eq i32 %connector_type, 12
  %doublescan_allowed344 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  br i1 %cmp341, label %if.then343, label %if.else345

if.then343:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %doublescan_allowed344 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %doublescan_allowed344, align 1
  br label %if.end461

if.else345:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %doublescan_allowed344 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %doublescan_allowed344, align 1
  br label %if.end461

sw.bb348:                                         ; preds = %if.else155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %142 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i790 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3520, i32 noundef 44) #11
  %tobool350.not = icmp eq ptr %call7.i.i790, null
  br i1 %tobool350.not, label %sw.bb348.failed_crit_edge, label %if.end352

sw.bb348.failed_crit_edge:                        ; preds = %sw.bb348
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end352:                                        ; preds = %sw.bb348
  %con_priv353 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 7
  %143 = ptrtoint ptr %con_priv353 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call7.i.i790, ptr %con_priv353, align 4
  %144 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool355.not = icmp eq i8 %145, 0
  br i1 %tobool355.not, label %if.end352.if.end366_crit_edge, label %if.then356

if.end352.if.end366_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end366

if.then356:                                       ; preds = %if.end352
  %call357 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus358 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %ddc_bus358 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call357, ptr %ddc_bus358, align 8
  %tobool360.not = icmp eq ptr %call357, null
  br i1 %tobool360.not, label %if.else364, label %if.then356.if.end366_crit_edge

if.then356.if.end366_crit_edge:                   ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end366

if.else364:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  br label %if.end366

if.end366:                                        ; preds = %if.else364, %if.then356.if.end366_crit_edge, %if.end352.if.end366_crit_edge
  %has_aux.1 = phi i1 [ false, %if.else364 ], [ false, %if.end352.if.end366_crit_edge ], [ true, %if.then356.if.end366_crit_edge ]
  %ddc.5 = phi ptr [ null, %if.else364 ], [ null, %if.end352.if.end366_crit_edge ], [ %call357, %if.then356.if.end366_crit_edge ]
  %call368 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_dp_funcs, i32 noundef 10, ptr noundef %ddc.5) #8
  %helper_private.i791 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %147 = ptrtoint ptr %helper_private.i791 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @amdgpu_connector_dp_helper_funcs, ptr %helper_private.i791, align 4
  %base371 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %coherent_mode_property373 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 6
  %148 = ptrtoint ptr %coherent_mode_property373 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %coherent_mode_property373, align 8
  call void @drm_object_attach_property(ptr noundef %base371, ptr noundef %149, i64 noundef 1) #8
  %underscan_property377 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 8
  %150 = ptrtoint ptr %underscan_property377 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %underscan_property377, align 8
  call void @drm_object_attach_property(ptr noundef %base371, ptr noundef %151, i64 noundef 0) #8
  %underscan_hborder_property381 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 9
  %152 = ptrtoint ptr %underscan_hborder_property381 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %underscan_hborder_property381, align 4
  call void @drm_object_attach_property(ptr noundef %base371, ptr noundef %153, i64 noundef 0) #8
  %underscan_vborder_property385 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 10
  %154 = ptrtoint ptr %underscan_vborder_property385 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %underscan_vborder_property385, align 8
  call void @drm_object_attach_property(ptr noundef %base371, ptr noundef %155, i64 noundef 0) #8
  %scaling_mode_property389 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %156 = ptrtoint ptr %scaling_mode_property389 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %scaling_mode_property389, align 4
  call void @drm_object_attach_property(ptr noundef %base371, ptr noundef %157, i64 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %158 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp390.not = icmp eq i32 %158, 0
  br i1 %cmp390.not, label %if.end366.if.end397_crit_edge, label %if.then392

if.end366.if.end397_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end397

if.then392:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #10
  %audio_property396 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 11
  %159 = ptrtoint ptr %audio_property396 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %audio_property396, align 4
  call void @drm_object_attach_property(ptr noundef %base371, ptr noundef %160, i64 noundef 2) #8
  br label %if.end397

if.end397:                                        ; preds = %if.then392, %if.end366.if.end397_crit_edge
  %dither_property401 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 12
  %161 = ptrtoint ptr %dither_property401 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dither_property401, align 8
  call void @drm_object_attach_property(ptr noundef %base371, ptr noundef %162, i64 noundef 0) #8
  %interlace_allowed402 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %163 = ptrtoint ptr %interlace_allowed402 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %interlace_allowed402, align 8
  %doublescan_allowed403 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %164 = ptrtoint ptr %doublescan_allowed403 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %doublescan_allowed403, align 1
  br label %if.end461

sw.bb404:                                         ; preds = %if.else155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %165 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i792 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %165, i32 noundef 3520, i32 noundef 44) #11
  %tobool406.not = icmp eq ptr %call7.i.i792, null
  br i1 %tobool406.not, label %sw.bb404.failed_crit_edge, label %if.end408

sw.bb404.failed_crit_edge:                        ; preds = %sw.bb404
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end408:                                        ; preds = %sw.bb404
  %con_priv409 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 7
  %166 = ptrtoint ptr %con_priv409 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call7.i.i792, ptr %con_priv409, align 4
  %167 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool411.not = icmp eq i8 %168, 0
  br i1 %tobool411.not, label %if.end408.if.end422_crit_edge, label %if.then412

if.end408.if.end422_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end422

if.then412:                                       ; preds = %if.end408
  %call413 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus414 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %169 = ptrtoint ptr %ddc_bus414 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call413, ptr %ddc_bus414, align 8
  %tobool416.not = icmp eq ptr %call413, null
  br i1 %tobool416.not, label %if.else420, label %if.then412.if.end422_crit_edge

if.then412.if.end422_crit_edge:                   ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end422

if.else420:                                       ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  br label %if.end422

if.end422:                                        ; preds = %if.else420, %if.then412.if.end422_crit_edge, %if.end408.if.end422_crit_edge
  %has_aux.2 = phi i1 [ false, %if.else420 ], [ false, %if.end408.if.end422_crit_edge ], [ true, %if.then412.if.end422_crit_edge ]
  %ddc.6 = phi ptr [ null, %if.else420 ], [ null, %if.end408.if.end422_crit_edge ], [ %call413, %if.then412.if.end422_crit_edge ]
  %call424 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_edp_funcs, i32 noundef 14, ptr noundef %ddc.6) #8
  %helper_private.i793 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %170 = ptrtoint ptr %helper_private.i793 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @amdgpu_connector_dp_helper_funcs, ptr %helper_private.i793, align 4
  %base427 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %scaling_mode_property429 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %171 = ptrtoint ptr %scaling_mode_property429 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %scaling_mode_property429, align 4
  call void @drm_object_attach_property(ptr noundef %base427, ptr noundef %172, i64 noundef 1) #8
  %interlace_allowed430 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %173 = ptrtoint ptr %interlace_allowed430 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %interlace_allowed430, align 8
  %doublescan_allowed431 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %174 = ptrtoint ptr %doublescan_allowed431 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %doublescan_allowed431, align 1
  br label %if.end461

sw.bb432:                                         ; preds = %if.else155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %175 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i794 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %175, i32 noundef 3520, i32 noundef 44) #11
  %tobool434.not = icmp eq ptr %call7.i.i794, null
  br i1 %tobool434.not, label %sw.bb432.failed_crit_edge, label %if.end436

sw.bb432.failed_crit_edge:                        ; preds = %sw.bb432
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end436:                                        ; preds = %sw.bb432
  %con_priv437 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 7
  %176 = ptrtoint ptr %con_priv437 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call7.i.i794, ptr %con_priv437, align 4
  %177 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool439.not = icmp eq i8 %178, 0
  br i1 %tobool439.not, label %if.end436.if.end450_crit_edge, label %if.then440

if.end436.if.end450_crit_edge:                    ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end450

if.then440:                                       ; preds = %if.end436
  %call441 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef %i2c_bus) #8
  %ddc_bus442 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 3
  %179 = ptrtoint ptr %ddc_bus442 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call441, ptr %ddc_bus442, align 8
  %tobool444.not = icmp eq ptr %call441, null
  br i1 %tobool444.not, label %if.then445, label %if.then440.if.end450_crit_edge

if.then440.if.end450_crit_edge:                   ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end450

if.then445:                                       ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #8
  br label %if.end450

if.end450:                                        ; preds = %if.then445, %if.then440.if.end450_crit_edge, %if.end436.if.end450_crit_edge
  %ddc.7 = phi ptr [ null, %if.then445 ], [ null, %if.end436.if.end450_crit_edge ], [ %call441, %if.then440.if.end450_crit_edge ]
  %call452 = call i32 @drm_connector_init_with_ddc(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_connector_lvds_funcs, i32 noundef 7, ptr noundef %ddc.7) #8
  %helper_private.i795 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %180 = ptrtoint ptr %helper_private.i795 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @amdgpu_connector_lvds_helper_funcs, ptr %helper_private.i795, align 4
  %base455 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %scaling_mode_property457 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %181 = ptrtoint ptr %scaling_mode_property457 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %scaling_mode_property457, align 4
  call void @drm_object_attach_property(ptr noundef %base455, ptr noundef %182, i64 noundef 1) #8
  %interlace_allowed458 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %183 = ptrtoint ptr %interlace_allowed458 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %interlace_allowed458, align 8
  %doublescan_allowed459 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %184 = ptrtoint ptr %doublescan_allowed459 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %doublescan_allowed459, align 1
  br label %if.end461

if.end461:                                        ; preds = %if.end450, %if.end422, %if.end397, %if.else345, %if.then343, %if.else283.critedge, %if.then271, %if.else155.if.end461_crit_edge, %sw.bb144, %if.then137, %if.end134.if.end461_crit_edge, %if.end134.thread, %sw.default91
  %has_aux.3.off0.ph = phi i1 [ %has_aux.0, %if.end134.thread ], [ false, %if.else283.critedge ], [ false, %if.then271 ], [ false, %if.else345 ], [ false, %if.then343 ], [ %has_aux.1, %if.end397 ], [ %has_aux.2, %if.end422 ], [ false, %if.end450 ], [ false, %if.else155.if.end461_crit_edge ], [ %has_aux.0, %sw.bb144 ], [ %has_aux.0, %if.end134.if.end461_crit_edge ], [ %has_aux.0, %if.then137 ], [ %has_aux.0, %sw.default91 ]
  %subpixel_order.0.ph = phi i32 [ 1, %if.end134.thread ], [ 1, %if.else283.critedge ], [ 1, %if.then271 ], [ 1, %if.else345 ], [ 1, %if.then343 ], [ 1, %if.end397 ], [ 1, %if.end422 ], [ 1, %if.end450 ], [ 5, %if.else155.if.end461_crit_edge ], [ 1, %sw.bb144 ], [ 1, %if.end134.if.end461_crit_edge ], [ 1, %if.then137 ], [ 5, %sw.default91 ]
  %185 = ptrtoint ptr %hpd58 to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pr = load i32, ptr %hpd58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %.pr)
  %cmp464 = icmp eq i32 %.pr, 255
  br i1 %cmp464, label %if.end461.if.then466_crit_edge, label %if.else471

if.end461.if.then466_crit_edge:                   ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then466

if.then466.sink.split:                            ; preds = %if.end199, %if.end169
  %helper_private.i784 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %186 = ptrtoint ptr %helper_private.i784 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @amdgpu_connector_vga_helper_funcs, ptr %helper_private.i784, align 4
  %dac_load_detect173 = getelementptr inbounds %struct.amdgpu_connector, ptr %call7.i.i, i32 0, i32 8
  %187 = ptrtoint ptr %dac_load_detect173 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %dac_load_detect173, align 8
  %base175 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property207 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 7
  %188 = ptrtoint ptr %load_detect_property207 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %load_detect_property207, align 4
  call void @drm_object_attach_property(ptr noundef %base175, ptr noundef %189, i64 noundef 1) #8
  %scaling_mode_property211 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 73
  %190 = ptrtoint ptr %scaling_mode_property211 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %scaling_mode_property211, align 4
  call void @drm_object_attach_property(ptr noundef %base175, ptr noundef %191, i64 noundef 0) #8
  %192 = ptrtoint ptr %hpd58 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 255, ptr %hpd58, align 4
  %interlace_allowed214 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %193 = ptrtoint ptr %interlace_allowed214 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %interlace_allowed214, align 8
  %doublescan_allowed215 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %194 = ptrtoint ptr %doublescan_allowed215 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %doublescan_allowed215, align 1
  br label %if.then466

if.then466:                                       ; preds = %if.then466.sink.split, %if.end461.if.then466_crit_edge
  %subpixel_order.0803 = phi i32 [ %subpixel_order.0.ph, %if.end461.if.then466_crit_edge ], [ 5, %if.then466.sink.split ]
  %has_aux.3.off0801 = phi i1 [ %has_aux.3.off0.ph, %if.end461.if.then466_crit_edge ], [ false, %if.then466.sink.split ]
  %195 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %i2c_bus, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool468.not = icmp eq i8 %196, 0
  br i1 %tobool468.not, label %if.end473, label %if.then469

if.then469:                                       ; preds = %if.then466
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %197 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 6, ptr %polled, align 4
  %subpixel_order474804 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 20, i32 3
  %198 = ptrtoint ptr %subpixel_order474804 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %subpixel_order.0803, ptr %subpixel_order474804, align 4
  br i1 %has_aux.3.off0801, label %if.then469.if.then476_crit_edge, label %if.then469.if.end477_crit_edge

if.then469.if.end477_crit_edge:                   ; preds = %if.then469
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end477

if.then469.if.then476_crit_edge:                  ; preds = %if.then469
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then476

if.else471:                                       ; preds = %if.end461
  %polled472 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %199 = ptrtoint ptr %polled472 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %polled472, align 4
  %subpixel_order474805 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 20, i32 3
  %200 = ptrtoint ptr %subpixel_order474805 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %subpixel_order.0.ph, ptr %subpixel_order474805, align 4
  br i1 %has_aux.3.off0.ph, label %if.else471.if.then476_crit_edge, label %if.else471.if.end477_crit_edge

if.else471.if.end477_crit_edge:                   ; preds = %if.else471
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end477

if.else471.if.then476_crit_edge:                  ; preds = %if.else471
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then476

if.end473:                                        ; preds = %if.then466
  %subpixel_order474 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 20, i32 3
  %201 = ptrtoint ptr %subpixel_order474 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %subpixel_order.0803, ptr %subpixel_order474, align 4
  br i1 %has_aux.3.off0801, label %if.end473.if.then476_crit_edge, label %if.end473.if.end477_crit_edge

if.end473.if.end477_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end477

if.end473.if.then476_crit_edge:                   ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then476

if.then476:                                       ; preds = %if.end473.if.then476_crit_edge, %if.else471.if.then476_crit_edge, %if.then469.if.then476_crit_edge
  call void @amdgpu_atombios_dp_aux_init(ptr noundef nonnull %call7.i.i) #8
  br label %if.end477

if.end477:                                        ; preds = %if.then476, %if.end473.if.end477_crit_edge, %if.else471.if.end477_crit_edge, %if.then469.if.end477_crit_edge
  %202 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %connector_type, label %if.end477.cleanup_crit_edge [
    i32 10, label %if.end477.if.then483_crit_edge
    i32 14, label %if.end477.if.then483_crit_edge831
  ]

if.end477.if.then483_crit_edge831:                ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then483

if.end477.if.then483_crit_edge:                   ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then483

if.end477.cleanup_crit_edge:                      ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then483:                                       ; preds = %if.end477.if.then483_crit_edge, %if.end477.if.then483_crit_edge831
  call void @drm_connector_attach_dp_subconnector_property(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

failed:                                           ; preds = %sw.bb432.failed_crit_edge, %sw.bb404.failed_crit_edge, %sw.bb348.failed_crit_edge, %sw.bb286.failed_crit_edge, %sw.bb216.failed_crit_edge, %if.then74.failed_crit_edge
  call void @drm_connector_cleanup(ptr noundef nonnull %call7.i.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.then483, %if.end477.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_i2c_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_dp_aux_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_attach_dp_subconnector_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_dp_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %amdgpu_connector_best_single_encoder.exit

amdgpu_connector_best_single_encoder.exit:        ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge ]
  %call3 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call3, label %amdgpu_connector_best_single_encoder.exit.if.end11_crit_edge, label %if.then

amdgpu_connector_best_single_encoder.exit.if.end11_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %amdgpu_connector_best_single_encoder.exit
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then7, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connector, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev9, align 4
  %call.i169 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #8
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %amdgpu_connector_best_single_encoder.exit.if.end11_crit_edge
  br i1 %force, label %if.end11.if.end14_crit_edge, label %land.lhs.true

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end11
  %hpd.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 11
  %17 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hpd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %cmp.not.i170 = icmp eq i32 %18, 255
  br i1 %cmp.not.i170, label %land.lhs.true.if.end14_crit_edge, label %if.then.i

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then.i:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connector, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 -8
  %funcs.i = getelementptr i8, ptr %20, i32 22416
  %21 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs.i, align 8
  %hpd_sense.i = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %hpd_sense.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hpd_sense.i, align 4
  %call5.i = tail call zeroext i1 %24(ptr noundef %add.ptr.i.i, i32 noundef %18) #8
  %..i = select i1 %call5.i, i32 1, i32 2
  %status7.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %25 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %..i)
  %cmp8.i = icmp eq i32 %26, %..i
  br i1 %cmp8.i, label %if.then13, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status7.i, align 8
  br label %out

if.end14:                                         ; preds = %if.then.i.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  %edid.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %29 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edid.i, align 8
  tail call void @kfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %edid.i, align 8
  %call.i172 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %32 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %connector_type, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %33, label %if.else [
    i32 14, label %if.end14.if.then18_crit_edge
    i32 7, label %if.end14.if.then18_crit_edge207
  ]

if.end14.if.then18_crit_edge207:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %if.end14.if.then18_crit_edge, %if.end14.if.then18_crit_edge207
  %tobool19.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool19.not, label %if.then18.if.end33_crit_edge, label %if.then20

if.then18.if.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then20:                                        ; preds = %if.then18
  %hdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %36)
  %cmp25 = icmp ugt i16 %36, 319
  br i1 %cmp25, label %land.lhs.true27, label %if.then20.if.end33_crit_edge

if.then20.if.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true27:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %vdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %37 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 239, i16 %38)
  %cmp29 = icmp ugt i16 %38, 239
  %spec.select = select i1 %cmp29, i32 1, i32 2
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true27, %if.then20.if.end33_crit_edge, %if.then18.if.end33_crit_edge
  %ret.1 = phi i32 [ 2, %if.then18.if.end33_crit_edge ], [ 2, %if.then20.if.end33_crit_edge ], [ %spec.select, %land.lhs.true27 ]
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 19, ptr %dp_sink_type, align 1
  %edp_on = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %3, i32 0, i32 5
  %40 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %edp_on, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool34.not = icmp eq i8 %41, 0
  br i1 %tobool34.not, label %if.then35, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr noundef %connector, i32 noundef 12) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  %call38 = tail call i32 @amdgpu_atombios_dp_get_dpcd(ptr noundef %connector) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %spec.select166 = select i1 %tobool39.not, i32 1, i32 %ret.1
  %42 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %edp_on, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool43.not = icmp eq i8 %43, 0
  br i1 %tobool43.not, label %if.then44, label %if.end37.if.end95_crit_edge

if.end37.if.end95_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr noundef %connector, i32 noundef 13) #8
  br label %if.end95

if.else:                                          ; preds = %if.end14
  %44 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %connector, align 8
  %encoder_list.i173 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 30, i32 16
  %46 = ptrtoint ptr %encoder_list.i173 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn20.i = load ptr, ptr %encoder_list.i173, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %encoder_list.i173
  br i1 %cmp.not21.i, label %if.else.if.else65_crit_edge, label %for.body.lr.ph.i

if.else.if.else65_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else65

for.body.lr.ph.i:                                 ; preds = %if.else
  %47 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i179

for.body.i179:                                    ; preds = %for.inc.i.for.body.i179_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i180, %for.inc.i.for.body.i179_crit_edge ]
  %index.i.i.i175 = getelementptr i8, ptr %.pn22.i, i32 36
  %49 = ptrtoint ptr %index.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i.i.i175, align 4
  %shl.i.i176 = shl nuw i32 1, %50
  %and.i177 = and i32 %shl.i.i176, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i177)
  %tobool.not.i178 = icmp eq i32 %and.i177, 0
  br i1 %tobool.not.i178, label %for.body.i179.for.inc.i_crit_edge, label %if.else.i

for.body.i179.for.inc.i_crit_edge:                ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i179
  %encoder_id.i = getelementptr i8, ptr %.pn22.i, i32 72
  %51 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %encoder_id.i, align 4
  %53 = and i32 %52, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %53)
  %switch.i = icmp eq i32 %53, 34
  br i1 %switch.i, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i179.for.inc.i_crit_edge
  %54 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i180 = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i181 = icmp eq ptr %.pn.i180, %encoder_list.i173
  br i1 %cmp.not.i181, label %for.inc.i.if.else65_crit_edge, label %for.inc.i.for.body.i179_crit_edge

for.inc.i.for.body.i179_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i179

for.inc.i.if.else65_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else65

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit: ; preds = %if.else.i
  %dp_sink_type52 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %3, i32 0, i32 2
  %55 = ptrtoint ptr %dp_sink_type52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 19, ptr %dp_sink_type52, align 1
  %call53 = tail call i32 @amdgpu_atombios_dp_get_dpcd(ptr noundef %connector) #8
  %tobool54.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool54.not, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.end95_crit_edge, label %if.then55

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.end95_crit_edge: ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then55:                                        ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit
  tail call void @amdgpu_atombios_encoder_setup_ext_encoder_ddc(ptr noundef nonnull %retval.0.i) #8
  %call56 = tail call zeroext i1 @amdgpu_display_ddc_probe(ptr noundef %connector, i1 noundef zeroext true) #8
  br i1 %call56, label %if.then55.if.end95_crit_edge, label %if.else58

if.then55.if.end95_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.else58:                                        ; preds = %if.then55
  %dac_load_detect = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 8
  %56 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dac_load_detect, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool59.not = icmp eq i8 %57, 0
  br i1 %tobool59.not, label %if.else58.if.end95_crit_edge, label %if.then60

if.else58.if.end95_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then60:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 11
  %58 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %detect, align 4
  %call61 = tail call i32 %61(ptr noundef nonnull %retval.0.i, ptr noundef %connector) #8
  br label %if.end95

if.else65:                                        ; preds = %for.inc.i.if.else65_crit_edge, %if.else.if.else65_crit_edge
  %call66 = tail call zeroext i8 @amdgpu_atombios_dp_get_sinktype(ptr noundef %connector) #8
  %dp_sink_type67 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %3, i32 0, i32 2
  %62 = ptrtoint ptr %dp_sink_type67 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %call66, ptr %dp_sink_type67, align 1
  %funcs = getelementptr i8, ptr %1, i32 22416
  %63 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %funcs, align 8
  %hpd_sense = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %hpd_sense to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hpd_sense, align 4
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 11
  %67 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hpd, align 4
  %call69 = tail call zeroext i1 %66(ptr noundef %add.ptr.i, i32 noundef %68) #8
  %69 = ptrtoint ptr %dp_sink_type67 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dp_sink_type67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %70)
  %cmp73 = icmp eq i8 %70, 19
  br i1 %call69, label %if.then70, label %if.else78

if.then70:                                        ; preds = %if.else65
  br i1 %cmp73, label %if.then75, label %if.then70.if.end95_crit_edge

if.then70.if.end95_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then75:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 @amdgpu_atombios_dp_get_dpcd(ptr noundef %connector) #8
  br label %if.end95

if.else78:                                        ; preds = %if.else65
  br i1 %cmp73, label %if.then83, label %if.else88

if.then83:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %call84 = tail call i32 @amdgpu_atombios_dp_get_dpcd(ptr noundef %connector) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  %spec.select167 = select i1 %tobool85.not, i32 1, i32 2
  br label %if.end95

if.else88:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = tail call zeroext i1 @amdgpu_display_ddc_probe(ptr noundef %connector, i1 noundef zeroext false) #8
  %spec.select168 = select i1 %call89, i32 1, i32 2
  br label %if.end95

if.end95:                                         ; preds = %if.else88, %if.then83, %if.then75, %if.then70.if.end95_crit_edge, %if.then60, %if.else58.if.end95_crit_edge, %if.then55.if.end95_crit_edge, %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.end95_crit_edge, %if.then44, %if.end37.if.end95_crit_edge
  %ret.3 = phi i32 [ %spec.select166, %if.end37.if.end95_crit_edge ], [ %spec.select166, %if.then44 ], [ %call61, %if.then60 ], [ 2, %if.else58.if.end95_crit_edge ], [ 2, %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.end95_crit_edge ], [ 1, %if.then75 ], [ 1, %if.then70.if.end95_crit_edge ], [ 1, %if.then55.if.end95_crit_edge ], [ %spec.select167, %if.then83 ], [ %spec.select168, %if.else88 ]
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %71 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %helper_private.i, align 4
  %best_encoder1.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %best_encoder1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %best_encoder1.i, align 4
  %call.i183 = tail call ptr %74(ptr noundef %connector) #8
  %75 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %connector, align 8
  %encoder_list.i184 = getelementptr inbounds %struct.drm_device, ptr %76, i32 0, i32 30, i32 16
  %77 = ptrtoint ptr %encoder_list.i184 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn26.i = load ptr, ptr %encoder_list.i184, align 4
  %cmp.not29.i = icmp eq ptr %.pn26.i, %encoder_list.i184
  br i1 %cmp.not29.i, label %if.end95.out_crit_edge, label %for.body.lr.ph.i186

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph.i186:                              ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.3)
  %cmp7.i = icmp eq i32 %ret.3, 1
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.inc.i195.for.body.i191_crit_edge, %for.body.lr.ph.i186
  %.pn30.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i186 ], [ %.pn.i193, %for.inc.i195.for.body.i191_crit_edge ]
  %78 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i187 = getelementptr i8, ptr %.pn30.i, i32 36
  %80 = ptrtoint ptr %index.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index.i.i.i187, align 4
  %shl.i.i188 = shl nuw i32 1, %81
  %and.i189 = and i32 %shl.i.i188, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i190 = icmp eq i32 %and.i189, 0
  br i1 %tobool.not.i190, label %for.body.i191.for.inc.i195_crit_edge, label %if.else.i192

for.body.i191.for.inc.i195_crit_edge:             ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i195

if.else.i192:                                     ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.031.i = getelementptr i8, ptr %.pn30.i, i32 -4
  %cmp6.i = icmp eq ptr %encoder.031.i, %call.i183
  %or.cond.i = and i1 %cmp7.i, %cmp6.i
  tail call void @amdgpu_atombios_encoder_set_bios_scratch_regs(ptr noundef %connector, ptr noundef %encoder.031.i, i1 noundef zeroext %or.cond.i) #8
  br label %for.inc.i195

for.inc.i195:                                     ; preds = %if.else.i192, %for.body.i191.for.inc.i195_crit_edge
  %82 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i193 = load ptr, ptr %.pn30.i, align 4
  %83 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %connector, align 8
  %encoder_list4.i = getelementptr inbounds %struct.drm_device, ptr %84, i32 0, i32 30, i32 16
  %cmp.not.i194 = icmp eq ptr %.pn.i193, %encoder_list4.i
  br i1 %cmp.not.i194, label %for.inc.i195.out_crit_edge, label %for.inc.i195.for.body.i191_crit_edge

for.inc.i195.for.body.i191_crit_edge:             ; preds = %for.inc.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i191

for.inc.i195.out_crit_edge:                       ; preds = %for.inc.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.i195.out_crit_edge, %if.end95.out_crit_edge, %if.then13
  %ret.4 = phi i32 [ %28, %if.then13 ], [ %ret.3, %if.end95.out_crit_edge ], [ %ret.3, %for.inc.i195.out_crit_edge ]
  %call96 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call96, label %out.if.end103_crit_edge, label %if.then97

out.if.end103_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then97:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %connector, align 8
  %dev99 = getelementptr inbounds %struct.drm_device, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev99, align 4
  %call.i196 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 12, i32 22
  %89 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store volatile i64 %call.i196, ptr %last_busy.i, align 8
  %90 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %connector, align 8
  %dev101 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev101, align 4
  %call.i197 = tail call i32 @__pm_runtime_suspend(ptr noundef %93, i32 noundef 13) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %out.if.end103_crit_edge
  %connector_type104 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %94 = ptrtoint ptr %connector_type104 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %connector_type104, align 8
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %95, label %if.end103.cleanup_crit_edge [
    i32 10, label %if.end103.if.then111_crit_edge
    i32 14, label %if.end103.if.then111_crit_edge208
  ]

if.end103.if.then111_crit_edge208:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

if.end103.if.then111_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then111:                                       ; preds = %if.end103.if.then111_crit_edge, %if.end103.if.then111_crit_edge208
  %downstream_ports = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %3, i32 0, i32 1
  tail call void @drm_dp_set_subconnector_property(ptr noundef %connector, i32 noundef %ret.4, ptr noundef %3, ptr noundef %downstream_ports) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %if.end103.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ 2, %if.then7 ], [ %ret.4, %if.end103.cleanup_crit_edge ], [ %ret.4, %if.then111 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amdgpu_connector_dvi_force(ptr nocapture noundef %connector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %force = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 37
  %0 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %force, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.if.end5_crit_edge [
    i32 2, label %entry.if.end5.sink.split_crit_edge
    i32 3, label %if.then3
  ]

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then3, %entry.if.end5.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then3 ], [ 0, %entry.if.end5.sink.split_crit_edge ]
  %use_digital = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %3 = ptrtoint ptr %use_digital to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %use_digital, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_set_property(ptr noundef %connector, ptr noundef readnone %property, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %coherent_mode_property = getelementptr i8, ptr %1, i32 22088
  %2 = ptrtoint ptr %coherent_mode_property to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coherent_mode_property, align 8
  %cmp = icmp eq ptr %3, %property
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %4 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn3.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not4.i = icmp eq ptr %.pn3.i, %encoder_list.i
  br i1 %cmp.not4.i, label %if.then.cleanup185_crit_edge, label %for.body.lr.ph.i

if.then.cleanup185_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

for.body.lr.ph.i:                                 ; preds = %if.then
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn5.i = phi ptr [ %.pn3.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn5.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %encoder_type4.i = getelementptr i8, ptr %.pn5.i, i32 32
  %9 = ptrtoint ptr %encoder_type4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp5.i = icmp eq i32 %10, 2
  br i1 %cmp5.i, label %amdgpu_connector_find_encoder.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup185_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup185_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

amdgpu_connector_find_encoder.exit:               ; preds = %if.else.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn5.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %amdgpu_connector_find_encoder.exit.cleanup185_crit_edge, label %if.end

amdgpu_connector_find_encoder.exit.cleanup185_crit_edge: ; preds = %amdgpu_connector_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end:                                           ; preds = %amdgpu_connector_find_encoder.exit
  %enc_priv = getelementptr i8, ptr %.pn5.i, i32 220
  %12 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enc_priv, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.cleanup185_crit_edge, label %if.end6

if.end.cleanup185_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool8 = icmp ne i64 %val, 0
  %coherent_mode = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %coherent_mode, align 1, !range !71
  %16 = zext i1 %tobool8 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %16)
  %cmp13.not = icmp eq i8 %15, %16
  br i1 %cmp13.not, label %if.end6.if.end21_crit_edge, label %if.then15

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.end6
  %17 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %coherent_mode, align 1
  %crtc1.i = getelementptr i8, ptr %.pn5.i, i32 48
  %18 = ptrtoint ptr %crtc1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc1.i, align 4
  %tobool.not.i276 = icmp eq ptr %19, null
  br i1 %tobool.not.i276, label %if.then15.if.end21_crit_edge, label %land.lhs.true.i

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true.i:                                  ; preds = %if.then15
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.i = icmp eq i8 %21, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end21_crit_edge, label %if.then.i

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 12
  %x.i = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 14
  %22 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %x.i, align 4
  %y.i = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 15
  %24 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %y.i, align 8
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 6
  %26 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %primary.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fb.i, align 4
  %call.i = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %19, ptr noundef %mode.i, i32 noundef %23, i32 noundef %25, ptr noundef %29) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end21_crit_edge, %if.then15.if.end21_crit_edge, %if.end6.if.end21_crit_edge, %entry.if.end21_crit_edge
  %audio_property = getelementptr i8, ptr %1, i32 22108
  %30 = ptrtoint ptr %audio_property to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %audio_property, align 4
  %cmp23 = icmp eq ptr %31, %property
  br i1 %cmp23, label %if.then25, label %if.end21.if.end47_crit_edge

if.end21.if.end47_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then25:                                        ; preds = %if.end21
  %32 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %connector, align 8
  %encoder_list.i277 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 16
  %34 = ptrtoint ptr %encoder_list.i277 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn3.i278 = load ptr, ptr %encoder_list.i277, align 4
  %cmp.not4.i279 = icmp eq ptr %.pn3.i278, %encoder_list.i277
  br i1 %cmp.not4.i279, label %if.then25.cleanup185_crit_edge, label %for.body.lr.ph.i281

if.then25.cleanup185_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

for.body.lr.ph.i281:                              ; preds = %if.then25
  %possible_encoders.i280 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %35 = ptrtoint ptr %possible_encoders.i280 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %possible_encoders.i280, align 8
  br label %for.body.i287

for.body.i287:                                    ; preds = %for.inc.i293.for.body.i287_crit_edge, %for.body.lr.ph.i281
  %.pn5.i282 = phi ptr [ %.pn3.i278, %for.body.lr.ph.i281 ], [ %.pn.i291, %for.inc.i293.for.body.i287_crit_edge ]
  %index.i.i.i283 = getelementptr i8, ptr %.pn5.i282, i32 36
  %37 = ptrtoint ptr %index.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i.i.i283, align 4
  %shl.i.i284 = shl nuw i32 1, %38
  %and.i285 = and i32 %shl.i.i284, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285)
  %tobool.not.i286 = icmp eq i32 %and.i285, 0
  br i1 %tobool.not.i286, label %for.body.i287.for.inc.i293_crit_edge, label %if.else.i290

for.body.i287.for.inc.i293_crit_edge:             ; preds = %for.body.i287
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i293

if.else.i290:                                     ; preds = %for.body.i287
  %encoder_type4.i288 = getelementptr i8, ptr %.pn5.i282, i32 32
  %39 = ptrtoint ptr %encoder_type4.i288 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %encoder_type4.i288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp5.i289 = icmp eq i32 %40, 2
  br i1 %cmp5.i289, label %amdgpu_connector_find_encoder.exit297, label %if.else.i290.for.inc.i293_crit_edge

if.else.i290.for.inc.i293_crit_edge:              ; preds = %if.else.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i293

for.inc.i293:                                     ; preds = %if.else.i290.for.inc.i293_crit_edge, %for.body.i287.for.inc.i293_crit_edge
  %41 = ptrtoint ptr %.pn5.i282 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i291 = load ptr, ptr %.pn5.i282, align 4
  %cmp.not.i292 = icmp eq ptr %.pn.i291, %encoder_list.i277
  br i1 %cmp.not.i292, label %for.inc.i293.cleanup185_crit_edge, label %for.inc.i293.for.body.i287_crit_edge

for.inc.i293.for.body.i287_crit_edge:             ; preds = %for.inc.i293
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i287

for.inc.i293.cleanup185_crit_edge:                ; preds = %for.inc.i293
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

amdgpu_connector_find_encoder.exit297:            ; preds = %if.else.i290
  %encoder.0.le.i294 = getelementptr i8, ptr %.pn5.i282, i32 -4
  %tobool30.not = icmp eq ptr %encoder.0.le.i294, null
  br i1 %tobool30.not, label %amdgpu_connector_find_encoder.exit297.cleanup185_crit_edge, label %if.end32

amdgpu_connector_find_encoder.exit297.cleanup185_crit_edge: ; preds = %amdgpu_connector_find_encoder.exit297
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end32:                                         ; preds = %amdgpu_connector_find_encoder.exit297
  %audio = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 14
  %42 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %audio, align 4
  %conv36 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv36, i64 %val)
  %cmp37.not = icmp eq i64 %conv36, %val
  br i1 %cmp37.not, label %if.end32.if.end47_crit_edge, label %if.then39

if.end32.if.end47_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then39:                                        ; preds = %if.end32
  %conv40 = trunc i64 %val to i32
  %44 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv40, ptr %audio, align 4
  %crtc1.i298 = getelementptr i8, ptr %.pn5.i282, i32 48
  %45 = ptrtoint ptr %crtc1.i298 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crtc1.i298, align 4
  %tobool.not.i299 = icmp eq ptr %46, null
  br i1 %tobool.not.i299, label %if.then39.if.end47_crit_edge, label %land.lhs.true.i302

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true.i302:                               ; preds = %if.then39
  %enabled.i300 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %enabled.i300 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled.i300, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool2.not.i301 = icmp eq i8 %48, 0
  br i1 %tobool2.not.i301, label %land.lhs.true.i302.if.end47_crit_edge, label %if.then.i309

land.lhs.true.i302.if.end47_crit_edge:            ; preds = %land.lhs.true.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then.i309:                                     ; preds = %land.lhs.true.i302
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i303 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 12
  %x.i304 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 14
  %49 = ptrtoint ptr %x.i304 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %x.i304, align 4
  %y.i305 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 15
  %51 = ptrtoint ptr %y.i305 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %y.i305, align 8
  %primary.i306 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 6
  %53 = ptrtoint ptr %primary.i306 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %primary.i306, align 4
  %fb.i307 = getelementptr inbounds %struct.drm_plane, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %fb.i307 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fb.i307, align 4
  %call.i308 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %46, ptr noundef %mode.i303, i32 noundef %50, i32 noundef %52, ptr noundef %56) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then.i309, %land.lhs.true.i302.if.end47_crit_edge, %if.then39.if.end47_crit_edge, %if.end32.if.end47_crit_edge, %if.end21.if.end47_crit_edge
  %dither_property = getelementptr i8, ptr %1, i32 22112
  %57 = ptrtoint ptr %dither_property to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dither_property, align 8
  %cmp49 = icmp eq ptr %58, %property
  br i1 %cmp49, label %if.then51, label %if.end47.if.end74_crit_edge

if.end47.if.end74_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then51:                                        ; preds = %if.end47
  %59 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %connector, align 8
  %encoder_list.i311 = getelementptr inbounds %struct.drm_device, ptr %60, i32 0, i32 30, i32 16
  %61 = ptrtoint ptr %encoder_list.i311 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn3.i312 = load ptr, ptr %encoder_list.i311, align 4
  %cmp.not4.i313 = icmp eq ptr %.pn3.i312, %encoder_list.i311
  br i1 %cmp.not4.i313, label %if.then51.cleanup185_crit_edge, label %for.body.lr.ph.i315

if.then51.cleanup185_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

for.body.lr.ph.i315:                              ; preds = %if.then51
  %possible_encoders.i314 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %62 = ptrtoint ptr %possible_encoders.i314 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %possible_encoders.i314, align 8
  br label %for.body.i321

for.body.i321:                                    ; preds = %for.inc.i327.for.body.i321_crit_edge, %for.body.lr.ph.i315
  %.pn5.i316 = phi ptr [ %.pn3.i312, %for.body.lr.ph.i315 ], [ %.pn.i325, %for.inc.i327.for.body.i321_crit_edge ]
  %index.i.i.i317 = getelementptr i8, ptr %.pn5.i316, i32 36
  %64 = ptrtoint ptr %index.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index.i.i.i317, align 4
  %shl.i.i318 = shl nuw i32 1, %65
  %and.i319 = and i32 %shl.i.i318, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i319)
  %tobool.not.i320 = icmp eq i32 %and.i319, 0
  br i1 %tobool.not.i320, label %for.body.i321.for.inc.i327_crit_edge, label %if.else.i324

for.body.i321.for.inc.i327_crit_edge:             ; preds = %for.body.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i327

if.else.i324:                                     ; preds = %for.body.i321
  %encoder_type4.i322 = getelementptr i8, ptr %.pn5.i316, i32 32
  %66 = ptrtoint ptr %encoder_type4.i322 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %encoder_type4.i322, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp5.i323 = icmp eq i32 %67, 2
  br i1 %cmp5.i323, label %amdgpu_connector_find_encoder.exit331, label %if.else.i324.for.inc.i327_crit_edge

if.else.i324.for.inc.i327_crit_edge:              ; preds = %if.else.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i327

for.inc.i327:                                     ; preds = %if.else.i324.for.inc.i327_crit_edge, %for.body.i321.for.inc.i327_crit_edge
  %68 = ptrtoint ptr %.pn5.i316 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i325 = load ptr, ptr %.pn5.i316, align 4
  %cmp.not.i326 = icmp eq ptr %.pn.i325, %encoder_list.i311
  br i1 %cmp.not.i326, label %for.inc.i327.cleanup185_crit_edge, label %for.inc.i327.for.body.i321_crit_edge

for.inc.i327.for.body.i321_crit_edge:             ; preds = %for.inc.i327
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i321

for.inc.i327.cleanup185_crit_edge:                ; preds = %for.inc.i327
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

amdgpu_connector_find_encoder.exit331:            ; preds = %if.else.i324
  %encoder.0.le.i328 = getelementptr i8, ptr %.pn5.i316, i32 -4
  %tobool57.not = icmp eq ptr %encoder.0.le.i328, null
  br i1 %tobool57.not, label %amdgpu_connector_find_encoder.exit331.cleanup185_crit_edge, label %if.end59

amdgpu_connector_find_encoder.exit331.cleanup185_crit_edge: ; preds = %amdgpu_connector_find_encoder.exit331
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end59:                                         ; preds = %amdgpu_connector_find_encoder.exit331
  %dither = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 15
  %69 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dither, align 8
  %conv63 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv63, i64 %val)
  %cmp64.not = icmp eq i64 %conv63, %val
  br i1 %cmp64.not, label %if.end59.if.end74_crit_edge, label %if.then66

if.end59.if.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then66:                                        ; preds = %if.end59
  %conv67 = trunc i64 %val to i32
  %71 = ptrtoint ptr %dither to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv67, ptr %dither, align 8
  %crtc1.i332 = getelementptr i8, ptr %.pn5.i316, i32 48
  %72 = ptrtoint ptr %crtc1.i332 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %crtc1.i332, align 4
  %tobool.not.i333 = icmp eq ptr %73, null
  br i1 %tobool.not.i333, label %if.then66.if.end74_crit_edge, label %land.lhs.true.i336

if.then66.if.end74_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true.i336:                               ; preds = %if.then66
  %enabled.i334 = getelementptr inbounds %struct.drm_crtc, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %enabled.i334 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %enabled.i334, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool2.not.i335 = icmp eq i8 %75, 0
  br i1 %tobool2.not.i335, label %land.lhs.true.i336.if.end74_crit_edge, label %if.then.i343

land.lhs.true.i336.if.end74_crit_edge:            ; preds = %land.lhs.true.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then.i343:                                     ; preds = %land.lhs.true.i336
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i337 = getelementptr inbounds %struct.drm_crtc, ptr %73, i32 0, i32 12
  %x.i338 = getelementptr inbounds %struct.drm_crtc, ptr %73, i32 0, i32 14
  %76 = ptrtoint ptr %x.i338 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %x.i338, align 4
  %y.i339 = getelementptr inbounds %struct.drm_crtc, ptr %73, i32 0, i32 15
  %78 = ptrtoint ptr %y.i339 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %y.i339, align 8
  %primary.i340 = getelementptr inbounds %struct.drm_crtc, ptr %73, i32 0, i32 6
  %80 = ptrtoint ptr %primary.i340 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %primary.i340, align 4
  %fb.i341 = getelementptr inbounds %struct.drm_plane, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %fb.i341 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fb.i341, align 4
  %call.i342 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %73, ptr noundef %mode.i337, i32 noundef %77, i32 noundef %79, ptr noundef %83) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then.i343, %land.lhs.true.i336.if.end74_crit_edge, %if.then66.if.end74_crit_edge, %if.end59.if.end74_crit_edge, %if.end47.if.end74_crit_edge
  %underscan_property = getelementptr i8, ptr %1, i32 22096
  %84 = ptrtoint ptr %underscan_property to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %underscan_property, align 8
  %cmp76 = icmp eq ptr %85, %property
  br i1 %cmp76, label %if.then78, label %if.end74.if.end94_crit_edge

if.end74.if.end94_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then78:                                        ; preds = %if.end74
  %86 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %connector, align 8
  %encoder_list.i345 = getelementptr inbounds %struct.drm_device, ptr %87, i32 0, i32 30, i32 16
  %88 = ptrtoint ptr %encoder_list.i345 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn3.i346 = load ptr, ptr %encoder_list.i345, align 4
  %cmp.not4.i347 = icmp eq ptr %.pn3.i346, %encoder_list.i345
  br i1 %cmp.not4.i347, label %if.then78.cleanup185_crit_edge, label %for.body.lr.ph.i349

if.then78.cleanup185_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

for.body.lr.ph.i349:                              ; preds = %if.then78
  %possible_encoders.i348 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %89 = ptrtoint ptr %possible_encoders.i348 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %possible_encoders.i348, align 8
  br label %for.body.i355

for.body.i355:                                    ; preds = %for.inc.i361.for.body.i355_crit_edge, %for.body.lr.ph.i349
  %.pn5.i350 = phi ptr [ %.pn3.i346, %for.body.lr.ph.i349 ], [ %.pn.i359, %for.inc.i361.for.body.i355_crit_edge ]
  %index.i.i.i351 = getelementptr i8, ptr %.pn5.i350, i32 36
  %91 = ptrtoint ptr %index.i.i.i351 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index.i.i.i351, align 4
  %shl.i.i352 = shl nuw i32 1, %92
  %and.i353 = and i32 %shl.i.i352, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i353)
  %tobool.not.i354 = icmp eq i32 %and.i353, 0
  br i1 %tobool.not.i354, label %for.body.i355.for.inc.i361_crit_edge, label %if.else.i358

for.body.i355.for.inc.i361_crit_edge:             ; preds = %for.body.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i361

if.else.i358:                                     ; preds = %for.body.i355
  %encoder_type4.i356 = getelementptr i8, ptr %.pn5.i350, i32 32
  %93 = ptrtoint ptr %encoder_type4.i356 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %encoder_type4.i356, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp5.i357 = icmp eq i32 %94, 2
  br i1 %cmp5.i357, label %amdgpu_connector_find_encoder.exit365, label %if.else.i358.for.inc.i361_crit_edge

if.else.i358.for.inc.i361_crit_edge:              ; preds = %if.else.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i361

for.inc.i361:                                     ; preds = %if.else.i358.for.inc.i361_crit_edge, %for.body.i355.for.inc.i361_crit_edge
  %95 = ptrtoint ptr %.pn5.i350 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn.i359 = load ptr, ptr %.pn5.i350, align 4
  %cmp.not.i360 = icmp eq ptr %.pn.i359, %encoder_list.i345
  br i1 %cmp.not.i360, label %for.inc.i361.cleanup185_crit_edge, label %for.inc.i361.for.body.i355_crit_edge

for.inc.i361.for.body.i355_crit_edge:             ; preds = %for.inc.i361
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i355

for.inc.i361.cleanup185_crit_edge:                ; preds = %for.inc.i361
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

amdgpu_connector_find_encoder.exit365:            ; preds = %if.else.i358
  %encoder.0.le.i362 = getelementptr i8, ptr %.pn5.i350, i32 -4
  %tobool80.not = icmp eq ptr %encoder.0.le.i362, null
  br i1 %tobool80.not, label %amdgpu_connector_find_encoder.exit365.cleanup185_crit_edge, label %if.end82

amdgpu_connector_find_encoder.exit365.cleanup185_crit_edge: ; preds = %amdgpu_connector_find_encoder.exit365
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end82:                                         ; preds = %amdgpu_connector_find_encoder.exit365
  %underscan_type = getelementptr i8, ptr %.pn5.i350, i32 96
  %96 = ptrtoint ptr %underscan_type to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %underscan_type, align 4
  %conv86 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv86, i64 %val)
  %cmp87.not = icmp eq i64 %conv86, %val
  br i1 %cmp87.not, label %if.end82.if.end94_crit_edge, label %if.then89

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then89:                                        ; preds = %if.end82
  %conv90 = trunc i64 %val to i32
  %98 = ptrtoint ptr %underscan_type to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv90, ptr %underscan_type, align 4
  %crtc1.i366 = getelementptr i8, ptr %.pn5.i350, i32 48
  %99 = ptrtoint ptr %crtc1.i366 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %crtc1.i366, align 4
  %tobool.not.i367 = icmp eq ptr %100, null
  br i1 %tobool.not.i367, label %if.then89.if.end94_crit_edge, label %land.lhs.true.i370

if.then89.if.end94_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

land.lhs.true.i370:                               ; preds = %if.then89
  %enabled.i368 = getelementptr inbounds %struct.drm_crtc, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %enabled.i368 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %enabled.i368, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool2.not.i369 = icmp eq i8 %102, 0
  br i1 %tobool2.not.i369, label %land.lhs.true.i370.if.end94_crit_edge, label %if.then.i377

land.lhs.true.i370.if.end94_crit_edge:            ; preds = %land.lhs.true.i370
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then.i377:                                     ; preds = %land.lhs.true.i370
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i371 = getelementptr inbounds %struct.drm_crtc, ptr %100, i32 0, i32 12
  %x.i372 = getelementptr inbounds %struct.drm_crtc, ptr %100, i32 0, i32 14
  %103 = ptrtoint ptr %x.i372 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %x.i372, align 4
  %y.i373 = getelementptr inbounds %struct.drm_crtc, ptr %100, i32 0, i32 15
  %105 = ptrtoint ptr %y.i373 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %y.i373, align 8
  %primary.i374 = getelementptr inbounds %struct.drm_crtc, ptr %100, i32 0, i32 6
  %107 = ptrtoint ptr %primary.i374 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %primary.i374, align 4
  %fb.i375 = getelementptr inbounds %struct.drm_plane, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %fb.i375 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fb.i375, align 4
  %call.i376 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %100, ptr noundef %mode.i371, i32 noundef %104, i32 noundef %106, ptr noundef %110) #8
  br label %if.end94

if.end94:                                         ; preds = %if.then.i377, %land.lhs.true.i370.if.end94_crit_edge, %if.then89.if.end94_crit_edge, %if.end82.if.end94_crit_edge, %if.end74.if.end94_crit_edge
  %underscan_hborder_property = getelementptr i8, ptr %1, i32 22100
  %111 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %underscan_hborder_property, align 4
  %cmp96 = icmp eq ptr %112, %property
  br i1 %cmp96, label %if.then98, label %if.end94.if.end114_crit_edge

if.end94.if.end114_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then98:                                        ; preds = %if.end94
  %113 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %connector, align 8
  %encoder_list.i379 = getelementptr inbounds %struct.drm_device, ptr %114, i32 0, i32 30, i32 16
  %115 = ptrtoint ptr %encoder_list.i379 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pn3.i380 = load ptr, ptr %encoder_list.i379, align 4
  %cmp.not4.i381 = icmp eq ptr %.pn3.i380, %encoder_list.i379
  br i1 %cmp.not4.i381, label %if.then98.cleanup185_crit_edge, label %for.body.lr.ph.i383

if.then98.cleanup185_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

for.body.lr.ph.i383:                              ; preds = %if.then98
  %possible_encoders.i382 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %116 = ptrtoint ptr %possible_encoders.i382 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %possible_encoders.i382, align 8
  br label %for.body.i389

for.body.i389:                                    ; preds = %for.inc.i395.for.body.i389_crit_edge, %for.body.lr.ph.i383
  %.pn5.i384 = phi ptr [ %.pn3.i380, %for.body.lr.ph.i383 ], [ %.pn.i393, %for.inc.i395.for.body.i389_crit_edge ]
  %index.i.i.i385 = getelementptr i8, ptr %.pn5.i384, i32 36
  %118 = ptrtoint ptr %index.i.i.i385 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %index.i.i.i385, align 4
  %shl.i.i386 = shl nuw i32 1, %119
  %and.i387 = and i32 %shl.i.i386, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i387)
  %tobool.not.i388 = icmp eq i32 %and.i387, 0
  br i1 %tobool.not.i388, label %for.body.i389.for.inc.i395_crit_edge, label %if.else.i392

for.body.i389.for.inc.i395_crit_edge:             ; preds = %for.body.i389
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i395

if.else.i392:                                     ; preds = %for.body.i389
  %encoder_type4.i390 = getelementptr i8, ptr %.pn5.i384, i32 32
  %120 = ptrtoint ptr %encoder_type4.i390 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %encoder_type4.i390, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp5.i391 = icmp eq i32 %121, 2
  br i1 %cmp5.i391, label %amdgpu_connector_find_encoder.exit399, label %if.else.i392.for.inc.i395_crit_edge

if.else.i392.for.inc.i395_crit_edge:              ; preds = %if.else.i392
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i395

for.inc.i395:                                     ; preds = %if.else.i392.for.inc.i395_crit_edge, %for.body.i389.for.inc.i395_crit_edge
  %122 = ptrtoint ptr %.pn5.i384 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn.i393 = load ptr, ptr %.pn5.i384, align 4
  %cmp.not.i394 = icmp eq ptr %.pn.i393, %encoder_list.i379
  br i1 %cmp.not.i394, label %for.inc.i395.cleanup185_crit_edge, label %for.inc.i395.for.body.i389_crit_edge

for.inc.i395.for.body.i389_crit_edge:             ; preds = %for.inc.i395
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i389

for.inc.i395.cleanup185_crit_edge:                ; preds = %for.inc.i395
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

amdgpu_connector_find_encoder.exit399:            ; preds = %if.else.i392
  %encoder.0.le.i396 = getelementptr i8, ptr %.pn5.i384, i32 -4
  %tobool100.not = icmp eq ptr %encoder.0.le.i396, null
  br i1 %tobool100.not, label %amdgpu_connector_find_encoder.exit399.cleanup185_crit_edge, label %if.end102

amdgpu_connector_find_encoder.exit399.cleanup185_crit_edge: ; preds = %amdgpu_connector_find_encoder.exit399
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end102:                                        ; preds = %amdgpu_connector_find_encoder.exit399
  %underscan_hborder = getelementptr i8, ptr %.pn5.i384, i32 100
  %123 = ptrtoint ptr %underscan_hborder to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %underscan_hborder, align 4
  %conv106 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv106, i64 %val)
  %cmp107.not = icmp eq i64 %conv106, %val
  br i1 %cmp107.not, label %if.end102.if.end114_crit_edge, label %if.then109

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then109:                                       ; preds = %if.end102
  %conv110 = trunc i64 %val to i32
  %125 = ptrtoint ptr %underscan_hborder to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv110, ptr %underscan_hborder, align 4
  %crtc1.i400 = getelementptr i8, ptr %.pn5.i384, i32 48
  %126 = ptrtoint ptr %crtc1.i400 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %crtc1.i400, align 4
  %tobool.not.i401 = icmp eq ptr %127, null
  br i1 %tobool.not.i401, label %if.then109.if.end114_crit_edge, label %land.lhs.true.i404

if.then109.if.end114_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

land.lhs.true.i404:                               ; preds = %if.then109
  %enabled.i402 = getelementptr inbounds %struct.drm_crtc, ptr %127, i32 0, i32 11
  %128 = ptrtoint ptr %enabled.i402 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %enabled.i402, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool2.not.i403 = icmp eq i8 %129, 0
  br i1 %tobool2.not.i403, label %land.lhs.true.i404.if.end114_crit_edge, label %if.then.i411

land.lhs.true.i404.if.end114_crit_edge:           ; preds = %land.lhs.true.i404
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then.i411:                                     ; preds = %land.lhs.true.i404
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i405 = getelementptr inbounds %struct.drm_crtc, ptr %127, i32 0, i32 12
  %x.i406 = getelementptr inbounds %struct.drm_crtc, ptr %127, i32 0, i32 14
  %130 = ptrtoint ptr %x.i406 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %x.i406, align 4
  %y.i407 = getelementptr inbounds %struct.drm_crtc, ptr %127, i32 0, i32 15
  %132 = ptrtoint ptr %y.i407 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %y.i407, align 8
  %primary.i408 = getelementptr inbounds %struct.drm_crtc, ptr %127, i32 0, i32 6
  %134 = ptrtoint ptr %primary.i408 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %primary.i408, align 4
  %fb.i409 = getelementptr inbounds %struct.drm_plane, ptr %135, i32 0, i32 12
  %136 = ptrtoint ptr %fb.i409 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fb.i409, align 4
  %call.i410 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %127, ptr noundef %mode.i405, i32 noundef %131, i32 noundef %133, ptr noundef %137) #8
  br label %if.end114

if.end114:                                        ; preds = %if.then.i411, %land.lhs.true.i404.if.end114_crit_edge, %if.then109.if.end114_crit_edge, %if.end102.if.end114_crit_edge, %if.end94.if.end114_crit_edge
  %underscan_vborder_property = getelementptr i8, ptr %1, i32 22104
  %138 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %underscan_vborder_property, align 8
  %cmp116 = icmp eq ptr %139, %property
  br i1 %cmp116, label %if.then118, label %if.end114.if.end134_crit_edge

if.end114.if.end134_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then118:                                       ; preds = %if.end114
  %140 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %connector, align 8
  %encoder_list.i413 = getelementptr inbounds %struct.drm_device, ptr %141, i32 0, i32 30, i32 16
  %142 = ptrtoint ptr %encoder_list.i413 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pn3.i414 = load ptr, ptr %encoder_list.i413, align 4
  %cmp.not4.i415 = icmp eq ptr %.pn3.i414, %encoder_list.i413
  br i1 %cmp.not4.i415, label %if.then118.cleanup185_crit_edge, label %for.body.lr.ph.i417

if.then118.cleanup185_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

for.body.lr.ph.i417:                              ; preds = %if.then118
  %possible_encoders.i416 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %143 = ptrtoint ptr %possible_encoders.i416 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %possible_encoders.i416, align 8
  br label %for.body.i423

for.body.i423:                                    ; preds = %for.inc.i429.for.body.i423_crit_edge, %for.body.lr.ph.i417
  %.pn5.i418 = phi ptr [ %.pn3.i414, %for.body.lr.ph.i417 ], [ %.pn.i427, %for.inc.i429.for.body.i423_crit_edge ]
  %index.i.i.i419 = getelementptr i8, ptr %.pn5.i418, i32 36
  %145 = ptrtoint ptr %index.i.i.i419 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %index.i.i.i419, align 4
  %shl.i.i420 = shl nuw i32 1, %146
  %and.i421 = and i32 %shl.i.i420, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i421)
  %tobool.not.i422 = icmp eq i32 %and.i421, 0
  br i1 %tobool.not.i422, label %for.body.i423.for.inc.i429_crit_edge, label %if.else.i426

for.body.i423.for.inc.i429_crit_edge:             ; preds = %for.body.i423
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i429

if.else.i426:                                     ; preds = %for.body.i423
  %encoder_type4.i424 = getelementptr i8, ptr %.pn5.i418, i32 32
  %147 = ptrtoint ptr %encoder_type4.i424 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %encoder_type4.i424, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp5.i425 = icmp eq i32 %148, 2
  br i1 %cmp5.i425, label %amdgpu_connector_find_encoder.exit433, label %if.else.i426.for.inc.i429_crit_edge

if.else.i426.for.inc.i429_crit_edge:              ; preds = %if.else.i426
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i429

for.inc.i429:                                     ; preds = %if.else.i426.for.inc.i429_crit_edge, %for.body.i423.for.inc.i429_crit_edge
  %149 = ptrtoint ptr %.pn5.i418 to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn.i427 = load ptr, ptr %.pn5.i418, align 4
  %cmp.not.i428 = icmp eq ptr %.pn.i427, %encoder_list.i413
  br i1 %cmp.not.i428, label %for.inc.i429.cleanup185_crit_edge, label %for.inc.i429.for.body.i423_crit_edge

for.inc.i429.for.body.i423_crit_edge:             ; preds = %for.inc.i429
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i423

for.inc.i429.cleanup185_crit_edge:                ; preds = %for.inc.i429
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

amdgpu_connector_find_encoder.exit433:            ; preds = %if.else.i426
  %encoder.0.le.i430 = getelementptr i8, ptr %.pn5.i418, i32 -4
  %tobool120.not = icmp eq ptr %encoder.0.le.i430, null
  br i1 %tobool120.not, label %amdgpu_connector_find_encoder.exit433.cleanup185_crit_edge, label %if.end122

amdgpu_connector_find_encoder.exit433.cleanup185_crit_edge: ; preds = %amdgpu_connector_find_encoder.exit433
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end122:                                        ; preds = %amdgpu_connector_find_encoder.exit433
  %underscan_vborder = getelementptr i8, ptr %.pn5.i418, i32 104
  %150 = ptrtoint ptr %underscan_vborder to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %underscan_vborder, align 4
  %conv126 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv126, i64 %val)
  %cmp127.not = icmp eq i64 %conv126, %val
  br i1 %cmp127.not, label %if.end122.if.end134_crit_edge, label %if.then129

if.end122.if.end134_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then129:                                       ; preds = %if.end122
  %conv130 = trunc i64 %val to i32
  %152 = ptrtoint ptr %underscan_vborder to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv130, ptr %underscan_vborder, align 4
  %crtc1.i434 = getelementptr i8, ptr %.pn5.i418, i32 48
  %153 = ptrtoint ptr %crtc1.i434 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %crtc1.i434, align 4
  %tobool.not.i435 = icmp eq ptr %154, null
  br i1 %tobool.not.i435, label %if.then129.if.end134_crit_edge, label %land.lhs.true.i438

if.then129.if.end134_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

land.lhs.true.i438:                               ; preds = %if.then129
  %enabled.i436 = getelementptr inbounds %struct.drm_crtc, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %enabled.i436 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %enabled.i436, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool2.not.i437 = icmp eq i8 %156, 0
  br i1 %tobool2.not.i437, label %land.lhs.true.i438.if.end134_crit_edge, label %if.then.i445

land.lhs.true.i438.if.end134_crit_edge:           ; preds = %land.lhs.true.i438
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then.i445:                                     ; preds = %land.lhs.true.i438
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i439 = getelementptr inbounds %struct.drm_crtc, ptr %154, i32 0, i32 12
  %x.i440 = getelementptr inbounds %struct.drm_crtc, ptr %154, i32 0, i32 14
  %157 = ptrtoint ptr %x.i440 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %x.i440, align 4
  %y.i441 = getelementptr inbounds %struct.drm_crtc, ptr %154, i32 0, i32 15
  %159 = ptrtoint ptr %y.i441 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %y.i441, align 8
  %primary.i442 = getelementptr inbounds %struct.drm_crtc, ptr %154, i32 0, i32 6
  %161 = ptrtoint ptr %primary.i442 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %primary.i442, align 4
  %fb.i443 = getelementptr inbounds %struct.drm_plane, ptr %162, i32 0, i32 12
  %163 = ptrtoint ptr %fb.i443 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %fb.i443, align 4
  %call.i444 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %154, ptr noundef %mode.i439, i32 noundef %158, i32 noundef %160, ptr noundef %164) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then.i445, %land.lhs.true.i438.if.end134_crit_edge, %if.then129.if.end134_crit_edge, %if.end122.if.end134_crit_edge, %if.end114.if.end134_crit_edge
  %load_detect_property = getelementptr i8, ptr %1, i32 22092
  %165 = ptrtoint ptr %load_detect_property to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %load_detect_property, align 4
  %cmp136 = icmp eq ptr %166, %property
  br i1 %cmp136, label %if.then138, label %if.end134.if.end148_crit_edge

if.end134.if.end148_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp143 = icmp ne i64 %val, 0
  %dac_load_detect = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 8
  %. = zext i1 %cmp143 to i8
  %167 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %., ptr %dac_load_detect, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then138, %if.end134.if.end148_crit_edge
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 73
  %168 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %scaling_mode_property, align 4
  %cmp149 = icmp eq ptr %169, %property
  br i1 %cmp149, label %if.then151, label %if.end148.cleanup185_crit_edge

if.end148.cleanup185_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.then151:                                       ; preds = %if.end148
  %encoder152 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 41
  %170 = ptrtoint ptr %encoder152 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %encoder152, align 4
  %tobool153.not = icmp eq ptr %171, null
  br i1 %tobool153.not, label %if.else159, label %if.then151.if.end164_crit_edge

if.then151.if.end164_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.else159:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %172 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %helper_private, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %best_encoder, align 4
  %call161 = tail call ptr %175(ptr noundef %connector) #8
  br label %if.end164

if.end164:                                        ; preds = %if.else159, %if.then151.if.end164_crit_edge
  %amdgpu_encoder.0 = phi ptr [ %call161, %if.else159 ], [ %171, %if.then151.if.end164_crit_edge ]
  %switch.tableidx = add i64 %val, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %switch.tableidx)
  %176 = icmp ult i64 %switch.tableidx, 3
  br i1 %176, label %switch.lookup, label %sw.epilog.thread

switch.lookup:                                    ; preds = %if.end164
  %switch.idx.cast = trunc i64 %switch.tableidx to i32
  %switch.offset = add i32 %switch.idx.cast, 1
  %rmx_type168 = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder.0, i32 0, i32 7
  %177 = ptrtoint ptr %rmx_type168 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rmx_type168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %switch.offset)
  %cmp169 = icmp eq i32 %178, %switch.offset
  br i1 %cmp169, label %switch.lookup.cleanup185_crit_edge, label %land.lhs.true

switch.lookup.cleanup185_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

sw.epilog.thread:                                 ; preds = %if.end164
  %rmx_type168474 = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder.0, i32 0, i32 7
  %179 = ptrtoint ptr %rmx_type168474 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rmx_type168474, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp169475 = icmp eq i32 %180, 0
  br i1 %cmp169475, label %sw.epilog.thread.cleanup185_crit_edge, label %sw.epilog.thread.if.end178_crit_edge

sw.epilog.thread.if.end178_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

sw.epilog.thread.cleanup185_crit_edge:            ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

land.lhs.true:                                    ; preds = %switch.lookup
  %native_mode = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder.0, i32 0, i32 11
  %181 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %native_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp175 = icmp eq i32 %182, 0
  br i1 %cmp175, label %land.lhs.true.cleanup185_crit_edge, label %land.lhs.true.if.end178_crit_edge

land.lhs.true.if.end178_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

land.lhs.true.cleanup185_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end178:                                        ; preds = %land.lhs.true.if.end178_crit_edge, %sw.epilog.thread.if.end178_crit_edge
  %rmx_type.0477483 = phi i32 [ %switch.offset, %land.lhs.true.if.end178_crit_edge ], [ 0, %sw.epilog.thread.if.end178_crit_edge ]
  %rmx_type168478482 = phi ptr [ %rmx_type168, %land.lhs.true.if.end178_crit_edge ], [ %rmx_type168474, %sw.epilog.thread.if.end178_crit_edge ]
  %183 = ptrtoint ptr %rmx_type168478482 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %rmx_type.0477483, ptr %rmx_type168478482, align 4
  %crtc1.i447 = getelementptr inbounds %struct.drm_encoder, ptr %amdgpu_encoder.0, i32 0, i32 8
  %184 = ptrtoint ptr %crtc1.i447 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %crtc1.i447, align 4
  %tobool.not.i448 = icmp eq ptr %185, null
  br i1 %tobool.not.i448, label %if.end178.cleanup185_crit_edge, label %land.lhs.true.i451

if.end178.cleanup185_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

land.lhs.true.i451:                               ; preds = %if.end178
  %enabled.i449 = getelementptr inbounds %struct.drm_crtc, ptr %185, i32 0, i32 11
  %186 = ptrtoint ptr %enabled.i449 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %enabled.i449, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool2.not.i450 = icmp eq i8 %187, 0
  br i1 %tobool2.not.i450, label %land.lhs.true.i451.cleanup185_crit_edge, label %if.then.i458

land.lhs.true.i451.cleanup185_crit_edge:          ; preds = %land.lhs.true.i451
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.then.i458:                                     ; preds = %land.lhs.true.i451
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i452 = getelementptr inbounds %struct.drm_crtc, ptr %185, i32 0, i32 12
  %x.i453 = getelementptr inbounds %struct.drm_crtc, ptr %185, i32 0, i32 14
  %188 = ptrtoint ptr %x.i453 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %x.i453, align 4
  %y.i454 = getelementptr inbounds %struct.drm_crtc, ptr %185, i32 0, i32 15
  %190 = ptrtoint ptr %y.i454 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %y.i454, align 8
  %primary.i455 = getelementptr inbounds %struct.drm_crtc, ptr %185, i32 0, i32 6
  %192 = ptrtoint ptr %primary.i455 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %primary.i455, align 4
  %fb.i456 = getelementptr inbounds %struct.drm_plane, ptr %193, i32 0, i32 12
  %194 = ptrtoint ptr %fb.i456 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %fb.i456, align 4
  %call.i457 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %185, ptr noundef %mode.i452, i32 noundef %189, i32 noundef %191, ptr noundef %195) #8
  br label %cleanup185

cleanup185:                                       ; preds = %if.then.i458, %land.lhs.true.i451.cleanup185_crit_edge, %if.end178.cleanup185_crit_edge, %land.lhs.true.cleanup185_crit_edge, %sw.epilog.thread.cleanup185_crit_edge, %switch.lookup.cleanup185_crit_edge, %if.end148.cleanup185_crit_edge, %amdgpu_connector_find_encoder.exit433.cleanup185_crit_edge, %for.inc.i429.cleanup185_crit_edge, %if.then118.cleanup185_crit_edge, %amdgpu_connector_find_encoder.exit399.cleanup185_crit_edge, %for.inc.i395.cleanup185_crit_edge, %if.then98.cleanup185_crit_edge, %amdgpu_connector_find_encoder.exit365.cleanup185_crit_edge, %for.inc.i361.cleanup185_crit_edge, %if.then78.cleanup185_crit_edge, %amdgpu_connector_find_encoder.exit331.cleanup185_crit_edge, %for.inc.i327.cleanup185_crit_edge, %if.then51.cleanup185_crit_edge, %amdgpu_connector_find_encoder.exit297.cleanup185_crit_edge, %for.inc.i293.cleanup185_crit_edge, %if.then25.cleanup185_crit_edge, %if.end.cleanup185_crit_edge, %amdgpu_connector_find_encoder.exit.cleanup185_crit_edge, %for.inc.i.cleanup185_crit_edge, %if.then.cleanup185_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_late_register(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_bus, align 8
  %has_aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_aux, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 1
  %4 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kdev, align 4
  %dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev, align 8
  %7 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddc_bus, align 8
  %aux3 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %8, i32 0, i32 4
  %call = tail call i32 @drm_dp_aux_register(ptr noundef %aux3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_connector_unregister(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_bus, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_aux, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 4
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #8
  %4 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc_bus, align 8
  %has_aux5 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %has_aux5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %has_aux5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %edid.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %0 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid.i, align 8
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %edid.i, align 8
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %3 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con_priv, align 4
  tail call void @kfree(ptr noundef %4) #8
  tail call void @drm_connector_unregister(ptr noundef %connector) #8
  tail call void @drm_connector_cleanup(ptr noundef %connector) #8
  tail call void @kfree(ptr noundef %connector) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @amdgpu_connector_best_single_encoder(ptr nocapture noundef readonly %connector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders, align 8
  %index.i.i = getelementptr i8, ptr %.pn, i32 36
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and = and i32 %shl.i, %4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %cleanup.split.loop.exit14

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

cleanup.split.loop.exit14:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit14, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %encoder.0.le, %cleanup.split.loop.exit14 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_kms_helper_is_poll_worker() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_setup_ext_encoder_ddc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_display_ddc_probe(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_set_subconnector_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_set_bios_scratch_regs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_dp_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %amdgpu_connector_best_single_encoder.exit

amdgpu_connector_best_single_encoder.exit:        ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %9 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connector_type, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %10, label %if.else43 [
    i32 14, label %if.then5
    i32 7, label %if.else
  ]

if.then5:                                         ; preds = %amdgpu_connector_best_single_encoder.exit
  %edp_on = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %edp_on, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then6, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr noundef %connector, i32 noundef 12) #8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then5.if.end_crit_edge
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %edid.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %14 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edid.i, align 8
  %tobool.not.i96 = icmp eq ptr %15, null
  br i1 %tobool.not.i96, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %15) #8
  %16 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edid.i, align 8
  %call3.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %17) #8
  br label %amdgpu_connector_ddc_get_modes.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %amdgpu_connector_ddc_get_modes.exit

amdgpu_connector_ddc_get_modes.exit:              ; preds = %if.end.i, %if.then.i
  %retval.0.i97 = phi i32 [ %call3.i, %if.then.i ], [ 0, %if.end.i ]
  %18 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %edp_on, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %if.then11, label %amdgpu_connector_ddc_get_modes.exit.if.end23_crit_edge

amdgpu_connector_ddc_get_modes.exit.if.end23_crit_edge: ; preds = %amdgpu_connector_ddc_get_modes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then11:                                        ; preds = %amdgpu_connector_ddc_get_modes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr noundef %connector, i32 noundef 13) #8
  br label %if.end23

if.else:                                          ; preds = %amdgpu_connector_best_single_encoder.exit
  %20 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn20.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %encoder_list.i
  br i1 %cmp.not21.i, label %if.else.if.end21_crit_edge, label %for.body.lr.ph.i

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.body.lr.ph.i:                                 ; preds = %if.else
  %21 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.inc.i.for.body.i104_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i105, %for.inc.i.for.body.i104_crit_edge ]
  %index.i.i.i100 = getelementptr i8, ptr %.pn22.i, i32 36
  %23 = ptrtoint ptr %index.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i.i100, align 4
  %shl.i.i101 = shl nuw i32 1, %24
  %and.i102 = and i32 %shl.i.i101, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %for.body.i104.for.inc.i_crit_edge, label %if.else.i

for.body.i104.for.inc.i_crit_edge:                ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i104
  %encoder_id.i = getelementptr i8, ptr %.pn22.i, i32 72
  %25 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %encoder_id.i, align 4
  %27 = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %27)
  %switch.i = icmp eq i32 %27, 34
  br i1 %switch.i, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i104.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i105 = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i106 = icmp eq ptr %.pn.i105, %encoder_list.i
  br i1 %cmp.not.i106, label %for.inc.i.if.end21_crit_edge, label %for.inc.i.for.body.i104_crit_edge

for.inc.i.for.body.i104_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i104

for.inc.i.if.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit: ; preds = %if.else.i
  %tobool18.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool18.not, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.end21_crit_edge, label %if.then19

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.end21_crit_edge: ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_atombios_encoder_setup_ext_encoder_ddc(ptr noundef nonnull %retval.0.i) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.end21_crit_edge, %for.inc.i.if.end21_crit_edge, %if.else.if.end21_crit_edge
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %edid.i108 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %29 = ptrtoint ptr %edid.i108 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edid.i108, align 8
  %tobool.not.i109 = icmp eq ptr %30, null
  br i1 %tobool.not.i109, label %if.end23.thread, label %if.then.i112

if.then.i112:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call.i110 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %30) #8
  %31 = ptrtoint ptr %edid.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edid.i108, align 8
  %call3.i111 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %32) #8
  br label %if.end23

if.end23.thread:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i113 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %if.end30

if.end23:                                         ; preds = %if.then.i112, %if.then11, %amdgpu_connector_ddc_get_modes.exit.if.end23_crit_edge
  %ret.0 = phi i32 [ %retval.0.i97, %amdgpu_connector_ddc_get_modes.exit.if.end23_crit_edge ], [ %retval.0.i97, %if.then11 ], [ %call3.i111, %if.then.i112 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp24 = icmp sgt i32 %ret.0, 0
  br i1 %cmp24, label %if.then26, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end23
  %tobool27.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool27.not, label %if.then26.cleanup55_crit_edge, label %if.then28

if.then26.cleanup55_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @amdgpu_connector_fixup_lcd_native_mode(ptr noundef nonnull %retval.0.i, ptr noundef %connector)
  tail call fastcc void @amdgpu_connector_add_common_modes(ptr noundef nonnull %retval.0.i, ptr noundef %connector)
  br label %cleanup55

if.end30:                                         ; preds = %if.end23.if.end30_crit_edge, %if.end23.thread
  %ret.0155 = phi i32 [ 0, %if.end23.thread ], [ %ret.0, %if.end23.if.end30_crit_edge ]
  %tobool31.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool31.not, label %if.end30.cleanup55_crit_edge, label %if.end33

if.end30.cleanup55_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.end33:                                         ; preds = %if.end30
  %call34 = tail call fastcc ptr @amdgpu_connector_lcd_native_mode(ptr noundef nonnull %retval.0.i)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.cleanup55_crit_edge, label %if.then36

if.end33.cleanup55_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call34) #8
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call34, i32 0, i32 26
  %33 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %width_mm, align 2
  %conv37 = zext i16 %34 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %35 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv37, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call34, i32 0, i32 27
  %36 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %height_mm, align 4
  %conv39 = zext i16 %37 to i32
  %height_mm41 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %38 = ptrtoint ptr %height_mm41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv39, ptr %height_mm41, align 4
  tail call fastcc void @amdgpu_connector_add_common_modes(ptr noundef nonnull %retval.0.i, ptr noundef %connector)
  br label %cleanup55

if.else43:                                        ; preds = %amdgpu_connector_best_single_encoder.exit
  %39 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn20.i118 = load ptr, ptr %encoder_list.i, align 4
  %cmp.not21.i119 = icmp eq ptr %.pn20.i118, %encoder_list.i
  br i1 %cmp.not21.i119, label %if.else43.if.end52_crit_edge, label %for.body.lr.ph.i121

if.else43.if.end52_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.body.lr.ph.i121:                              ; preds = %if.else43
  %40 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i127

for.body.i127:                                    ; preds = %for.inc.i135.for.body.i127_crit_edge, %for.body.lr.ph.i121
  %.pn22.i122 = phi ptr [ %.pn20.i118, %for.body.lr.ph.i121 ], [ %.pn.i133, %for.inc.i135.for.body.i127_crit_edge ]
  %index.i.i.i123 = getelementptr i8, ptr %.pn22.i122, i32 36
  %42 = ptrtoint ptr %index.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i.i.i123, align 4
  %shl.i.i124 = shl nuw i32 1, %43
  %and.i125 = and i32 %shl.i.i124, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.not.i126 = icmp eq i32 %and.i125, 0
  br i1 %tobool.not.i126, label %for.body.i127.for.inc.i135_crit_edge, label %if.else.i130

for.body.i127.for.inc.i135_crit_edge:             ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i135

if.else.i130:                                     ; preds = %for.body.i127
  %encoder_id.i128 = getelementptr i8, ptr %.pn22.i122, i32 72
  %44 = ptrtoint ptr %encoder_id.i128 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %encoder_id.i128, align 4
  %46 = and i32 %45, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %46)
  %switch.i129 = icmp eq i32 %46, 34
  br i1 %switch.i129, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit137, label %if.else.i130.for.inc.i135_crit_edge

if.else.i130.for.inc.i135_crit_edge:              ; preds = %if.else.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i135

for.inc.i135:                                     ; preds = %if.else.i130.for.inc.i135_crit_edge, %for.body.i127.for.inc.i135_crit_edge
  %47 = ptrtoint ptr %.pn22.i122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i133 = load ptr, ptr %.pn22.i122, align 4
  %cmp.not.i134 = icmp eq ptr %.pn.i133, %encoder_list.i
  br i1 %cmp.not.i134, label %for.inc.i135.if.end52_crit_edge, label %for.inc.i135.for.body.i127_crit_edge

for.inc.i135.for.body.i127_crit_edge:             ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i127

for.inc.i135.if.end52_crit_edge:                  ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit137: ; preds = %if.else.i130
  %tobool49.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool49.not, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit137.if.end52_crit_edge, label %if.then50

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit137.if.end52_crit_edge: ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit137
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_atombios_encoder_setup_ext_encoder_ddc(ptr noundef nonnull %retval.0.i) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit137.if.end52_crit_edge, %for.inc.i135.if.end52_crit_edge, %if.else43.if.end52_crit_edge
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %edid.i138 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %48 = ptrtoint ptr %edid.i138 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %edid.i138, align 8
  %tobool.not.i139 = icmp eq ptr %49, null
  br i1 %tobool.not.i139, label %if.end.i144, label %if.then.i142

if.then.i142:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %call.i140 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %49) #8
  %50 = ptrtoint ptr %edid.i138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %edid.i138, align 8
  %call3.i141 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %51) #8
  br label %amdgpu_connector_ddc_get_modes.exit146

if.end.i144:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i143 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %amdgpu_connector_ddc_get_modes.exit146

amdgpu_connector_ddc_get_modes.exit146:           ; preds = %if.end.i144, %if.then.i142
  %retval.0.i145 = phi i32 [ %call3.i141, %if.then.i142 ], [ 0, %if.end.i144 ]
  %52 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %connector, align 8
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 30, i32 16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %amdgpu_connector_ddc_get_modes.exit146
  %.pn.in.i.i = phi ptr [ %encoder_list.i.i, %amdgpu_connector_ddc_get_modes.exit146 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %54 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %encoder_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup55_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup55_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

for.body.i.i:                                     ; preds = %for.cond.i.i
  %55 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 36
  %57 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %58
  %and.i.i = and i32 %shl.i.i.i, %56
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %amdgpu_connector_best_single_encoder.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

amdgpu_connector_best_single_encoder.exit.i:      ; preds = %for.body.i.i
  %encoder.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %cmp.i = icmp eq ptr %encoder.0.le.i.i, null
  br i1 %cmp.i, label %amdgpu_connector_best_single_encoder.exit.i.cleanup55_crit_edge, label %if.end.i147

amdgpu_connector_best_single_encoder.exit.i.cleanup55_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.end.i147:                                      ; preds = %amdgpu_connector_best_single_encoder.exit.i
  %probed_modes.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %59 = ptrtoint ptr %probed_modes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %probed_modes.i, align 4
  %cmp.i.not.i = icmp eq ptr %60, %probed_modes.i
  br i1 %cmp.i.not.i, label %if.else.i148, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6.i = getelementptr i8, ptr %60, i32 -64
  %native_mode.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %61 = call ptr @memcpy(ptr %native_mode.i, ptr %add.ptr6.i, i32 112)
  br label %cleanup55

if.else.i148:                                     ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  %native_mode7.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %62 = ptrtoint ptr %native_mode7.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %native_mode7.i, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %if.else.i148, %if.then2.i, %amdgpu_connector_best_single_encoder.exit.i.cleanup55_crit_edge, %for.cond.i.i.cleanup55_crit_edge, %if.then36, %if.end33.cleanup55_crit_edge, %if.end30.cleanup55_crit_edge, %if.then28, %if.then26.cleanup55_crit_edge
  %retval.1 = phi i32 [ 1, %if.then36 ], [ %ret.0155, %if.end33.cleanup55_crit_edge ], [ %retval.0.i145, %amdgpu_connector_best_single_encoder.exit.i.cleanup55_crit_edge ], [ %retval.0.i145, %if.then2.i ], [ %retval.0.i145, %if.else.i148 ], [ 0, %if.end30.cleanup55_crit_edge ], [ %ret.0, %if.then26.cleanup55_crit_edge ], [ %ret.0, %if.then28 ], [ %retval.0.i145, %for.cond.i.i.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_dp_mode_valid(ptr noundef %connector, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %0 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %if.else [
    i32 14, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge105
  ]

entry.if.then_crit_edge105:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge105
  %3 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.then ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %6 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %8 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %9
  %and.i = and i32 %shl.i.i, %7
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %amdgpu_connector_best_single_encoder.exit

amdgpu_connector_best_single_encoder.exit:        ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge ]
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %11)
  %cmp3 = icmp ult i16 %11, 320
  br i1 %cmp3, label %amdgpu_connector_best_single_encoder.exit.cleanup78_crit_edge, label %lor.lhs.false5

amdgpu_connector_best_single_encoder.exit.cleanup78_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

lor.lhs.false5:                                   ; preds = %amdgpu_connector_best_single_encoder.exit
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %12 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %13)
  %cmp7 = icmp ult i16 %13, 240
  br i1 %cmp7, label %lor.lhs.false5.cleanup78_crit_edge, label %if.end

lor.lhs.false5.cleanup78_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end:                                           ; preds = %lor.lhs.false5
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end.cleanup78_crit_edge, label %if.then10

if.end.cleanup78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.then10:                                        ; preds = %if.end
  %hdisplay17 = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %hdisplay17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdisplay17, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %15)
  %cmp19 = icmp ugt i16 %11, %15
  br i1 %cmp19, label %if.then10.cleanup78_crit_edge, label %lor.lhs.false21

if.then10.cleanup78_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

lor.lhs.false21:                                  ; preds = %if.then10
  %vdisplay24 = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %16 = ptrtoint ptr %vdisplay24 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay24, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp26 = icmp ugt i16 %13, %17
  br i1 %cmp26, label %lor.lhs.false21.cleanup78_crit_edge, label %if.end29

lor.lhs.false21.cleanup78_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end29:                                         ; preds = %lor.lhs.false21
  %rmx_type = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 7
  %18 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp30 = icmp eq i32 %19, 0
  br i1 %cmp30, label %if.then32, label %if.end29.if.end50.critedge_crit_edge

if.end29.if.end50.critedge_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.critedge

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %15)
  %cmp37.not = icmp eq i16 %11, %15
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp44.not = icmp eq i16 %13, %17
  %or.cond = select i1 %cmp37.not, i1 %cmp44.not, i1 false
  br i1 %or.cond, label %if.then32.if.end50.critedge_crit_edge, label %if.then32.cleanup78_crit_edge

if.then32.cleanup78_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.then32.if.end50.critedge_crit_edge:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.critedge

if.end50.critedge:                                ; preds = %if.then32.if.end50.critedge_crit_edge, %if.end29.if.end50.critedge_crit_edge
  br label %cleanup78

if.else:                                          ; preds = %entry
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %20 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %23, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call i32 @amdgpu_atombios_dp_mode_valid_helper(ptr noundef %connector, ptr noundef %mode) #8
  br label %cleanup78

if.else62:                                        ; preds = %if.else
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 11
  %24 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_hdmi, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool63.not = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  br i1 %tobool63.not, label %if.else69, label %if.then64

if.then64:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %27)
  %cmp65 = icmp sgt i32 %27, 340000
  br i1 %cmp65, label %if.then64.cleanup78_crit_edge, label %if.then64.if.end77_crit_edge

if.then64.if.end77_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then64.cleanup78_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.else69:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %27)
  %cmp71 = icmp sgt i32 %27, 165000
  br i1 %cmp71, label %if.else69.cleanup78_crit_edge, label %if.else69.if.end77_crit_edge

if.else69.if.end77_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.else69.cleanup78_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end77:                                         ; preds = %if.else69.if.end77_crit_edge, %if.then64.if.end77_crit_edge
  br label %cleanup78

cleanup78:                                        ; preds = %if.end77, %if.else69.cleanup78_crit_edge, %if.then64.cleanup78_crit_edge, %if.then60, %if.end50.critedge, %if.then32.cleanup78_crit_edge, %lor.lhs.false21.cleanup78_crit_edge, %if.then10.cleanup78_crit_edge, %if.end.cleanup78_crit_edge, %lor.lhs.false5.cleanup78_crit_edge, %amdgpu_connector_best_single_encoder.exit.cleanup78_crit_edge
  %retval.2 = phi i32 [ %call61, %if.then60 ], [ 0, %if.end77 ], [ 29, %lor.lhs.false5.cleanup78_crit_edge ], [ 29, %amdgpu_connector_best_single_encoder.exit.cleanup78_crit_edge ], [ 29, %if.then32.cleanup78_crit_edge ], [ 29, %if.then10.cleanup78_crit_edge ], [ 29, %lor.lhs.false21.cleanup78_crit_edge ], [ 0, %if.end50.critedge ], [ 0, %if.end.cleanup78_crit_edge ], [ 15, %if.then64.cleanup78_crit_edge ], [ 15, %if.else69.cleanup78_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @amdgpu_connector_dvi_encoder(ptr nocapture noundef readonly %connector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %2 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn83 = load ptr, ptr %encoder_list, align 4
  %cmp.not84 = icmp eq ptr %.pn83, %encoder_list
  br i1 %cmp.not84, label %entry.for.cond37.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond37.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37.preheader

for.body.lr.ph:                                   ; preds = %entry
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %3 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders, align 8
  %use_digital = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  br label %for.body

for.cond37.preheader:                             ; preds = %for.inc.for.cond37.preheader_crit_edge, %entry.for.cond37.preheader_crit_edge
  %possible_encoders46 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond37

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn85 = phi ptr [ %.pn83, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn85, i32 36
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and = and i32 %shl.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %7 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_digital, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %encoder_type15 = getelementptr i8, ptr %.pn85, i32 32
  %9 = ptrtoint ptr %encoder_type15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_type15, align 4
  br i1 %tobool7.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp11 = icmp eq i32 %10, 2
  br i1 %cmp11, label %if.then10.cleanup.loopexit81_crit_edge, label %if.then10.for.inc_crit_edge

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10.cleanup.loopexit81_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.loopexit81

if.else14:                                        ; preds = %if.else
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %10, label %if.else14.for.inc_crit_edge [
    i32 1, label %if.else14.cleanup.loopexit81_crit_edge
    i32 4, label %if.else14.cleanup.loopexit81_crit_edge98
  ]

if.else14.cleanup.loopexit81_crit_edge98:         ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.loopexit81

if.else14.cleanup.loopexit81_crit_edge:           ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.loopexit81

if.else14.for.inc_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.else14.for.inc_crit_edge, %if.then10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.for.cond37.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.cond37.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37.preheader

for.cond37:                                       ; preds = %for.body45.for.cond37_crit_edge, %for.cond37.preheader
  %.pn78.in = phi ptr [ %.pn78, %for.body45.for.cond37_crit_edge ], [ %encoder_list, %for.cond37.preheader ]
  %13 = ptrtoint ptr %.pn78.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn78 = load ptr, ptr %.pn78.in, align 4
  %cmp42.not = icmp eq ptr %.pn78, %encoder_list
  br i1 %cmp42.not, label %for.cond37.cleanup_crit_edge, label %for.body45

for.cond37.cleanup_crit_edge:                     ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body45:                                       ; preds = %for.cond37
  %14 = ptrtoint ptr %possible_encoders46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %possible_encoders46, align 8
  %index.i.i79 = getelementptr i8, ptr %.pn78, i32 36
  %16 = ptrtoint ptr %index.i.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i79, align 4
  %shl.i80 = shl nuw i32 1, %17
  %and48 = and i32 %shl.i80, %15
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.body45.for.cond37_crit_edge, label %cleanup.loopexit.split.loop.exit

for.body45.for.cond37_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.1.le = getelementptr i8, ptr %.pn78, i32 -4
  br label %cleanup

cleanup.loopexit81:                               ; preds = %if.else14.cleanup.loopexit81_crit_edge, %if.else14.cleanup.loopexit81_crit_edge98, %if.then10.cleanup.loopexit81_crit_edge
  %encoder.0.le = getelementptr i8, ptr %.pn85, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit81, %cleanup.loopexit.split.loop.exit, %for.cond37.cleanup_crit_edge
  %retval.0 = phi ptr [ %encoder.0.le, %cleanup.loopexit81 ], [ %encoder.1.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond37.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_connector_get_edid(ptr noundef %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %edid = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddc_valid = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 12, i32 3
  %4 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ddc_valid, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_i2c_router_select_ddc_port(ptr noundef %connector) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 16
  %8 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn20.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %encoder_list.i
  br i1 %cmp.not21.i, label %if.end4.if.else_crit_edge, label %for.body.lr.ph.i

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.end4
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %9 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn22.i, i32 36
  %11 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %12
  %and.i = and i32 %shl.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %encoder_id.i = getelementptr i8, ptr %.pn22.i, i32 72
  %13 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %encoder_id.i, align 4
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %15)
  %switch.i = icmp eq i32 %15, 34
  br i1 %switch.i, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %16 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit: ; preds = %if.else.i
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %17 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddc_bus, align 8
  %has_aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_aux, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not = icmp eq i8 %20, 0
  br i1 %tobool7.not, label %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.else_crit_edge, label %if.then9

amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.else_crit_edge: ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then9:                                         ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ddc = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %18, i32 0, i32 4, i32 1
  %call11 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc) #8
  %21 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call11, ptr %edid, align 8
  br label %if.end57

if.else:                                          ; preds = %amdgpu_connector_encoder_get_dp_bridge_encoder_id.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end4.if.else_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %22 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connector_type, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %23, label %if.else47 [
    i32 10, label %if.else.if.then18_crit_edge
    i32 14, label %if.else.if.then18_crit_edge114
  ]

if.else.if.then18_crit_edge114:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.else.if.then18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %if.else.if.then18_crit_edge, %if.else.if.then18_crit_edge114
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %25 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %28, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true27, label %if.then18.if.else38_crit_edge

if.then18.if.else38_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else38

land.lhs.true27:                                  ; preds = %if.then18
  %ddc_bus28 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %29 = ptrtoint ptr %ddc_bus28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddc_bus28, align 8
  %has_aux29 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %has_aux29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_aux29, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool30.not = icmp eq i8 %32, 0
  br i1 %tobool30.not, label %land.lhs.true27.if.else38_crit_edge, label %if.then32

land.lhs.true27.if.else38_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else38

if.then32:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  %ddc35 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %30, i32 0, i32 4, i32 1
  %call36 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc35) #8
  %33 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call36, ptr %edid, align 8
  br label %if.end57

if.else38:                                        ; preds = %land.lhs.true27.if.else38_crit_edge, %if.then18.if.else38_crit_edge
  %ddc_bus39 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %34 = ptrtoint ptr %ddc_bus39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ddc_bus39, align 8
  %tobool40.not = icmp eq ptr %35, null
  br i1 %tobool40.not, label %if.else38.if.end57thread-pre-split_crit_edge, label %if.then41

if.else38.if.end57thread-pre-split_crit_edge:     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57thread-pre-split

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %35) #8
  %36 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call43, ptr %edid, align 8
  br label %if.end57

if.else47:                                        ; preds = %if.else
  %ddc_bus48 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %37 = ptrtoint ptr %ddc_bus48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ddc_bus48, align 8
  %tobool49.not = icmp eq ptr %38, null
  br i1 %tobool49.not, label %if.else47.if.end57thread-pre-split_crit_edge, label %if.then50

if.else47.if.end57thread-pre-split_crit_edge:     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57thread-pre-split

if.then50:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %38) #8
  %39 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call53, ptr %edid, align 8
  br label %if.end57

if.end57thread-pre-split:                         ; preds = %if.else47.if.end57thread-pre-split_crit_edge, %if.else38.if.end57thread-pre-split_crit_edge
  %40 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load ptr, ptr %edid, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end57thread-pre-split, %if.then50, %if.then41, %if.then32, %if.then9
  %41 = phi ptr [ %.pr, %if.end57thread-pre-split ], [ %call36, %if.then32 ], [ %call43, %if.then41 ], [ %call53, %if.then50 ], [ %call11, %if.then9 ]
  %tobool59.not = icmp eq ptr %41, null
  br i1 %tobool59.not, label %if.then60, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  %connector_type61 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %42 = ptrtoint ptr %connector_type61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %connector_type61, align 8
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %43, label %if.then60.cleanup_crit_edge [
    i32 7, label %if.then60.if.then68_crit_edge
    i32 14, label %if.then60.if.then68_crit_edge115
  ]

if.then60.if.then68_crit_edge115:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68

if.then60.if.then68_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68:                                        ; preds = %if.then60.if.then68_crit_edge, %if.then60.if.then68_crit_edge115
  %bios_hardcoded_edid.i = getelementptr i8, ptr %1, i32 22120
  %45 = ptrtoint ptr %bios_hardcoded_edid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bios_hardcoded_edid.i, align 8
  %tobool.not.i110 = icmp eq ptr %46, null
  br i1 %tobool.not.i110, label %if.then68.amdgpu_connector_get_hardcoded_edid.exit_crit_edge, label %if.then.i

if.then68.amdgpu_connector_get_hardcoded_edid.exit_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_get_hardcoded_edid.exit

if.then.i:                                        ; preds = %if.then68
  %bios_hardcoded_edid_size.i = getelementptr i8, ptr %1, i32 22124
  %47 = ptrtoint ptr %bios_hardcoded_edid_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bios_hardcoded_edid_size.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3264) #12
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.amdgpu_connector_get_hardcoded_edid.exit_crit_edge, label %if.then3.i

if.then.i.amdgpu_connector_get_hardcoded_edid.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_get_hardcoded_edid.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %bios_hardcoded_edid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bios_hardcoded_edid.i, align 8
  %51 = ptrtoint ptr %bios_hardcoded_edid_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bios_hardcoded_edid_size.i, align 4
  %53 = call ptr @memcpy(ptr %call9.i.i, ptr %50, i32 %52)
  br label %amdgpu_connector_get_hardcoded_edid.exit

amdgpu_connector_get_hardcoded_edid.exit:         ; preds = %if.then3.i, %if.then.i.amdgpu_connector_get_hardcoded_edid.exit_crit_edge, %if.then68.amdgpu_connector_get_hardcoded_edid.exit_crit_edge
  %retval.0.i111 = phi ptr [ %call9.i.i, %if.then3.i ], [ null, %if.then.i.amdgpu_connector_get_hardcoded_edid.exit_crit_edge ], [ null, %if.then68.amdgpu_connector_get_hardcoded_edid.exit_crit_edge ]
  %54 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i111, ptr %edid, align 8
  %call72 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %retval.0.i111) #8
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_connector_get_hardcoded_edid.exit, %if.then60.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_connector_fixup_lcd_native_mode(ptr noundef %encoder, ptr noundef readonly %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %native_mode1 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11
  %probed_modes = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %0 = ptrtoint ptr %probed_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probed_modes, align 4
  %cmp.not105 = icmp eq ptr %1, %probed_modes
  br i1 %cmp.not105, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hdisplay12 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %vdisplay17 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in106 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn108, %for.inc.for.body_crit_edge ]
  %mode.0107 = getelementptr i8, ptr %.pn.in106, i32 -64
  %2 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn108 = load ptr, ptr %.pn.in106, align 4
  %type = getelementptr i8, ptr %.pn.in106, i32 -2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 2
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %hdisplay = getelementptr i8, ptr %.pn.in106, i32 -60
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %8 = ptrtoint ptr %hdisplay12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay12, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp14.not = icmp eq i16 %7, %9
  br i1 %cmp14.not, label %lor.lhs.false, label %if.then.if.then21_crit_edge

if.then.if.then21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then
  %vdisplay = getelementptr i8, ptr %.pn.in106, i32 -50
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %12 = ptrtoint ptr %vdisplay17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp19.not = icmp eq i16 %11, %13
  br i1 %cmp19.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.then.if.then21_crit_edge
  %14 = call ptr @memcpy(ptr %native_mode1, ptr %mode.0107, i32 112)
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn108, %probed_modes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = ptrtoint ptr %native_mode1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %native_mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not = icmp eq i32 %16, 0
  br i1 %tobool28.not, label %if.then29, label %for.end.if.end72_crit_edge

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then29:                                        ; preds = %for.end
  %17 = ptrtoint ptr %probed_modes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %probed_modes, align 4
  %cmp43.not110 = icmp eq ptr %18, %probed_modes
  br i1 %cmp43.not110, label %if.then29.if.then71_crit_edge, label %for.body46.lr.ph

if.then29.if.then71_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then71

for.body46.lr.ph:                                 ; preds = %if.then29
  %hdisplay49 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %hdisplay49 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdisplay49, align 4
  %vdisplay55 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 6
  br label %for.body46

for.body46:                                       ; preds = %for.inc61.for.body46_crit_edge, %for.body46.lr.ph
  %.pn98.in111 = phi ptr [ %18, %for.body46.lr.ph ], [ %.pn98112, %for.inc61.for.body46_crit_edge ]
  %21 = ptrtoint ptr %.pn98.in111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn98112 = load ptr, ptr %.pn98.in111, align 4
  %hdisplay47 = getelementptr i8, ptr %.pn98.in111, i32 -60
  %22 = ptrtoint ptr %hdisplay47 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay47, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %20)
  %cmp51 = icmp eq i16 %23, %20
  br i1 %cmp51, label %land.lhs.true, label %for.body46.for.inc61_crit_edge

for.body46.for.inc61_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc61

land.lhs.true:                                    ; preds = %for.body46
  %vdisplay53 = getelementptr i8, ptr %.pn98.in111, i32 -50
  %24 = ptrtoint ptr %vdisplay53 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vdisplay53, align 2
  %26 = ptrtoint ptr %vdisplay55 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay55, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp57 = icmp eq i16 %25, %27
  br i1 %cmp57, label %if.then59, label %land.lhs.true.for.inc61_crit_edge

land.lhs.true.for.inc61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc61

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %mode.1.le = getelementptr i8, ptr %.pn98.in111, i32 -64
  %28 = call ptr @memcpy(ptr %native_mode1, ptr %mode.1.le, i32 112)
  tail call void @drm_mode_set_crtcinfo(ptr noundef %native_mode1, i32 noundef 1) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14) #8
  br label %if.end68

for.inc61:                                        ; preds = %land.lhs.true.for.inc61_crit_edge, %for.body46.for.inc61_crit_edge
  %cmp43.not = icmp eq ptr %.pn98112, %probed_modes
  br i1 %cmp43.not, label %for.inc61.if.end68_crit_edge, label %for.inc61.for.body46_crit_edge

for.inc61.for.body46_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46

for.inc61.if.end68_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end68:                                         ; preds = %for.inc61.if.end68_crit_edge, %if.then59
  %29 = ptrtoint ptr %native_mode1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.pr = load i32, ptr %native_mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool70.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool70.not, label %if.end68.if.then71_crit_edge, label %if.end68.if.end72_crit_edge

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end68.if.then71_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then71

if.then71:                                        ; preds = %if.end68.if.then71_crit_edge, %if.then29.if.then71_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15) #8
  %rmx_type = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 7
  %30 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rmx_type, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68.if.end72_crit_edge, %for.end.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_connector_add_common_modes(ptr nocapture noundef readonly %encoder, ptr noundef %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %hdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %vdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devices, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end7_crit_edge, label %if.then

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr [17 x %struct.mode_size], ptr @amdgpu_connector_add_common_modes.common_modes, i32 0, i32 %i.073
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp3 = icmp sgt i32 %5, 1024
  %6 = add nsw i32 %i.073, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp5 = icmp ult i32 %6, 10
  %or.cond77 = select i1 %cmp3, i1 true, i1 %cmp5
  br i1 %or.cond77, label %if.then.for.inc_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %and9 = and i32 %3, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end37_crit_edge, label %if.then11

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then11:                                        ; preds = %if.end7
  %arrayidx12 = getelementptr [17 x %struct.mode_size], ptr @amdgpu_connector_add_common_modes.common_modes, i32 0, i32 %i.073
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx12, align 4
  %9 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp14 = icmp sgt i32 %8, %conv
  br i1 %cmp14, label %if.then11.for.inc_crit_edge, label %lor.lhs.false16

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false16:                                  ; preds = %if.then11
  %h18 = getelementptr [17 x %struct.mode_size], ptr @amdgpu_connector_add_common_modes.common_modes, i32 0, i32 %i.073, i32 1
  %11 = ptrtoint ptr %h18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h18, align 4
  %13 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay, align 2
  %conv19 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv19)
  %cmp20 = icmp sgt i32 %12, %conv19
  br i1 %cmp20, label %lor.lhs.false16.for.inc_crit_edge, label %lor.lhs.false22

lor.lhs.false16.for.inc_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp27 = icmp eq i32 %8, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv19)
  %cmp33 = icmp eq i32 %12, %conv19
  %or.cond = select i1 %cmp27, i1 %cmp33, i1 false
  br i1 %or.cond, label %lor.lhs.false22.for.inc_crit_edge, label %lor.lhs.false22.if.end37_crit_edge

lor.lhs.false22.if.end37_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

lor.lhs.false22.for.inc_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end37:                                         ; preds = %lor.lhs.false22.if.end37_crit_edge, %if.end7.if.end37_crit_edge
  %arrayidx38 = getelementptr [17 x %struct.mode_size], ptr @amdgpu_connector_add_common_modes.common_modes, i32 0, i32 %i.073
  %15 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %16)
  %cmp40 = icmp slt i32 %16, 320
  br i1 %cmp40, label %if.end37.for.inc_crit_edge, label %if.end48

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end48:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %h44 = getelementptr [17 x %struct.mode_size], ptr @amdgpu_connector_add_common_modes.common_modes, i32 0, i32 %i.073, i32 1
  %17 = ptrtoint ptr %h44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h44, align 4
  %call = tail call ptr @drm_cvt_mode(ptr noundef %1, i32 noundef %16, i32 noundef %18, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.end37.for.inc_crit_edge, %lor.lhs.false22.for.inc_crit_edge, %lor.lhs.false16.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @amdgpu_connector_lcd_native_mode(ptr noundef %encoder) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %native_mode2 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11
  %hdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %vdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp5.not = icmp eq i16 %5, 0
  br i1 %cmp5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %native_mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %native_mode2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not = icmp eq i32 %7, 0
  br i1 %cmp8.not, label %if.then20, label %if.then

if.then:                                          ; preds = %land.lhs.true7
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %native_mode2) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #8
  br label %cleanup.sink.split

if.then20:                                        ; preds = %land.lhs.true7
  %conv1253 = zext i16 %3 to i32
  %conv17 = zext i16 %5 to i32
  %call25 = tail call ptr @drm_cvt_mode(ptr noundef %1, i32 noundef %conv1253, i32 noundef %conv17, i32 noundef 60, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then20.cleanup_crit_edge, label %if.end28

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %type29 = getelementptr inbounds %struct.drm_display_mode, ptr %call25, i32 0, i32 28
  %9 = ptrtoint ptr %type29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 72, ptr %type29, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end28, %if.end
  %call.sink = phi ptr [ %call, %if.end ], [ %call25, %if.end28 ]
  %.str.16.sink = phi ptr [ @.str.16, %if.end ], [ @.str.17, %if.end28 ]
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %call.sink, i32 0, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.16.sink, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then20.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %if.then20.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ %call.sink, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_i2c_router_select_ddc_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_dp_mode_valid_helper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_set_lcd_property(ptr noundef %connector, ptr noundef readnone %property, i64 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18) #8
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 73
  %2 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scaling_mode_property, align 4
  %cmp.not = icmp eq ptr %3, %property
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 41
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %6 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %helper_private, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %best_encoder, align 4
  %call = tail call ptr %9(ptr noundef %connector) #8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %amdgpu_encoder.0 = phi ptr [ %call, %if.else ], [ %5, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %value)
  %10 = icmp ult i64 %value, 4
  %switch.idx.cast = trunc i64 %value to i32
  %rmx_type.0 = select i1 %10, i32 %switch.idx.cast, i32 1
  %rmx_type11 = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder.0, i32 0, i32 7
  %11 = ptrtoint ptr %rmx_type11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rmx_type11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %rmx_type.0)
  %cmp12 = icmp eq i32 %12, %rmx_type.0
  br i1 %cmp12, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %rmx_type11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rmx_type.0, ptr %rmx_type11, align 4
  %crtc1.i = getelementptr inbounds %struct.drm_encoder, ptr %amdgpu_encoder.0, i32 0, i32 8
  %14 = ptrtoint ptr %crtc1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %land.lhs.true.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end14
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i = icmp eq i8 %17, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 12
  %x.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 14
  %18 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %x.i, align 4
  %y.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 15
  %20 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y.i, align 8
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %primary.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb.i, align 4
  %call.i = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %15, ptr noundef %mode.i, i32 noundef %19, i32 noundef %21, ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_vga_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end7 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %7 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %9 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %10
  %and.i = and i32 %shl.i.i, %8
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %amdgpu_connector_best_single_encoder.exit

amdgpu_connector_best_single_encoder.exit:        ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %11 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddc_bus, align 8
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %amdgpu_connector_best_single_encoder.exit.if.else33_crit_edge, label %if.then12

amdgpu_connector_best_single_encoder.exit.if.else33_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else33

if.then12:                                        ; preds = %amdgpu_connector_best_single_encoder.exit
  %call13 = tail call zeroext i1 @amdgpu_display_ddc_probe(ptr noundef %connector, i1 noundef zeroext false) #8
  br i1 %call13, label %if.then17, label %if.then12.if.else33_crit_edge

if.then12.if.else33_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else33

if.then17:                                        ; preds = %if.then12
  %detected_by_load = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 9
  %13 = ptrtoint ptr %detected_by_load to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %detected_by_load, align 1
  %edid.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %14 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edid.i, align 8
  tail call void @kfree(ptr noundef %15) #8
  %16 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %edid.i, align 8
  %call.i95 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %17 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edid.i, align 8
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef %20) #8
  br label %if.end53

if.else:                                          ; preds = %if.then17
  %input = getelementptr inbounds %struct.edid, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21 = icmp slt i8 %22, 0
  %use_digital = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %.lobit = lshr i8 %22, 7
  %23 = ptrtoint ptr %use_digital to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.lobit, ptr %use_digital, align 1
  br i1 %tobool21, label %land.lhs.true, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true:                                    ; preds = %if.else
  %shared_ddc = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 4
  %24 = ptrtoint ptr %shared_ddc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shared_ddc, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end53_crit_edge, label %if.then29

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %18) #8
  %26 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %edid.i, align 8
  %call.i97 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %if.end53

if.else33:                                        ; preds = %if.then12.if.else33_crit_edge, %amdgpu_connector_best_single_encoder.exit.if.else33_crit_edge
  br i1 %force, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.else33
  %detected_by_load36 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 9
  %27 = ptrtoint ptr %detected_by_load36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %detected_by_load36, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not = icmp eq i8 %28, 0
  br i1 %tobool37.not, label %if.then35.out_crit_edge, label %if.then38

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 8
  br label %out

if.end40:                                         ; preds = %if.else33
  %dac_load_detect = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 8
  %31 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dac_load_detect, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool41.not = icmp eq i8 %32, 0
  %brmerge = select i1 %tobool41.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end40.if.end53_crit_edge, label %if.then45

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then45:                                        ; preds = %if.end40
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 11
  %33 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %detect, align 4
  %call46 = tail call i32 %36(ptr noundef nonnull %retval.0.i, ptr noundef %connector) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 2
  br i1 %cmp47.not, label %if.then45.if.end53_crit_edge, label %if.then49

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %detected_by_load50 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 9
  %37 = ptrtoint ptr %detected_by_load50 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %detected_by_load50, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.then45.if.end53_crit_edge, %if.end40.if.end53_crit_edge, %if.then29, %land.lhs.true.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.then19
  %ret.1 = phi i32 [ 2, %if.then29 ], [ 1, %if.then19 ], [ %call46, %if.then49 ], [ 2, %if.then45.if.end53_crit_edge ], [ 2, %if.end40.if.end53_crit_edge ], [ 1, %land.lhs.true.if.end53_crit_edge ], [ 1, %if.else.if.end53_crit_edge ]
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %38 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %helper_private.i, align 4
  %best_encoder1.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %best_encoder1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %best_encoder1.i, align 4
  %call.i98 = tail call ptr %41(ptr noundef %connector) #8
  %42 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %connector, align 8
  %encoder_list.i99 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 30, i32 16
  %44 = ptrtoint ptr %encoder_list.i99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn26.i = load ptr, ptr %encoder_list.i99, align 4
  %cmp.not29.i = icmp eq ptr %.pn26.i, %encoder_list.i99
  br i1 %cmp.not29.i, label %if.end53.out_crit_edge, label %for.body.lr.ph.i

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1)
  %cmp7.i = icmp eq i32 %ret.1, 1
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.inc.i.for.body.i105_crit_edge, %for.body.lr.ph.i
  %.pn30.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i106, %for.inc.i.for.body.i105_crit_edge ]
  %45 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i101 = getelementptr i8, ptr %.pn30.i, i32 36
  %47 = ptrtoint ptr %index.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index.i.i.i101, align 4
  %shl.i.i102 = shl nuw i32 1, %48
  %and.i103 = and i32 %shl.i.i102, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %for.body.i105.for.inc.i_crit_edge, label %if.else.i

for.body.i105.for.inc.i_crit_edge:                ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.031.i = getelementptr i8, ptr %.pn30.i, i32 -4
  %cmp6.i = icmp eq ptr %encoder.031.i, %call.i98
  %or.cond.i = and i1 %cmp7.i, %cmp6.i
  tail call void @amdgpu_atombios_encoder_set_bios_scratch_regs(ptr noundef %connector, ptr noundef %encoder.031.i, i1 noundef zeroext %or.cond.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i105.for.inc.i_crit_edge
  %49 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i106 = load ptr, ptr %.pn30.i, align 4
  %50 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %connector, align 8
  %encoder_list4.i = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 30, i32 16
  %cmp.not.i107 = icmp eq ptr %.pn.i106, %encoder_list4.i
  br i1 %cmp.not.i107, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i105_crit_edge

for.inc.i.for.body.i105_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i105

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.i.out_crit_edge, %if.end53.out_crit_edge, %if.then38, %if.then35.out_crit_edge
  %ret.2 = phi i32 [ %30, %if.then38 ], [ 2, %if.then35.out_crit_edge ], [ %ret.1, %if.end53.out_crit_edge ], [ %ret.1, %for.inc.i.out_crit_edge ]
  %call54 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call54, label %out.cleanup_crit_edge, label %if.then55

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %connector, align 8
  %dev57 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev57, align 4
  %call.i108 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 12, i32 22
  %56 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store volatile i64 %call.i108, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then55, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.2, %if.then55 ], [ 2, %if.then.cleanup.sink.split_crit_edge ]
  %57 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %connector, align 8
  %dev59 = getelementptr inbounds %struct.drm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev59, align 4
  %call.i109 = tail call i32 @__pm_runtime_suspend(ptr noundef %60, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_vga_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %edid.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %0 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid.i, align 8
  %call3.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %3) #8
  br label %amdgpu_connector_ddc_get_modes.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %amdgpu_connector_ddc_get_modes.exit

amdgpu_connector_ddc_get_modes.exit:              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i ], [ 0, %if.end.i ]
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 16
  %possible_encoders.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %amdgpu_connector_ddc_get_modes.exit
  %.pn.in.i.i = phi ptr [ %encoder_list.i.i, %amdgpu_connector_ddc_get_modes.exit ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %encoder_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.amdgpu_get_native_mode.exit_crit_edge, label %for.body.i.i

for.cond.i.i.amdgpu_get_native_mode.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_get_native_mode.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %7 = ptrtoint ptr %possible_encoders.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_encoders.i.i, align 8
  %index.i.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 36
  %9 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %10
  %and.i.i = and i32 %shl.i.i.i, %8
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %amdgpu_connector_best_single_encoder.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

amdgpu_connector_best_single_encoder.exit.i:      ; preds = %for.body.i.i
  %encoder.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %cmp.i = icmp eq ptr %encoder.0.le.i.i, null
  br i1 %cmp.i, label %amdgpu_connector_best_single_encoder.exit.i.amdgpu_get_native_mode.exit_crit_edge, label %if.end.i3

amdgpu_connector_best_single_encoder.exit.i.amdgpu_get_native_mode.exit_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_get_native_mode.exit

if.end.i3:                                        ; preds = %amdgpu_connector_best_single_encoder.exit.i
  %probed_modes.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %11 = ptrtoint ptr %probed_modes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %probed_modes.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %probed_modes.i
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6.i = getelementptr i8, ptr %12, i32 -64
  %native_mode.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %13 = call ptr @memcpy(ptr %native_mode.i, ptr %add.ptr6.i, i32 112)
  br label %amdgpu_get_native_mode.exit

if.else.i:                                        ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #10
  %native_mode7.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %14 = ptrtoint ptr %native_mode7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %native_mode7.i, align 4
  br label %amdgpu_get_native_mode.exit

amdgpu_get_native_mode.exit:                      ; preds = %if.else.i, %if.then2.i, %amdgpu_connector_best_single_encoder.exit.i.amdgpu_get_native_mode.exit_crit_edge, %for.cond.i.i.amdgpu_get_native_mode.exit_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_connector_vga_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %div = sdiv i32 %3, 10
  %max_pixel_clock = getelementptr i8, ptr %1, i32 3744
  %4 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pixel_clock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp = icmp ugt i32 %div, %5
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_dvi_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call2, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector, align 8
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %call.i246 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  br i1 %force, label %if.end10.if.end13_crit_edge, label %land.lhs.true

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end10
  %hpd.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 11
  %10 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hpd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 255
  br i1 %cmp.not.i, label %land.lhs.true.if.end13_crit_edge, label %if.then.i

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then.i:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connector, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -8
  %funcs.i = getelementptr i8, ptr %13, i32 22416
  %14 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs.i, align 8
  %hpd_sense.i = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %hpd_sense.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hpd_sense.i, align 4
  %call5.i = tail call zeroext i1 %17(ptr noundef %add.ptr.i.i, i32 noundef %11) #8
  %..i = select i1 %call5.i, i32 1, i32 2
  %status7.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %18 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %..i)
  %cmp8.i = icmp eq i32 %19, %..i
  br i1 %cmp8.i, label %if.then12, label %if.then.i.if.end13_crit_edge

if.then.i.if.end13_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status7.i, align 8
  br label %exit

if.end13:                                         ; preds = %if.then.i.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end10.if.end13_crit_edge
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %22 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddc_bus, align 8
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %if.end13.if.end85_crit_edge, label %if.then15

if.end13.if.end85_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then15:                                        ; preds = %if.end13
  %call16 = tail call zeroext i1 @amdgpu_display_ddc_probe(ptr noundef %connector, i1 noundef zeroext false) #8
  br i1 %call16, label %if.then20, label %if.then15.if.end85_crit_edge

if.then15.if.end85_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then20:                                        ; preds = %if.then15
  %detected_by_load = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 9
  %24 = ptrtoint ptr %detected_by_load to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %detected_by_load, align 1
  %edid.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %25 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %edid.i, align 8
  tail call void @kfree(ptr noundef %26) #8
  %27 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %edid.i, align 8
  %call.i247 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %28 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edid.i, align 8
  %tobool21.not = icmp eq ptr %29, null
  br i1 %tobool21.not, label %if.end75.thread270, label %if.else

if.end75.thread270:                               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef %31) #8
  br label %land.lhs.true78

if.else:                                          ; preds = %if.then20
  %input = getelementptr inbounds %struct.edid, ptr %29, i32 0, i32 8
  %32 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool24 = icmp slt i8 %33, 0
  %use_digital = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %.lobit = lshr i8 %33, 7
  %34 = ptrtoint ptr %use_digital to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.lobit, ptr %use_digital, align 1
  br i1 %tobool24, label %if.else.if.end34_crit_edge, label %land.lhs.true29

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.else
  %shared_ddc = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 4
  %35 = ptrtoint ptr %shared_ddc to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %shared_ddc, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool30.not = icmp eq i8 %36, 0
  br i1 %tobool30.not, label %land.lhs.true29.if.end34_crit_edge, label %if.end34.thread

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34.thread:                                  ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %29) #8
  %37 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %edid.i, align 8
  %call.i249 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %if.end85

if.end34:                                         ; preds = %land.lhs.true29.if.end34_crit_edge, %if.else.if.end34_crit_edge
  %shared_ddc35 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 4
  %38 = ptrtoint ptr %shared_ddc35 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %shared_ddc35, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool36.not = icmp eq i8 %39, 0
  br i1 %tobool36.not, label %if.end34.if.end75_crit_edge, label %if.then41

if.end34.if.end75_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then41:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #8
  %40 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !72
  %41 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %41, align 4, !annotation !72
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %iter) #8
  %funcs = getelementptr i8, ptr %1, i32 22416
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 11
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %if.then69, %if.then41
  %ret.1.ph.ph = phi i32 [ 2, %if.then69 ], [ 1, %if.then41 ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.outer.outer
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %call42 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #8
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %cmp44 = icmp eq ptr %call42, %connector
  br i1 %cmp44, label %while.body.while.cond_crit_edge, label %if.end47

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end47:                                         ; preds = %while.body
  %shared_ddc51 = getelementptr inbounds %struct.amdgpu_connector, ptr %call42, i32 0, i32 4
  %43 = ptrtoint ptr %shared_ddc51 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %shared_ddc51, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool52.not = icmp eq i8 %44, 0
  br i1 %tobool52.not, label %if.end47.while.cond.outer.backedge_crit_edge, label %land.lhs.true54

if.end47.while.cond.outer.backedge_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer.backedge

land.lhs.true54:                                  ; preds = %if.end47
  %ddc_bus55 = getelementptr inbounds %struct.amdgpu_connector, ptr %call42, i32 0, i32 3
  %45 = ptrtoint ptr %ddc_bus55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ddc_bus55, align 8
  %i2c_id = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %46, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %i2c_id, align 1
  %49 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ddc_bus, align 8
  %i2c_id59 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %50, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %i2c_id59 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i2c_id59, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %52)
  %cmp61 = icmp eq i8 %48, %52
  br i1 %cmp61, label %if.then63, label %land.lhs.true54.while.cond.outer.backedge_crit_edge

land.lhs.true54.while.cond.outer.backedge_crit_edge: ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer.backedge

if.then63:                                        ; preds = %land.lhs.true54
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call42, i32 0, i32 10
  %53 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp64.not = icmp eq i32 %54, 1
  br i1 %cmp64.not, label %if.then63.while.cond.outer.backedge_crit_edge, label %if.then66

if.then63.while.cond.outer.backedge_crit_edge:    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then66.while.cond.outer.backedge_crit_edge, %if.then63.while.cond.outer.backedge_crit_edge, %land.lhs.true54.while.cond.outer.backedge_crit_edge, %if.end47.while.cond.outer.backedge_crit_edge
  br label %while.cond.outer

if.then66:                                        ; preds = %if.then63
  %55 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %funcs, align 8
  %hpd_sense = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %hpd_sense to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hpd_sense, align 4
  %59 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hpd, align 4
  %call68 = call zeroext i1 %58(ptr noundef %add.ptr.i, i32 noundef %60) #8
  br i1 %call68, label %if.then66.while.cond.outer.backedge_crit_edge, label %if.then69

if.then66.while.cond.outer.backedge_crit_edge:    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer.backedge

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %edid.i, align 8
  call void @kfree(ptr noundef %62) #8
  %63 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %edid.i, align 8
  %call.i251 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %while.cond.outer.outer

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #8
  br label %if.end75

if.end75:                                         ; preds = %while.end, %if.end34.if.end75_crit_edge
  %ret.3 = phi i32 [ %ret.1.ph.ph, %while.end ], [ 1, %if.end34.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.3)
  %cmp76 = icmp eq i32 %ret.3, 1
  br i1 %cmp76, label %if.end75.land.lhs.true78_crit_edge, label %if.end75.if.end85_crit_edge

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.end75.land.lhs.true78_crit_edge:               ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.end75.land.lhs.true78_crit_edge, %if.end75.thread270
  %use_digital79 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %64 = ptrtoint ptr %use_digital79 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %use_digital79, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool80.not = icmp eq i8 %65, 0
  br i1 %tobool80.not, label %land.lhs.true78.if.end85_crit_edge, label %land.lhs.true78.out_crit_edge

land.lhs.true78.out_crit_edge:                    ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true78.if.end85_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.end85:                                         ; preds = %land.lhs.true78.if.end85_crit_edge, %if.end75.if.end85_crit_edge, %if.end34.thread, %if.then15.if.end85_crit_edge, %if.end13.if.end85_crit_edge
  %cmp76269 = phi i1 [ true, %land.lhs.true78.if.end85_crit_edge ], [ false, %if.end75.if.end85_crit_edge ], [ false, %if.then15.if.end85_crit_edge ], [ false, %if.end13.if.end85_crit_edge ], [ false, %if.end34.thread ]
  %ret.3268 = phi i32 [ 1, %land.lhs.true78.if.end85_crit_edge ], [ %ret.3, %if.end75.if.end85_crit_edge ], [ 2, %if.then15.if.end85_crit_edge ], [ 2, %if.end13.if.end85_crit_edge ], [ 2, %if.end34.thread ]
  %broken_edid.0.off0267 = phi i1 [ %tobool21.not, %land.lhs.true78.if.end85_crit_edge ], [ false, %if.end75.if.end85_crit_edge ], [ false, %if.then15.if.end85_crit_edge ], [ false, %if.end13.if.end85_crit_edge ], [ false, %if.end34.thread ]
  %connector_type86 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %66 = ptrtoint ptr %connector_type86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %connector_type86, align 8
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %67, label %if.end93 [
    i32 3, label %if.end85.out_crit_edge
    i32 11, label %if.end85.out_crit_edge300
  ]

if.end85.out_crit_edge300:                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end85.out_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end93:                                         ; preds = %if.end85
  br i1 %force, label %if.end101, label %if.then95

if.then95:                                        ; preds = %if.end93
  %detected_by_load96 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 9
  %69 = ptrtoint ptr %detected_by_load96 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %detected_by_load96, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool97.not = icmp eq i8 %70, 0
  br i1 %tobool97.not, label %if.then95.out_crit_edge, label %if.then98

if.then95.out_crit_edge:                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then98:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %status99 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %71 = ptrtoint ptr %status99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %status99, align 8
  br label %out

if.end101:                                        ; preds = %if.end93
  %dac_load_detect = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 8
  %73 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dac_load_detect, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool102.not = icmp eq i8 %74, 0
  br i1 %tobool102.not, label %if.end101.out_crit_edge, label %if.then103

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then103:                                       ; preds = %if.end101
  %75 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %76, i32 0, i32 30, i32 16
  %77 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn281 = load ptr, ptr %encoder_list, align 4
  %cmp111.not282 = icmp eq ptr %.pn281, %encoder_list
  br i1 %cmp111.not282, label %if.then103.out_crit_edge, label %for.body.lr.ph

if.then103.out_crit_edge:                         ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %if.then103
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %78 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %possible_encoders, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn283 = phi ptr [ %.pn281, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn283, i32 36
  %80 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %81
  %and115 = and i32 %shl.i, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %for.body.for.inc_crit_edge, label %if.else118

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else118:                                       ; preds = %for.body
  %encoder_type = getelementptr i8, ptr %.pn283, i32 32
  %82 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %encoder_type, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %83, label %if.else118.for.inc_crit_edge [
    i32 1, label %if.else118.if.end126_crit_edge
    i32 4, label %if.else118.if.end126_crit_edge301
  ]

if.else118.if.end126_crit_edge301:                ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.else118.if.end126_crit_edge:                   ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.else118.for.inc_crit_edge:                     ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end126:                                        ; preds = %if.else118.if.end126_crit_edge, %if.else118.if.end126_crit_edge301
  %helper_private = getelementptr i8, ptr %.pn283, i32 64
  %85 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %detect, align 4
  %tobool127.not = icmp eq ptr %88, null
  br i1 %tobool127.not, label %if.end126.for.inc_crit_edge, label %if.then128

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then128:                                       ; preds = %if.end126
  %encoder.0.le = getelementptr i8, ptr %.pn283, i32 -4
  br i1 %broken_edid.0.off0267, label %if.else147, label %if.then130

if.then130:                                       ; preds = %if.then128
  br i1 %cmp76269, label %if.then130.out_crit_edge, label %if.then133

if.then130.out_crit_edge:                         ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then133:                                       ; preds = %if.then130
  %call135 = call i32 %88(ptr noundef %encoder.0.le, ptr noundef %connector) #8
  %89 = zext i32 %call135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call135, label %if.then133.if.then143_crit_edge [
    i32 1, label %if.then138
    i32 2, label %if.then133.out_crit_edge
  ]

if.then133.out_crit_edge:                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then133.if.then143_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then143

if.then138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %use_digital139 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %90 = ptrtoint ptr %use_digital139 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %use_digital139, align 1
  br label %if.then143

if.then143:                                       ; preds = %if.then138, %if.then133.if.then143_crit_edge
  %detected_by_load144 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 9
  %91 = ptrtoint ptr %detected_by_load144 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %detected_by_load144, align 1
  br label %out

if.else147:                                       ; preds = %if.then128
  %detect.le = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %86, i32 0, i32 7
  %encoder_type.le = getelementptr i8, ptr %.pn283, i32 32
  %use_digital148 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %92 = ptrtoint ptr %use_digital148 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %use_digital148, align 1
  %93 = ptrtoint ptr %detect.le to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %detect.le, align 4
  %call150 = call i32 %94(ptr noundef %encoder.0.le, ptr noundef %connector) #8
  %95 = ptrtoint ptr %encoder_type.le to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %encoder_type.le, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %96, i32 noundef %call150) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call150)
  %cmp152 = icmp eq i32 %call150, 1
  br i1 %cmp152, label %if.then154, label %if.else147.out_crit_edge

if.else147.out_crit_edge:                         ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then154:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %use_digital148 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %use_digital148, align 1
  br label %out

for.inc:                                          ; preds = %if.end126.for.inc_crit_edge, %if.else118.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %98 = ptrtoint ptr %.pn283 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn = load ptr, ptr %.pn283, align 4
  %cmp111.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp111.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then154, %if.else147.out_crit_edge, %if.then143, %if.then133.out_crit_edge, %if.then130.out_crit_edge, %if.then103.out_crit_edge, %if.end101.out_crit_edge, %if.then98, %if.then95.out_crit_edge, %if.end85.out_crit_edge, %if.end85.out_crit_edge300, %land.lhs.true78.out_crit_edge
  %ret.5 = phi i32 [ 1, %land.lhs.true78.out_crit_edge ], [ %ret.3268, %if.end85.out_crit_edge ], [ %ret.3268, %if.end101.out_crit_edge ], [ %72, %if.then98 ], [ %ret.3268, %if.then95.out_crit_edge ], [ %ret.3268, %if.end85.out_crit_edge300 ], [ %call135, %if.then143 ], [ 1, %if.then130.out_crit_edge ], [ %call135, %if.then133.out_crit_edge ], [ %ret.3268, %if.then154 ], [ %ret.3268, %if.else147.out_crit_edge ], [ %ret.3268, %if.then103.out_crit_edge ], [ %ret.3268, %for.inc.out_crit_edge ]
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %99 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %helper_private.i, align 4
  %best_encoder1.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %best_encoder1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %best_encoder1.i, align 4
  %call.i252 = call ptr %102(ptr noundef %connector) #8
  %103 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %104, i32 0, i32 30, i32 16
  %105 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn26.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not29.i = icmp eq ptr %.pn26.i, %encoder_list.i
  br i1 %cmp.not29.i, label %out.exit_crit_edge, label %for.body.lr.ph.i

out.exit_crit_edge:                               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body.lr.ph.i:                                 ; preds = %out
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.5)
  %cmp7.i = icmp eq i32 %ret.5, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn30.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %106 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn30.i, i32 36
  %108 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %109
  %and.i = and i32 %shl.i.i, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.031.i = getelementptr i8, ptr %.pn30.i, i32 -4
  %cmp6.i = icmp eq ptr %encoder.031.i, %call.i252
  %or.cond.i = and i1 %cmp7.i, %cmp6.i
  call void @amdgpu_atombios_encoder_set_bios_scratch_regs(ptr noundef %connector, ptr noundef %encoder.031.i, i1 noundef zeroext %or.cond.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %110 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn.i = load ptr, ptr %.pn30.i, align 4
  %111 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %connector, align 8
  %encoder_list4.i = getelementptr inbounds %struct.drm_device, ptr %112, i32 0, i32 30, i32 16
  %cmp.not.i253 = icmp eq ptr %.pn.i, %encoder_list4.i
  br i1 %cmp.not.i253, label %for.inc.i.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.exit_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

exit:                                             ; preds = %for.inc.i.exit_crit_edge, %out.exit_crit_edge, %if.then12
  %ret.6 = phi i32 [ %21, %if.then12 ], [ %ret.5, %out.exit_crit_edge ], [ %ret.5, %for.inc.i.exit_crit_edge ]
  %call166 = call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call166, label %exit.cleanup_crit_edge, label %if.then167

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then167:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %connector, align 8
  %dev169 = getelementptr inbounds %struct.drm_device, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %dev169 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev169, align 4
  %call.i254 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %116, i32 0, i32 12, i32 22
  %117 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store volatile i64 %call.i254, ptr %last_busy.i, align 8
  %118 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %connector, align 8
  %dev171 = getelementptr inbounds %struct.drm_device, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev171, align 4
  %call.i255 = call i32 @__pm_runtime_suspend(ptr noundef %121, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then167, %exit.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ 2, %if.then6 ], [ %ret.6, %if.then167 ], [ %ret.6, %exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_connector_dvi_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %use_digital = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 5
  %2 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_digital, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %5)
  %cmp = icmp sgt i32 %5, 165000
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %connector_object_id = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 10
  %6 = ptrtoint ptr %connector_object_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %connector_object_id, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %7, label %if.else [
    i16 2, label %if.then.cleanup_crit_edge
    i16 4, label %if.then.cleanup_crit_edge38
    i16 13, label %if.then.cleanup_crit_edge39
  ]

if.then.cleanup_crit_edge39:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge38:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.then
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 11
  %9 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_hdmi, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  br i1 %tobool14.not, label %if.else.cleanup_crit_edge, label %if.then15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %5)
  %cmp17 = icmp ugt i32 %5, 340000
  %. = select i1 %cmp17, i32 15, i32 0
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %div = sdiv i32 %12, 10
  %max_pixel_clock = getelementptr i8, ptr %1, i32 3744
  %13 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_pixel_clock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %14)
  %cmp24 = icmp ugt i32 %div, %14
  %.37 = select i1 %cmp24, i32 15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then15, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge38, %if.then.cleanup_crit_edge39
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge38 ], [ 0, %if.then.cleanup_crit_edge39 ], [ %., %if.then15 ], [ 15, %if.else.cleanup_crit_edge ], [ %.37, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_lvds_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %5 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %6
  %and.i = and i32 %shl.i.i, %4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %amdgpu_connector_best_single_encoder.exit

amdgpu_connector_best_single_encoder.exit:        ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge ]
  %call1 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call1, label %amdgpu_connector_best_single_encoder.exit.if.end8_crit_edge, label %if.then

amdgpu_connector_best_single_encoder.exit.if.end8_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %amdgpu_connector_best_single_encoder.exit
  %7 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connector, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %amdgpu_connector_best_single_encoder.exit.if.end8_crit_edge
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end8.if.end21_crit_edge, label %if.then9

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then9:                                         ; preds = %if.end8
  %hdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %12)
  %cmp14 = icmp ugt i16 %12, 319
  br i1 %cmp14, label %land.lhs.true, label %if.then9.if.end21_crit_edge

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %vdisplay = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %13 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 239, i16 %14)
  %cmp17 = icmp ugt i16 %14, 239
  %spec.select = select i1 %cmp17, i32 1, i32 2
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.then9.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %ret.1 = phi i32 [ 2, %if.end8.if.end21_crit_edge ], [ 2, %if.then9.if.end21_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %edid = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %15 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edid, align 8
  %tobool22.not = icmp eq ptr %16, null
  %spec.select46 = select i1 %tobool22.not, i32 %ret.1, i32 1
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %17 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %helper_private.i, align 4
  %best_encoder1.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %best_encoder1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %best_encoder1.i, align 4
  %call.i48 = tail call ptr %20(ptr noundef %connector) #8
  %21 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %connector, align 8
  %encoder_list.i49 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 30, i32 16
  %23 = ptrtoint ptr %encoder_list.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn26.i = load ptr, ptr %encoder_list.i49, align 4
  %cmp.not29.i = icmp eq ptr %.pn26.i, %encoder_list.i49
  br i1 %cmp.not29.i, label %if.end21.amdgpu_connector_update_scratch_regs.exit_crit_edge, label %for.body.lr.ph.i

if.end21.amdgpu_connector_update_scratch_regs.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_update_scratch_regs.exit

for.body.lr.ph.i:                                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select46)
  %cmp7.i = icmp eq i32 %spec.select46, 1
  br label %for.body.i55

for.body.i55:                                     ; preds = %for.inc.i.for.body.i55_crit_edge, %for.body.lr.ph.i
  %.pn30.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i56, %for.inc.i.for.body.i55_crit_edge ]
  %24 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i51 = getelementptr i8, ptr %.pn30.i, i32 36
  %26 = ptrtoint ptr %index.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.i.i51, align 4
  %shl.i.i52 = shl nuw i32 1, %27
  %and.i53 = and i32 %shl.i.i52, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %for.body.i55.for.inc.i_crit_edge, label %if.else.i

for.body.i55.for.inc.i_crit_edge:                 ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.031.i = getelementptr i8, ptr %.pn30.i, i32 -4
  %cmp6.i = icmp eq ptr %encoder.031.i, %call.i48
  %or.cond.i = and i1 %cmp7.i, %cmp6.i
  tail call void @amdgpu_atombios_encoder_set_bios_scratch_regs(ptr noundef %connector, ptr noundef %encoder.031.i, i1 noundef zeroext %or.cond.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i55.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i56 = load ptr, ptr %.pn30.i, align 4
  %29 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %connector, align 8
  %encoder_list4.i = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 30, i32 16
  %cmp.not.i57 = icmp eq ptr %.pn.i56, %encoder_list4.i
  br i1 %cmp.not.i57, label %for.inc.i.amdgpu_connector_update_scratch_regs.exit_crit_edge, label %for.inc.i.for.body.i55_crit_edge

for.inc.i.for.body.i55_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i55

for.inc.i.amdgpu_connector_update_scratch_regs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_update_scratch_regs.exit

amdgpu_connector_update_scratch_regs.exit:        ; preds = %for.inc.i.amdgpu_connector_update_scratch_regs.exit_crit_edge, %if.end21.amdgpu_connector_update_scratch_regs.exit_crit_edge
  %call25 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #8
  br i1 %call25, label %amdgpu_connector_update_scratch_regs.exit.cleanup_crit_edge, label %if.then26

amdgpu_connector_update_scratch_regs.exit.cleanup_crit_edge: ; preds = %amdgpu_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %amdgpu_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connector, align 8
  %dev28 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev28, align 4
  %call.i58 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 12, i32 22
  %35 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i58, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then26, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %spec.select46, %if.then26 ], [ 2, %if.then.cleanup.sink.split_crit_edge ]
  %36 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %connector, align 8
  %dev30 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev30, align 4
  %call.i59 = tail call i32 @__pm_runtime_suspend(ptr noundef %39, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %amdgpu_connector_update_scratch_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select46, %amdgpu_connector_update_scratch_regs.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_lvds_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amdgpu_connector_get_edid(ptr noundef %connector)
  %edid.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 6
  %0 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %amdgpu_connector_ddc_get_modes.exit.thread, label %amdgpu_connector_ddc_get_modes.exit

amdgpu_connector_ddc_get_modes.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #8
  br label %if.end3

amdgpu_connector_ddc_get_modes.exit:              ; preds = %entry
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid.i, align 8
  %call3.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp sgt i32 %call3.i, 0
  br i1 %cmp, label %if.then, label %amdgpu_connector_ddc_get_modes.exit.if.end3_crit_edge

amdgpu_connector_ddc_get_modes.exit.if.end3_crit_edge: ; preds = %amdgpu_connector_ddc_get_modes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %amdgpu_connector_ddc_get_modes.exit
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.then ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %7 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %9 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %10
  %and.i = and i32 %shl.i.i, %8
  %tobool.not.i37 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i37, label %for.body.i.for.cond.i_crit_edge, label %amdgpu_connector_best_single_encoder.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

amdgpu_connector_best_single_encoder.exit:        ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %amdgpu_connector_best_single_encoder.exit.cleanup_crit_edge, label %if.then2

amdgpu_connector_best_single_encoder.exit.cleanup_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %amdgpu_connector_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @amdgpu_connector_fixup_lcd_native_mode(ptr noundef nonnull %encoder.0.le.i, ptr noundef %connector)
  br label %cleanup.sink.split

if.end3:                                          ; preds = %amdgpu_connector_ddc_get_modes.exit.if.end3_crit_edge, %amdgpu_connector_ddc_get_modes.exit.thread
  %retval.0.i56 = phi i32 [ 0, %amdgpu_connector_ddc_get_modes.exit.thread ], [ %call3.i, %amdgpu_connector_ddc_get_modes.exit.if.end3_crit_edge ]
  %11 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connector, align 8
  %encoder_list.i39 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 30, i32 16
  %possible_encoders.i40 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i44

for.cond.i44:                                     ; preds = %for.body.i49.for.cond.i44_crit_edge, %if.end3
  %.pn.in.i41 = phi ptr [ %encoder_list.i39, %if.end3 ], [ %.pn.i42, %for.body.i49.for.cond.i44_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i42 = load ptr, ptr %.pn.in.i41, align 4
  %cmp.not.i43 = icmp eq ptr %.pn.i42, %encoder_list.i39
  br i1 %cmp.not.i43, label %for.cond.i44.cleanup_crit_edge, label %for.body.i49

for.cond.i44.cleanup_crit_edge:                   ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i49:                                     ; preds = %for.cond.i44
  %14 = ptrtoint ptr %possible_encoders.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %possible_encoders.i40, align 8
  %index.i.i.i45 = getelementptr i8, ptr %.pn.i42, i32 36
  %16 = ptrtoint ptr %index.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i.i45, align 4
  %shl.i.i46 = shl nuw i32 1, %17
  %and.i47 = and i32 %shl.i.i46, %15
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %for.body.i49.for.cond.i44_crit_edge, label %amdgpu_connector_best_single_encoder.exit53

for.body.i49.for.cond.i44_crit_edge:              ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i44

amdgpu_connector_best_single_encoder.exit53:      ; preds = %for.body.i49
  %encoder.0.le.i50 = getelementptr i8, ptr %.pn.i42, i32 -4
  %tobool5.not = icmp eq ptr %encoder.0.le.i50, null
  br i1 %tobool5.not, label %amdgpu_connector_best_single_encoder.exit53.cleanup_crit_edge, label %if.end7

amdgpu_connector_best_single_encoder.exit53.cleanup_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %amdgpu_connector_best_single_encoder.exit53
  %call8 = tail call fastcc ptr @amdgpu_connector_lcd_native_mode(ptr noundef nonnull %encoder.0.le.i50)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call8) #8
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call8, i32 0, i32 26
  %18 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %19 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %20 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call8, i32 0, i32 27
  %21 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %height_mm, align 4
  %conv12 = zext i16 %22 to i32
  %height_mm14 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %height_mm14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv12, ptr %height_mm14, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10, %if.then2
  %encoder.0.le.i50.sink = phi ptr [ %encoder.0.le.i50, %if.then10 ], [ %encoder.0.le.i, %if.then2 ]
  %retval.0.ph = phi i32 [ 1, %if.then10 ], [ %call3.i, %if.then2 ]
  tail call fastcc void @amdgpu_connector_add_common_modes(ptr noundef nonnull %encoder.0.le.i50.sink, ptr noundef %connector)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %amdgpu_connector_best_single_encoder.exit53.cleanup_crit_edge, %for.cond.i44.cleanup_crit_edge, %amdgpu_connector_best_single_encoder.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %amdgpu_connector_best_single_encoder.exit.cleanup_crit_edge ], [ 0, %amdgpu_connector_best_single_encoder.exit53.cleanup_crit_edge ], [ %retval.0.i56, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.cond.i44.cleanup_crit_edge ], [ %call3.i, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_connector_lvds_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_connector_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %5 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %6
  %and.i = and i32 %shl.i.i, %4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %amdgpu_connector_best_single_encoder.exit

amdgpu_connector_best_single_encoder.exit:        ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.amdgpu_connector_best_single_encoder.exit_crit_edge ]
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %7 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %8)
  %cmp = icmp ult i16 %8, 320
  br i1 %cmp, label %amdgpu_connector_best_single_encoder.exit.cleanup43_crit_edge, label %lor.lhs.false

amdgpu_connector_best_single_encoder.exit.cleanup43_crit_edge: ; preds = %amdgpu_connector_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

lor.lhs.false:                                    ; preds = %amdgpu_connector_best_single_encoder.exit
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %9 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %10)
  %cmp3 = icmp ult i16 %10, 240
  br i1 %cmp3, label %lor.lhs.false.cleanup43_crit_edge, label %if.end

lor.lhs.false.cleanup43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end.cleanup43_crit_edge, label %if.then5

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.then5:                                         ; preds = %if.end
  %hdisplay9 = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %hdisplay9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %12)
  %cmp11 = icmp ugt i16 %8, %12
  br i1 %cmp11, label %if.then5.cleanup43_crit_edge, label %lor.lhs.false13

if.then5.cleanup43_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

lor.lhs.false13:                                  ; preds = %if.then5
  %vdisplay16 = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %13 = ptrtoint ptr %vdisplay16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay16, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %14)
  %cmp18 = icmp ugt i16 %10, %14
  br i1 %cmp18, label %lor.lhs.false13.cleanup43_crit_edge, label %if.end21

lor.lhs.false13.cleanup43_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.end21:                                         ; preds = %lor.lhs.false13
  %rmx_type = getelementptr inbounds %struct.amdgpu_encoder, ptr %retval.0.i, i32 0, i32 7
  %15 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.then24, label %if.end21.if.end42.critedge_crit_edge

if.end21.if.end42.critedge_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.critedge

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %12)
  %cmp29.not = icmp eq i16 %8, %12
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %14)
  %cmp36.not = icmp eq i16 %10, %14
  %or.cond = select i1 %cmp29.not, i1 %cmp36.not, i1 false
  br i1 %or.cond, label %if.then24.if.end42.critedge_crit_edge, label %if.then24.cleanup43_crit_edge

if.then24.cleanup43_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.then24.if.end42.critedge_crit_edge:            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.critedge

if.end42.critedge:                                ; preds = %if.then24.if.end42.critedge_crit_edge, %if.end21.if.end42.critedge_crit_edge
  br label %cleanup43

cleanup43:                                        ; preds = %if.end42.critedge, %if.then24.cleanup43_crit_edge, %lor.lhs.false13.cleanup43_crit_edge, %if.then5.cleanup43_crit_edge, %if.end.cleanup43_crit_edge, %lor.lhs.false.cleanup43_crit_edge, %amdgpu_connector_best_single_encoder.exit.cleanup43_crit_edge
  %retval.1 = phi i32 [ 29, %lor.lhs.false.cleanup43_crit_edge ], [ 29, %amdgpu_connector_best_single_encoder.exit.cleanup43_crit_edge ], [ 29, %if.then24.cleanup43_crit_edge ], [ 29, %if.then5.cleanup43_crit_edge ], [ 29, %lor.lhs.false13.cleanup43_crit_edge ], [ 0, %if.end42.critedge ], [ 0, %if.end.cleanup43_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 160, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 173, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 184, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 190, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 195, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 202, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 207, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1611, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1625, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1717, i32 6}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1742, i32 6}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1772, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1827, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1947, i32 6}
!28 = !{ptr @amdgpu_connector_dp_funcs, !29, !"amdgpu_connector_dp_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1509, i32 41}
!30 = !{ptr @amdgpu_connector_dp_helper_funcs, !31, !"amdgpu_connector_dp_helper_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1503, i32 48}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 640, i32 5}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 647, i32 3}
!36 = !{ptr @amdgpu_connector_add_common_modes.common_modes, !37, !"common_modes", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 430, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 399, i32 3}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 414, i32 3}
!42 = !{ptr @amdgpu_connector_edp_funcs, !43, !"amdgpu_connector_edp_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1520, i32 41}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 790, i32 2}
!46 = !{ptr @amdgpu_connector_vga_funcs, !47, !"amdgpu_connector_vga_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 942, i32 41}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 888, i32 4}
!50 = !{ptr @amdgpu_connector_vga_helper_funcs, !51, !"amdgpu_connector_vga_helper_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 936, i32 48}
!52 = !{ptr @amdgpu_connector_dvi_funcs, !53, !"amdgpu_connector_dvi_funcs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1207, i32 41}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1110, i32 6}
!56 = !{ptr @amdgpu_connector_dvi_helper_funcs, !57, !"amdgpu_connector_dvi_helper_funcs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 1201, i32 48}
!58 = !{ptr @amdgpu_connector_lvds_funcs, !59, !"amdgpu_connector_lvds_funcs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 824, i32 41}
!60 = !{ptr @amdgpu_connector_lvds_helper_funcs, !61, !"amdgpu_connector_lvds_helper_funcs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c", i32 818, i32 48}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
!72 = !{!"auto-init"}
